#
#     This file is part of CasADi.
#
#     CasADi -- A symbolic framework for dynamic optimization.
#     Copyright (C) 2010-2014 Joel Andersson, Joris Gillis, Moritz Diehl,
#                             K.U. Leuven. All rights reserved.
#     Copyright (C) 2011-2014 Greg Horn
#
#     CasADi is free software; you can redistribute it and/or
#     modify it under the terms of the GNU Lesser General Public
#     License as published by the Free Software Foundation; either
#     version 3 of the License, or (at your option) any later version.
#
#     CasADi is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#     Lesser General Public License for more details.
#
#     You should have received a copy of the GNU Lesser General Public
#     License along with CasADi; if not, write to the Free Software
#     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
#
#
from casadi import *
import casadi as c
from numpy import *
import unittest
from types import *
from helpers import *

solvers= []
try:
  LinearSolver.loadPlugin("csparse")
  ImplicitFunction.loadPlugin("kinsol")
  solvers.append(("kinsol",{"linear_solver": "csparse","abstol":1e-10}))
except:
  pass
try:
  LinearSolver.loadPlugin("csparse")
  NlpSolver.loadPlugin("ipopt")
  solvers.append(("nlp",{"linear_solver": "csparse", "nlp_solver": "ipopt"}))
except:
  pass
try:
  LinearSolver.loadPlugin("csparse")
  solvers.append(("newton",{"linear_solver": "csparse"}))
except:
  pass

