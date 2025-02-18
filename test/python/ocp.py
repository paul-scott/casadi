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

class OCPtests(casadiTestCase):
  @requiresPlugin(NlpSolver,"ipopt")
  def testdiscrete(self):
    self.message("Linear-quadratic problem, discrete, using IPOPT")
    # inspired by www.cs.umsl.edu/~janikow/publications/1992/GAforOpt/text.pdf
    a=1.0
    b=1.0
    q=1.0
    s=1.0
    r=1.0
    x0=100
    
    N=100
    
    X=SX.sym("X",N+1)
    U=SX.sym("U",N)
    
    V = vertcat([X,U])
    
    cost = 0
    for i in range(N):
      cost = cost + s*X[i]**2+r*U[i]**2
    cost = cost + q*X[N]**2
    
    nlp = SXFunction('nlp', nlpIn(x=V),nlpOut(f=cost,g=vertcat([X[0]-x0,X[1:,0]-(a*X[:N,0]+b*U)])))
    opts = {}
    opts["tol"] = 1e-5
    opts["hessian_approximation"] = "limited-memory"
    opts["max_iter"] = 100
    opts["print_level"] = 0
    solver = NlpSolver("solver", "ipopt", nlp, opts)
    solver.setInput([-1000 for i in range(V.nnz())],"lbx")
    solver.setInput([1000 for i in range(V.nnz())],"ubx")
    solver.setInput([0 for i in range(N+1)],"lbg")
    solver.setInput([0 for i in range(N+1)],"ubg")
    solver.evaluate()
    ocp_sol=solver.getOutput("f")[0]
    # solve the ricatti equation exactly
    K = q+0.0
    for i in range(N):
      K = s+r*a**2*K/(r+b**2*K)
    exact_sol=K * x0**2
    self.assertAlmostEqual(ocp_sol,exact_sol,10,"Linear-quadratic problem solution using IPOPT")

  @requiresPlugin(NlpSolver,"ipopt")
  def test_singleshooting(self):
    self.message("Single shooting")
    p0 = 0.2
    y0= 1
    yc0=dy0=0
    te=0.4

    t=SX.sym("t")
    q=SX.sym("y",2,1)
    p=SX.sym("p",1,1)
    # y
    # y'
    f=SXFunction('f', daeIn(x=q,p=p,t=t),daeOut(ode=vertcat([q[1],p[0]+q[1]**2 ])))
    opts = {}
    opts["reltol"] = 1e-15
    opts["abstol"] = 1e-15
    opts["verbose"] = False
    opts["steps_per_checkpoint"] = 10000
    opts["t0"] = 0
    opts["tf"] = te
    integrator = Integrator("integrator", "cvodes", f, opts)

    var = MX.sym("var",2,1)
    par = MX.sym("par",1,1)
    parMX= par
    
    q0   = vertcat([var[0],par])
    par  = var[1]
    qend = integrator({'x0':q0,'p':par})["xf"]
    
    parc = MX(0)
    
    f = MXFunction('f', [var,parMX],[qend[0]])
    nlp = MXFunction('nlp', nlpIn(x=var),nlpOut(f=-f.call([var,parc])[0]))
    opts = {}
    opts["tol"] = 1e-12
    opts["hessian_approximation"] = "limited-memory"
    opts["max_iter"] = 10
    opts["derivative_test"] = "first-order"
    opts["print_level"] = 0
    solver = NlpSolver("solver", "ipopt", nlp, opts)
    solver.setInput([-1, -1],"lbx")
    solver.setInput([1, 0.2],"ubx")
    solver.evaluate()
    self.assertAlmostEqual(solver.getOutput("x")[0],1,8,"X_opt")
    self.assertAlmostEqual(solver.getOutput("x")[1],0.2,8,"X_opt")
    
    self.assertAlmostEqual(fmax(solver.getOutput("lam_x"),0)[0],1,8,"Cost should be linear in y0")
    self.assertAlmostEqual(fmax(solver.getOutput("lam_x"),0)[1],(sqrt(p0)*(te*yc0**2-yc0+p0*te)*tan(arctan(yc0/sqrt(p0))+sqrt(p0)*te)+yc0**2)/(2*p0*yc0**2+2*p0**2),8,"Cost should be linear in y0")
    self.assertAlmostEqual(-solver.getOutput("f")[0],(2*y0-log(yc0**2/p0+1))/2-log(cos(arctan(yc0/sqrt(p0))+sqrt(p0)*te)),7,"Cost")
    self.assertAlmostEqual(fmax(-solver.getOutput("lam_x"),0)[0],0,8,"Constraint is supposed to be unactive")
    self.assertAlmostEqual(fmax(-solver.getOutput("lam_x"),0)[1],0,8,"Constraint is supposed to be unactive")

  @requiresPlugin(NlpSolver,"ipopt")
  def test_singleshooting2(self):
    self.message("Single shooting 2")
    p0 = 0.2
    y0= 0.2
    yc0=dy0=0.1
    te=0.4

    t=SX.sym("t")
    q=SX.sym("y",2,1)
    p=SX.sym("p",1,1)
    # y
    # y'
    f=SXFunction('f', daeIn(x=q,p=p,t=t),daeOut(ode=vertcat([q[1],p[0]+q[1]**2 ])))
    opts = {}
    opts["reltol"] = 1e-15
    opts["abstol"] = 1e-15
    opts["verbose"] = False
    opts["steps_per_checkpoint"] = 10000
    opts["t0"] = 0
    opts["tf"] = te
    integrator = Integrator("integrator", "cvodes", f, opts)

    var = MX.sym("var",2,1)
    par = MX.sym("par",1,1)
    
    q0   = vertcat([var[0],par])
    parl  = var[1]
    qend = integrator({'x0':q0,'p':parl})["xf"]
    
    parc = MX(dy0)
    
    f = MXFunction('f', [var,par],[qend[0]])
    nlp = MXFunction('nlp', nlpIn(x=var),nlpOut(f=-f.call([var,parc])[0],g=var[0]-var[1]))
    opts = {}
    opts["tol"] = 1e-12
    opts["hessian_approximation"] = "limited-memory"
    opts["max_iter"] = 10
    opts["derivative_test"] = "first-order"
    #opts["print_level"] = 0
    solver = NlpSolver("solver", "ipopt", nlp, opts)
    solver.setInput([-1, -1],"lbx")
    solver.setInput([1, 0.2],"ubx")
    solver.setInput([-1],"lbg")
    solver.setInput([0],"ubg")
    solver.evaluate()

    self.assertAlmostEqual(solver.getOutput("x")[0],0.2,6,"X_opt")
    self.assertAlmostEqual(solver.getOutput("x")[1],0.2,6,"X_opt")
    
    self.assertAlmostEqual(fmax(solver.getOutput("lam_x"),0)[0],0,8,"Constraint is supposed to be unactive")
    dfdp0 = (sqrt(p0)*(te*yc0**2-yc0+p0*te)*tan(arctan(yc0/sqrt(p0))+sqrt(p0)*te)+yc0**2)/(2*p0*yc0**2+2*p0**2)
    self.assertAlmostEqual(fmax(solver.getOutput("lam_x"),0)[1],1+dfdp0,8)
    self.assertAlmostEqual(solver.getOutput("lam_g")[0],1,8)
    self.assertAlmostEqual(-solver.getOutput("f")[0],(2*y0-log(yc0**2/p0+1))/2-log(cos(arctan(yc0/sqrt(p0))+sqrt(p0)*te)),7,"Cost")
    self.assertAlmostEqual(fmax(-solver.getOutput("lam_x"),0)[0],0,8,"Constraint is supposed to be unactive")
    self.assertAlmostEqual(fmax(-solver.getOutput("lam_x"),0)[1],0,8,"Constraint is supposed to be unactive") 
    
  @requiresPlugin(XmlFile,"tinyxml")
  def test_XML(self):
    self.message("JModelica XML parsing")
    ivp = DaeBuilder()
    ivp.parseFMI('data/cstr.xml')
    
    # Separate differential and algebraic variables
    ivp.split_dae()
    
    self.assertTrue(len(ivp.q)==0)
    self.assertTrue(len(ivp.y)==1)
    m = vertcat(ivp.ydef)
    self.assertTrue(isinstance(m,MX))
    self.assertEquals(str(m),'cost')
    print dir(ivp)
    self.assertEquals(len(ivp.dae),3)
    print type(ivp.s)
    self.assertEquals(len(ivp.s),3) # there are three states
    c = ivp("cstr.c")
    T = ivp("cstr.T")
    cost = ivp("cost")
    self.assertTrue(isinstance(c,MX))
    
    self.assertEquals(c.getName(),"cstr.c")
    self.assertEquals(T.getName(),"cstr.T")
    self.assertEquals(cost.getName(),"cost")
    self.assertEquals(ivp.nominal("cstr.c"),1000)
   
    u = ivp("u")
    #self.assertEquals(ivp.path.nnz(),3)
    #self.assertEquals(len(ivp.cfcn_lb),3)
    #self.assertEquals(len(ivp.cfcn_ub),3)
    #self.assertTrue(ivp.cfcn[0].isEqual(T)) 
    #self.assertTrue(ivp.cfcn[1].isEqual(u)) 
    #self.assertTrue(ivp.cfcn[2].isEqual(u)) 
    #self.assertTrue(ivp.cfcn_lb[0].isMinusInf()) 
    #self.assertEquals(ivp.cfcn_lb[1].getValue(),230) 
    #self.assertTrue(ivp.cfcn_lb[2].isMinusInf()) 
    #self.assertEquals(ivp.cfcn_ub[0].getValue(),350) 
    #self.assertTrue(ivp.cfcn_ub[1].isInf())
    #self.assertEquals(ivp.cfcn_ub[2].getValue(),370) 
    print ivp.init
    print c,T,cost
    #print c.atTime(0)
    f=MXFunction('f', [vertcat([c,T,cost])],[vertcat(ivp.init)])
    return 
    f.evaluate()
    self.checkarray(f.getOutput(),matrix([-956.271065,-250.051971,0]).T,"initeq")

    
    mystates = []

  # @requiresPlugin(NlpSolver,"ipopt")
  # def testMSclass_prim(self):
  #   self.message("CasADi multiple shooting class")
    
  #   ns = 20
  #   nx = 3
  #   nu = 2
  #   np = 0
  #   nh = 0
  #   tf = 0.2
    
  #   t = SX.sym("t")
  #   x0 = SX.sym("x0",nx)
  #   p = SX.sym("p",nu)
  #   xf = x0 + p[0]
  #   daeres = SXFunction('daeres', daeIn(t=t, x=x0, p=p),daeOut(ode=xf))
  #   mayer = SXFunction('mayer', [x0],[7*x0[0]])
  #   ms = DirectMultipleShooting(daeres,mayer)
  #   ms.setOption("integrator", "cvodes")
  #   ms.setOption("number_of_grid_points",ns)
  #   ms.setOption("final_time",tf)
  #   ms.setOption("nlp_solver", "ipopt")
  #   ms.init()
    
  #   for i in [IVP_LBX,IVP_UBX,IVP_X_INIT]:
  #     self.checkarray(ms.input(i).shape,(nx,ns+1),"shape")
      
  #   for i in [IVP_LBU,IVP_UBU,IVP_U_INIT]:
  #     self.checkarray(ms.input(i).shape,(nu,ns),"shape")
    
  #   for i in [IVP_LBP,IVP_UBP,IVP_P_INIT]:
  #     self.checkarray(ms.input(i).shape,(np,1),"shape")

  #   for i in [IVP_LBH,IVP_UBH]:
  #     self.checkarray(ms.input(i).shape,(nh,ns+1),"shape")
      
  #   ns = 20
  #   nx = 3
  #   nu = 2
  #   np = 4
  #   nh = 2
  #   tf = 0.2
    
  #   t = SX.sym("t")
  #   x0 = SX.sym("x0",nx)
  #   p = SX.sym("p",nu+np)
  #   xf = x0 + p[0]
  #   daeres = SXFunction('daeres', daeIn(t=t, x=x0, p=p),daeOut(ode=xf))
  #   mayer = SXFunction('mayer', [x0],[7*x0[0]])
    
  #   t = SX.sym("t")
  #   cfcn = SXFunction('cfcn', daeIn(t=t,x=x0, p=p),[x0[:nh,0]])
    
  #   ms = DirectMultipleShooting(daeres,mayer,cfcn)
  #   ms.setOption("integrator", "cvodes")
  #   ms.setOption("number_of_grid_points",ns)
  #   ms.setOption("number_of_parameters",np)
  #   ms.setOption("final_time",tf)
  #   ms.setOption("nlp_solver", "ipopt")
  #   ms.init()
    
  #   for i in [IVP_LBX,IVP_UBX,IVP_X_INIT]:
  #     self.checkarray(ms.input(i).shape,(nx,ns+1),"shape")
      
  #   for i in [IVP_LBU,IVP_UBU,IVP_U_INIT]:
  #     self.checkarray(ms.input(i).shape,(nu,ns),"shape")
    
  #   for i in [IVP_LBP,IVP_UBP,IVP_P_INIT]:
  #     self.checkarray(ms.input(i).shape,(np,1),"shape")

  #   for i in [IVP_LBH,IVP_UBH]:
  #     self.checkarray(ms.input(i).shape,(nh,ns+1),"shape")

  # @requiresPlugin(NlpSolver,"ipopt")
  # def testMSclassSimple(self):
  #   self.message("CasADi multiple shooting class: simple example")
  #   """
  #   The problem consists of a harmonic oscilator and a power harvester.
    
  #   max     int_0^T u(t) * x(t)
  #    u,x,y
  #           s.t    x'(t) = y(t)
  #                  y'(t) = -x(t)
  #                  -1  <=   u(t) <= 1
  #                  x(0) = 1
  #                  y(0) = 0
                   
  #   The trivial solution for u(t) is u(t)=sign(x(t))
    
    
  #   """
  #   te = 2*pi
  #   N = 20
  #   t=SX.sym("t")
  #   y=SX.sym("y",3,1)
  #   p=SX.sym("p")
  #   f=SXFunction('f', daeIn(t=t, x=y, p=p),daeOut(ode=vertcat([y[1,0],-y[0,0],p*y[0,0]])))
    
  #   # Options to be passed to the integrator
  #   integrator_options = {}
  #   integrator_options["reltol"]=1e-9
  #   integrator_options["abstol"]=1e-9
  #   integrator_options["steps_per_checkpoint"]=10000
  #   integrator_options["t0"]=0
  #   integrator_options["tf"]=te/N
    
  #   mayer = SXFunction('mayer', [y],[-y[2]])
    
  #   ms = DirectMultipleShooting(f,mayer)
  #   ms.setOption("integrator", "cvodes")
  #   ms.setOption("integrator_options",integrator_options)
  #   ms.setOption("number_of_grid_points",N)
  #   ms.setOption("final_time",te)
  #   ms.setOption("nlp_solver", "ipopt")
  #   nlp_solver_options = {}
  #   nlp_solver_options["tol"] = 1e-10
  #   nlp_solver_options["hessian_approximation"] = "limited-memory"
  #   nlp_solver_options["max_iter"] = 100
  #   nlp_solver_options["linear_solver"] = "ma57"
  #   nlp_solver_options["derivative_test"] = "first-order"
  #   ms.setOption("nlp_solver_options",nlp_solver_options)
  #   ms.init()
    
  #   ms.setInput(-inf,"lbx")
  #   ms.setInput(inf,"ubx")
  #   ms.setInput(0,"x_init")
    
  #   ms.setInput(-1,"lbu")
  #   ms.setInput(1,"ubu")
  #   ms.setInput(0,"u_init")
    
  #   ms.input("lbx")[0,0] = 1
  #   ms.input("ubx")[0,0] = 1
   
  #   ms.input("lbx")[1,0] = 0
  #   ms.input("ubx")[1,0] = 0
 
  #   ms.input("lbx")[2,0] = 0
  #   ms.input("ubx")[2,0] = 0
    
  #   ms.evaluate()
    
  #   self.checkarray(sign(matrix(ms.getOutput("x_opt"))[0,:-1]),ms.getOutput("u_opt"),"solution")


  # def testMSclassSimple2(self):
  #   return 
  #   self.message("CasADi multiple shooting class: simple example 2")
  #   """
  #   The problem consists of a harmonic oscilator and a power harvester.
    
  #   max     x(tend)
  #    u,x,a
  #           s.t    x'(t) = a*x(t) + u(t)
  #                  -1  <=   u(t) <= 1
  #                  -2  <=   a <= 2
  #                  x(0) = 0
                   
  #   The trivial solution for u(t) is u(t)=1, a = 1
  #   x(t) = 1/2 (e^(2 t)-1)
    
    
  #   """
  #   te = 1
  #   N = 20
  #   t=SX.sym("t")
  #   x=SX.sym("x")
  #   a=SX.sym("a")
  #   u=SX.sym("u")
  #   f=SXFunction('f', daeIn(t=t, x=x, p=vertcat([a,u])),daeOut(a*x+u))
    
  #   integrator_options = {}
  #   integrator_options["reltol"]=1e-9
  #   integrator_options["abstol"]=1e-9
  #   integrator_options["steps_per_checkpoint"]=10000
  #   integrator_options["t0"]=0
  #   integrator_options["tf"]=te/N
    
  #   mayer = SXFunction('mayer', [x],[-x])
    
  #   ms = DirectMultipleShooting(f,mayer)
  #   ms.setOption("integrator", "cvodes")
  #   ms.setOption("integrator_options",integrator_options)
  #   ms.setOption("number_of_grid_points",N);
  #   ms.setOption("number_of_parameters",1);
  #   ms.setOption("final_time",te);

  #   ms.setOption("nlp_solver", "ipopt")
  #   nlp_solver_options = {}
  #   nlp_solver_options["tol"] = 1e-10
  #   nlp_solver_options["hessian_approximation"] = "limited-memory"
  #   nlp_solver_options["max_iter"] = 100
  #   nlp_solver_options["linear_solver"] = "ma57"
  #   nlp_solver_options["derivative_test"] = "first-order"
  #   ms.setOption("nlp_solver_options",nlp_solver_options)
  #   ms.init()
    
  #   ms.setInput(-inf,"lbx")
  #   ms.setInput(inf,"ubx")
  #   ms.setInput(0,"x_init")
    
  #   ms.setInput(-1,"lbu")
  #   ms.setInput(1,"ubu")
  #   ms.setInput(0,"u_init")
    
  #   ms.setInput(-2,"lbp")
  #   ms.setInput(2,"ubp")
  #   ms.setInput(0,"p_init")
    
  #   ms.input("lbx")[0,0] = 0
  #   ms.input("ubx")[0,0] = 0
   
  #   ms.evaluate()
    
  
if __name__ == '__main__':
    unittest.main()