class ImplicitFunctiontests(casadiTestCase):
  
  @memory_heavy()
  def test_linear(self):
    for Solver, options in solvers:
      self.message(Solver)
      x=SX.sym("x",2)
      A_ = DMatrix([[1,2],[3,2.1]])
      C_ = DMatrix([[1.6,2.1],[1,1.3]])
      b_ = DMatrix([0.7,0.6])
      f=SXFunction("f", [x],[mul(A_,x)-b_, mul(C_,x)])
      solver=ImplicitFunction("solver", Solver, f, options)
      solver.evaluate()
      
      refsol = SXFunction("refsol", [x],[solve(A_,b_), mul(C_,solve(A_,b_))])
      self.checkfunction(solver,refsol,digits=10)         
      
      A = SX.sym("A",2,2)
      b = SX.sym("b",2)
      f=SXFunction("f", [x,A,b],[mul(A,x)-b])
      solver=ImplicitFunction("solver", Solver, f, options)
      solver.setInput(A_,1)
      solver.setInput(b_,2)
      solver.evaluate()
      
      refsol = SXFunction("refsol", [x,A,b],[solve(A,b)])      
      refsol.setInput(A_,1)
      refsol.setInput(b_,2)      
      self.checkfunction(solver,refsol,digits=10)
      
      
      A = SX.sym("A",2,2)
      b = SX.sym("b",2)
      f=SXFunction("f", [x,A,b],[mul(A,x)-b,mul(C_,x)])
      for ad_weight_sp in [0,1]:
        for ad_weight in [0,1]:
          print ad_weight, ad_weight_sp
          options2 = dict(options)
          options2["ad_weight_sp"] = ad_weight_sp
          options2["ad_weight"] = ad_weight
          solver=ImplicitFunction("solver", Solver, f, options2)
          solver.setInput(0,0)
          solver.setInput(A_,1)
          solver.setInput(b_,2)
      
          refsol = SXFunction("refsol", [x,A,b],[solve(A,b),mul(C_,solve(A,b))])      
          refsol.setInput(0,0)
          refsol.setInput(A_,1)
          refsol.setInput(b_,2)      
          self.checkfunction(solver,refsol,digits=10)         

  def test_scalar1(self):
    self.message("Scalar implicit problem, n=0")
    for Solver, options in solvers:
      self.message(Solver)
      x=SX.sym("x")
      f=SXFunction("f", [x],[sin(x)])
      solver=ImplicitFunction("solver", Solver, f, options)
      solver.setInput(6)
      solver.evaluate()
      
      refsol = SXFunction("refsol", [x],[ceil(x/pi-0.5)*pi])
      refsol.setInput(6)
      self.checkfunction(solver,refsol,digits=10)         
      
  def test_scalar2(self):
    self.message("Scalar implicit problem, n=1")
    for Solver, options in solvers:
      self.message(Solver)
      message = Solver
      x=SX.sym("x")
      y=SX.sym("y")
      n=0.2
      f=SXFunction("f", [y,x],[x-arcsin(y)])
      solver=ImplicitFunction("solver", Solver, f, options)
      solver.setInput(n,1)

      refsol = SXFunction("refsol", [y,x],[sin(x)])
      refsol.setInput(n,1)
      self.checkfunction(solver,refsol,digits=6,sens_der=False,failmessage=message)

  def test_scalar2_indirect(self):
    for Solver, options in solvers:
      self.message(Solver)
      message = Solver
      x=SX.sym("x")
      y=SX.sym("y")
      n=0.2
      f=SXFunction("f", [y,x],[x-arcsin(y)])
      solver=ImplicitFunction("solver", Solver, f, options)
      
      X = MX.sym("X")
      [R] = solver([MX(),X])
      
      trial = MXFunction("trial", [X],[R])
      trial.setInput(n)
      
      refsol = SXFunction("refsol", [x],[sin(x)])
      refsol.setInput(n)
      self.checkfunction(trial,refsol,digits=6,sens_der=False,failmessage=message)
      
  def test_large(self):
    for Solver, options in solvers:
      if 'kinsol' in str(Solver): continue
      if 'newton' in str(Solver): continue
      
      message = Solver
      N = 5
      s = Sparsity.lower(N)
      x=SX.sym("x",s)

      y=SX.sym("y",s)
      y0 = DMatrix(Sparsity.diag(N),0.1)

      f=SXFunction("f", [vecNZ(y),vecNZ(x)],[vecNZ((mul((x+y0),(x+y0).T)-mul((y+y0),(y+y0).T))[s])])
      options2 = dict(options)
      options2["constraints"] = [1]*s.nnz()
      solver=ImplicitFunction("options2", Solver, f, options2)
      
      X = MX.sym("X",x.sparsity())
      [R] = solver([MX(),vecNZ(X)])
      
      trial = MXFunction("trial", [X],[R])
      trial.setInputNZ([abs(cos(i)) for i in range(x.nnz())])
      trial.evaluate()

      f.setInput(trial.getOutput(),0)
      f.setInput(vecNZ(trial.getInput()),1)
      f.evaluate()

      f.setInput(vecNZ(trial.getInput()),0)
      f.setInput(vecNZ(trial.getInput()),1)
      f.evaluate()
      
      refsol = MXFunction("refsol", [X],[vecNZ(X)])
      refsol.setInput(trial.getInput())

      self.checkfunction(trial,refsol,digits=6,sens_der=False,evals=1,failmessage=message)
      
  @known_bug()  
  def test_vector2(self):
    self.message("Scalar implicit problem, n=1")
    for Solver, options in solvers:
      self.message(Solver)
      message = Solver
      x=SX.sym("x")
      y=SX.sym("y",2)
      y0 = DMatrix([0.1,0.4])
      yy = y + y0
      n=0.2
      f=SXFunction("f", [y,x],[vertcat([x-arcsin(yy[0]),yy[1]**2-yy[0]])])
      solver=ImplicitFunction("solver", Solver, f, options)
      solver.setInput(n)
      solver.evaluate()
      
      refsol = SXFunction("refsol", [y,x],[vertcat([sin(x),sqrt(sin(x))])-y0]) # ,sin(x)**2])
      refsol.setInput(n)
      self.checkfunction(solver,refsol,digits=5,sens_der=False,failmessage=message)
      
  def testKINSol1c(self):
    self.message("Scalar KINSol problem, n=0, constraint")
    x=SX.sym("x")
    f=SXFunction("f", [x],[sin(x)])
    solver=ImplicitFunction("solver", "kinsol", f, {"constraints":[-1]})
    solver.setInput(-6)
    solver.evaluate()
    self.assertAlmostEqual(solver.getOutput()[0],-2*pi,5)
    
  def test_constraints(self):
    for Solver, options in solvers:
      if 'kinsol' in str(Solver): continue
      if 'newton' in str(Solver): continue
      x=SX.sym("x",2)
      f=SXFunction("f", [x],[vertcat([mul((x+3).T,(x-2)),mul((x-4).T,(x+vertcat([1,2])))])])
      options2 = dict(options)
      options2["constraints"] = [-1,0]
      solver=ImplicitFunction("solver", Solver, f, options2)
      solver.evaluate()
      
      self.checkarray(solver.getOutput(),DMatrix([-3.0/50*(sqrt(1201)-1),2.0/25*(sqrt(1201)-1)]),digits=6)

      f=SXFunction("f", [x],[vertcat([mul((x+3).T,(x-2)),mul((x-4).T,(x+vertcat([1,2])))])])
      options2 = dict(options)
      options2["constraints"] = [1,0]
      solver=ImplicitFunction("solver", Solver, f, options2)
      solver.evaluate()
      
      self.checkarray(solver.getOutput(),DMatrix([3.0/50*(sqrt(1201)+1),-2.0/25*(sqrt(1201)+1)]),digits=6)

  def test_implicitbug(self):
    # Total number of variables for one finite element
    X0 = MX.sym("X0")
    V = MX.sym("V")

    V_eq = vertcat([V[0]-X0])

    # Root-finding function, implicitly defines V as a function of X0 and P
    vfcn = MXFunction("vfcn", [V,X0], [V_eq], {"ad_weight":0, "ad_weight_sp":1})

    # Convert to SXFunction to decrease overhead
    vfcn_sx = SXFunction(vfcn)

    # Create a implicit function instance to solve the system of equations
    ifcn = ImplicitFunction("ifcn", "newton",vfcn_sx, {"linear_solver":"csparse"})

    #ifcn = MXFunction('I', [X0],[vertcat([X0])])
    [V] = ifcn.call([0,X0],True)

    f = 1  # fails

    F = MXFunction("F", [X0], [f*X0+V], {"ad_weight":0, "ad_weight_sp":1})

    # Test values
    x0_val  = 1

    G = F.gradient(0,0)
    G.setInput(x0_val)
    G.evaluate()
    print G.getOutput()
    print G

    J = F.jacobian(0,0)
    J.setInput(x0_val)
    J.evaluate()
    print J.getOutput()
    print J
    
    self.checkarray(G.getOutput(),DMatrix([2]))
    self.checkarray(J.getOutput(),DMatrix([2]))
    
  def test_extra_outputs(self):
    x = SX.sym("x")
    a = SX.sym("a")
    f = SXFunction("f", [x,a],[tan(x)-a,sqrt(a)*x**2 ])
    for Solver, options in solvers:
      options2 = dict(options)
      options2["ad_weight_sp"] = 1
      solver=ImplicitFunction("solver", Solver, f, options2)
      solver.setInput(0.3,1)
      solver.setInput(0.1,0)
      solver.evaluate()
      
      refsol = SXFunction("refsol", [x,a],[arctan(a),sqrt(a)*arctan(a)**2]) 
      refsol.setInput(0.3,1)
      refsol.setInput(0.1,0)
      self.checkfunction(solver,refsol,digits=5)

    x = SX.sym("x",2)
    a = SX.sym("a",2)
    f = SXFunction("f", [x,a],[tan(x)-a,sqrt(a)*x**2 ])

if __name__ == '__main__':
    unittest.main()

