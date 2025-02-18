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
import numpy as n
import unittest
from types import *
from helpers import *

scipy_available = True
try:
	from scipy.sparse import *
	from scipy import *
except:
	scipy_available = False
import warnings

class typemaptests(casadiTestCase):

  def setUp(self):
    pass

  def test_0a(self):
    self.message("Typemap array -> IMatrix")
    arrays = [array([[1,2,3],[4,5,6]],dtype=int32),array([[1,2,3],[4,5,6]]),array([[1,2,3],[4,5,6]],dtype=int)]
    for i in range(len(arrays)):
      m = arrays[i]
      zt=c.transpose(c.transpose(m))
      self.assertTrue(isinstance(zt,IMatrix),"IMatrix expected")
      self.checkarray(m,zt,"IMatrix(numpy.ndarray)")
      self.checkarray(m,zt.toArray(),"IMatrix(numpy.ndarray).toArray()")
      #if scipy_available:
      #  self.checkarray(m,zt.toCsc_matrix(),"IMatrix(numpy.ndarray).toCsc_matrix()")
      
  def test_0(self):
    self.message("Typemap array -> DMatrix")
    arrays = [array([[1,2],[3,4],[5,6]],dtype=double),array([[3.2,4.6,9.9]])]
    for i in range(len(arrays)):
      m = arrays[i]
      zt=c.transpose(c.transpose(m))
      self.assertTrue(isinstance(zt,DMatrix),"DMatrix expected")
      self.checkarray(m,zt,"DMatrix(numpy.ndarray)")
      self.checkarray(m,zt.toArray(),"DMatrix(numpy.ndarray).toArray()")
      if scipy_available:
        self.checkarray(m,zt.toCsc_matrix(),"DMatrix(numpy.ndarray).toCsc_matrix()")
      
  def test_1(self):
    self.message("DMatrix -> DMatrix")
    arrays = [DMatrix(Sparsity(4,3,[0,2,2,3],[1,2,1]),[3,2.3,8])]
    for i in range(len(arrays)):
      m = arrays[i]
      zt=c.transpose(c.transpose(m))
      self.assertTrue(isinstance(zt,DMatrix),"DMatrix expected")
      self.checkarray(m,zt,"DMatrix(DMatrix)")
      self.checkarray(m,zt.toArray(),"DMatrix(DMatrix).toArray()")
      if scipy_available:
        self.checkarray(m,zt.toCsc_matrix(),"DMatrix(DMatrix).toCsc_matrix()")
   
  def test_2(self):
    self.message("crs_matrix -> DMatrix")
    if not(scipy_available):
      return
    arrays = [csr_matrix( ([3,2.3,8],([0,2,0],[1,1,2])), shape = (3,4), dtype=double ),
              csr_matrix( ([3,2.3,8],([0,2,0],[1,1,2])), shape = (3,4), dtype=int )
              ]
    for i in range(len(arrays)):
      m = arrays[i]
      zt=c.transpose(c.transpose(m))
      self.assertTrue(isinstance(zt,DMatrix),"DMatrix expected")
      self.checkarray(m,zt,"DMatrix(crs_matrix)")
      self.checkarray(m,zt.toArray(),"DMatrix(crs_matrix).toArray()")
      if scipy_available:
        self.checkarray(m,zt.toCsc_matrix(),"DMatrix(crs_matrix).toCsc_matrix()")
      
      
  def test_setget(self):
    return # get/set with return-by-reference has been dropped
    self.message("DMatrix set/get")
    data = n.array([3,2.3,8])
    dm=DMatrix(Sparsity(3,4,[0,0,2,3,3],[0,2,0]),[3,2.3,8])
    
    if scipy_available:
      c=dm.toCsc_matrix()
    z=n.zeros((3,4))
    dm.get(z)
    self.checkarray(z,dm,"get(2Dndarray)")
    z=n.matrix(n.zeros((3,4)))
    dm.get(z)
    self.checkarray(z,dm,"get(2Dmatrix)")
    z=n.zeros((12,5))
    self.assertRaises(TypeError,lambda : dm.get(z),"get(wrong size ndarray)")
    z=ones((3,4))
    dm.set(z)
    self.checkarray(dm.toArray() > 0,dm,"set(2Dndarray)")
    z=n.matrix(ones((3,4)))
    dm.set(z)
    self.checkarray(dm.toArray() > 0,dm,"set(2Dmatrix)")
    z=n.zeros((12,5))
    
    if scipy_available:
      dm.set(c)
      self.checkarray(c,dm,"set(csr_matrix)")
    
      z=n.zeros(3)
      dm.getNZ(z)
      self.checkarray(n.matrix(z),n.matrix(data),"get(1Dndarray)")
      dm.setNZ(z)

      self.checkarray(c,dm,"set(1Dndarray)")

      dm = dm * 2
      dm.get(c)

      self.checkarray(c,dm,"get(csr_matrix)")
      
      with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        c[0,0]=1
      self.assertRaises(TypeError,lambda :  dm.get(c))

  def test_conversion(self):
    self.message("DMatrix conversions")
    w = DMatrix(Sparsity(4,3,[0,2,2,3],[1,2,1]),[3,2.3,8])
    d = array([[1,2,3],[4,5,6]])
    
    list(w.nonzeros())
    tuple(w.nonzeros())
    w.toArray()
    array(w)
    w.toMatrix()
    matrix(w)
    if scipy_available:
      w.toCsc_matrix()

    self.checkarray(DMatrix(d),d,"DMatrix(numpy.ndarray)")
    #self.checkarray(DMatrix(array([1,2,3,4,5,6])),d.ravel(),"DMatrix(numpy.ndarray)")
    #print DMatrix(array([1,2,3,4,5,6]))
    #print DMatrix(array([1,2,3,6]),2,2).toArray()

    #print DMatrix(array([1,2,3,6]),2,2).toArray()
    
  def test_autoconversion(self):
    self.message("Auto conversion DMatrix")
    x=array([2.3])
    s = DMatrix([[1,2],[3,4]])
    n = array(s)
    
    self.checkarray(x[0]*s,s*x[0],"")
    self.checkarray(x[0]*s,n*x[0],"")
    
    self.checkarray(x[0]/s,1/(s/x[0]),"")
    self.checkarray(x[0]/s,x[0]/n,"")
    
    self.checkarray(x[0]-s,-(s-x[0]),"")
    self.checkarray(x[0]-s,x[0]-n,"")
    
    self.checkarray(x[0]+s,s+x[0],"")
    self.checkarray(x[0]+s,x[0]+n,"")
    
    w=array([2.3])[0]
    w+=s
    self.checkarray(w,2.3+n,"")

    w=array([2.3])[0]
    w-=s
    self.checkarray(w,2.3-n,"")
    
    w=array([2.3])[0]
    w*=s
    self.checkarray(w,2.3*n,"")
    
    w=array([2.3])[0]
    w/=s
    self.checkarray(w,2.3/n,"")
    
    x=[2.3]

    self.checkarray(x[0]*s,s*x[0],"")
    self.checkarray(x[0]*s,n*x[0],"")
    
    self.checkarray(x[0]/s,1/(s/x[0]),"")
    self.checkarray(x[0]/s,x[0]/n,"")
    
    self.checkarray(x[0]-s,-(s-x[0]),"")
    self.checkarray(x[0]-s,x[0]-n,"")
    
    self.checkarray(x[0]+s,s+x[0],"")
    self.checkarray(x[0]+s,x[0]+n,"")
    
    
    w=2.3
    w+=s
    self.checkarray(w,2.3+n,"")
    
    w=2.3
    w-=s
    self.checkarray(w,2.3-n,"")
    
    w=2.3
    w*=s
    self.checkarray(w,2.3*n,"")
    
    w=2.3
    w/=s
    self.checkarray(w,2.3/n,"")

  def test_autoconversionMX(self):
    self.message("Auto conversion MX")
    s = DMatrix([[1,2],[3,4]])
    x = SX(3)
    y = MX(3)
    
    def doit(z,s,fun):
      function = None
      
      if type(z) in [type(SX()),type(SX())]:
        ztype = [type(SX()),type(SX())]
        function = SXFunction
      
      if type(z) in [type(MX())]:
        ztype = [type(MX())]
        function = MXFunction
        
      r = fun(z,s)
            
      if type(z) is type(SX()) and type(s) is type(SX()):
        self.assertTrue(type(r) is type(SX()))
        

      self.assertTrue(type(r) in ztype,"Expected %s but got %s" % (str(ztype),str(type(r))))
      
      hasNum = True
      if type(s) in [type(SX()),type(MX()),type(SX())]:
        hasNum = False
      
      if hasNum:
        dummy = [1.3,2.7,9.4,1.0]

        f=function("f", [z],[r])
        f.setInputNZ(dummy[0:f.getInput().nnz()])
        f.evaluate()
        
        f_=function("f", [z],[z])
        f_.setInputNZ(dummy[0:f.getInput().nnz()])
        f_.evaluate()
        

        self.checkarray(fun(f_.getOutput(),DMatrix(s)),f.getOutput(),"operation",str(f_.getOutput(0))+str(s)+":"+str(fun(f_.getOutput(),DMatrix(s)))+"->"+str(f.getOutput())+":"+str(s)+str(z)+"->"+str(r))
      else:
        dummy = [1.3,2.7,9.4,1.0]
        dummy2 = [0.3,2.4,1.4,1.7]
        
        f=function("f", [z,s],[r])
        f.setInputNZ(dummy[0:f.getInput(0).nnz()],0)
        f.setInputNZ(dummy2[0:f.getInput(1).nnz()],1)
        f.evaluate()
        
        f_=function("f", [z,s],[z,s])
        f_.setInputNZ(dummy[0:f.getInput(0).nnz()],0)
        f_.setInputNZ(dummy2[0:f.getInput(1).nnz()],1)
        f_.evaluate()

        self.checkarray(fun(f_.getOutput(0),f_.getOutput(1)),f.getOutput(),"operation"+str(f_.getOutput(0))+","+str(f_.getOutput(1))+":"+str(f.getOutput()))
    
    
    def tests(z,s):
      doit(z,s,lambda z,s: -z)
      doit(z,s,lambda z,s: z+s)
      doit(z,s,lambda z,s: s+z)
      doit(z,s,lambda z,s: s*z)
      doit(z,s,lambda z,s: z*s)
      doit(z,s,lambda z,s: z-s)
      doit(z,s,lambda z,s: s-z)
      doit(z,s,lambda z,s: z/s)
      doit(z,s,lambda z,s: s/z)
      doit(z,s,lambda z,s: z**s)
      doit(z,s,lambda z,s: s**z)
      doit(z,s,lambda z,s: fmin(s,z))
      doit(z,s,lambda z,s: fmax(s,z))
      doit(z,s,lambda z,s: min(s,z))
      doit(z,s,lambda z,s: max(s,z))
      doit(z,s,lambda z,s: constpow(s,z))
      doit(z,s,lambda z,s: constpow(z,s))
      doit(z,s,lambda z,s: arctan2(s,z))
      doit(z,s,lambda z,s: arctan2(z,s))
      doit(z,s,lambda z,s: copysign(z,s))
      doit(z,s,lambda z,s: copysign(s,z))

    nums = [array([[1,2],[3,4]]),DMatrix([[1,2],[3,4]]), DMatrix(4), array(4),4.0,4]
        
    ## numeric & SX
    for s in nums:
      for z in [SX.sym("x"), SX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)
       
    # numeric & MX
    for s in nums:
      for z in [MX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)

    ## MX & MX
    for s in [MX.sym("x"),MX.sym("x",2,2)]:
      for z in [MX.sym("x"),MX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)
        
    for (s,x,y) in [
                  (matrix([[1,2],[3,4]]),SX.sym("x",2,2),MX.sym("x",2,2))    
                  ]:
      for z,ztype in zip([x,y],[[type(SX()),type(SX())],[type(MX())]]):
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        doit(z,s,lambda z,s: -z)
        -s
        doit(z,s,lambda z,s: z+s)
        doit(z,s,lambda s,z: s+z)
        doit(z,s,lambda z,s: s*z)
        doit(z,s,lambda s,z: z*s)
        doit(z,s,lambda z,s: z-s)
        doit(z,s,lambda s,z: s-z)
        doit(z,s,lambda z,s: z/s)
        doit(z,s,lambda s,z: s/z)
        
  def test_conversion_operators(self):
    self.message("COnversion operations")
    

    def doit(z,s,fun):
      function = None
      
      if type(z) in [type(SX()),type(SX())]:
        ztype = [type(SX()),type(SX())]
        function = SXFunction
      
      if type(z) in [type(MX())]:
        ztype = [type(MX())]
        function = MXFunction
        
      r = fun(z,s)
            
      if type(z) is type(SX()) and type(s) is type(SX()):
        self.assertTrue(type(r) is type(SX()))
        

      self.assertTrue(type(r) in ztype,"Expected %s but got %s" % (str(ztype),str(type(r))))
      
    def tests(z,s):
      doit(z,s,lambda z,s: s>=z)
      doit(z,s,lambda z,s: s>z)
      doit(z,s,lambda z,s: s<=z)
      doit(z,s,lambda z,s: s<z)
      doit(z,s,lambda z,s: s==z)
      doit(z,s,lambda z,s: s!=z)
      
    nums = [array([[1,2],[3,4]]),DMatrix([[1,2],[3,4]]), DMatrix(4), array(4),4.0,4]
        
    ## numeric & SX
    for s in nums:
      for z in [SX.sym("x"), SX.sym("x"), SX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)
       
    # numeric & MX
    for s in nums:
      for z in [MX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)
        
    # SX & SX
    for s in [SX.sym("x"), SX.sym("x"), SX.sym("x",2,2)]:
      for z in [SX.sym("x"),SX.sym("x"), SX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)
         
    # MX & MX
    for s in [MX.sym("x"),MX.sym("x",2,2)]:
      for z in [MX.sym("x"),MX.sym("x",2,2)]:
        print "z = %s, s = %s" % (str(z),str(s))
        print "  z = %s, s = %s" % (type(z),type(s))
        tests(z,s)
        
  def test_set(self):
    self.message("DMatrix set on dense matrices")
    
    # should be integers
    goallist = [1,2,3]
    goal = array([goallist]).T

    test={
      "list" : goallist,
      "tuple" : tuple(goallist),
      "array1ddouble" : array(goallist,dtype=double),
      "array1dint" : array(goallist)
    }
    w=DMatrix(goal)
    self.checkarray(w,goal,"Constructor")
    
    for name, value in test.items():
      w.setNZ(value)
      self.checkarray(w,goal,"name")

    test={
      "array2ddouble" : array([goallist],dtype=double).T,
      "array2dint" : array([goallist]).T,
    }
    w=DMatrix(goal)
    self.checkarray(w,goal,"Constructor")
    
    for name, value in test.items():
      w.set(value)
      self.checkarray(w,goal,"name")
      
      
  def testGenericType(self):
    with warnings.catch_warnings():
      warnings.filterwarnings("ignore",category=DeprecationWarning)
      self.message("Generic type")
      x=SX.sym("x")
      f=SXFunction("foo", [x],[2*x])
      self.assertEquals(f.getOption("name"),"foo")
      f.setOption("verbose",True)
      #self.assertTrue(isinstance(f.getOption("verbose"),bool))
      self.assertTrue(f.getOption("verbose"))
      f.setOption("verbose",False)
      self.assertTrue(not(f.getOption("verbose")))
      d=f.dictionary()
      self.assertTrue(isinstance(d,dict))
      d["verbose"]=True
      f.setOption(d)
      self.assertTrue(f.getOption("verbose"))

  def testGenericType2(self):
    self.message("Generic type 2")
    for i in [0,1,7,-7]:
	    a=GenericType(i)
	    self.assertTrue(a.isInt())
	    self.assertFalse(a.isBool())
	    self.assertFalse(a.isDouble())
	    self.assertFalse(a.isString())
	    self.assertEqual(a.toInt(),i)
    for i in [True,False]:
	    a=GenericType(i)
	    #self.assertFalse(a.isInt())
	    #self.assertTrue(a.isBool())
	    #self.assertFalse(a.isDouble())
	    #self.assertEqual(a.toBool(),i)

    for i in [0.01,-5.7]:
	    a=GenericType(i)
	    self.assertFalse(a.isInt())
	    self.assertFalse(a.isBool())
	    self.assertTrue(a.isDouble())
	    self.assertFalse(a.isString())
	    self.assertEqual(a.toDouble(),i)

    for i in ["","foo"]:
	    a=GenericType(i)
	    self.assertFalse(a.isInt())
	    self.assertFalse(a.isBool())
	    self.assertFalse(a.isDouble())
	    self.assertTrue(a.isString())
	    self.assertEqual(a.toString(),i)

    for i in [(0,1,5)]:
	    a=GenericType(i)
	    self.assertTrue(a.isIntVector())
	    self.assertFalse(a.isDoubleVector())

    for i in [(0.3,1,5)]:
	    a=GenericType(i)
	    self.assertFalse(a.isIntVector())
	    self.assertTrue(a.isDoubleVector())
	    
    a = GenericType(["foo","bar"])
    self.assertTrue(a.isStringVector())
    x = SX.sym("x")
    f = SXFunction("f", [x],[x])
    #f.setOption("monitor",["foo","bar"])
    #self.assertEqual(f.getOption("monitor")[0],"foo")
    #self.assertEqual(f.getOption("monitor")[1],"bar")
    #f.setOption("monitor",["foo"])
    #self.assertEqual(f.getOption("monitor")[0],"foo")
    #f.setOption("monitor",[])
        
  def testGenericType3(self):
    self.message("Generic type 3")
    
    is_differential_gentype = GenericType([2,3])
    
    self.assertTrue(is_differential_gentype.isIntVector())

  @requiresPlugin(NlpSolver,"ipopt")
  def testGenericTypeBoolean(self):
    x=SX.sym("x")

    nlp = SXFunction("nlp", nlpIn(x=x),nlpOut(f=x**2))

    nlp_solver = NlpSolver("mysolver","ipopt", nlp)

    with warnings.catch_warnings():
      warnings.filterwarnings("ignore",category=DeprecationWarning)
      self.assertRaises(RuntimeError,lambda : nlp_solver.setOption('acceptable_tol',SX.sym("x")))
      nlp_solver.setOption('acceptable_tol',DMatrix(1))

  def test_DMatrixSXcast(self):
    self.message("Casting DMatrix to SX")
    
    W = SX(DMatrix([[1,2,3],[4,5,6]]))

    self.assertEqual(W.size1(),2)
    self.assertEqual(W.size2(),3)

  def test_DMatrixMXcast(self):
    self.message("Casting DMatrix to MX")
    W = MX(DMatrix([[1,2,3],[4,5,6]]))
    
    self.assertEqual(W.size1(),2)
    self.assertEqual(W.size2(),3)
    
  def test_DMatrixSX(self):
    self.message("Casting DMatrix to SX")
    
    w = DMatrix([[1,2,3],[4,5,6]])
    x = SX.sym("x")
    
    f = SXFunction("f", [x],[w])
    
    W = f.outputExpr(0)
    self.assertEqual(W.size1(),2)
    self.assertEqual(W.size2(),3)

  def test_DMatrixMX(self):
    self.message("Casting DMatrix to MX")
    w = DMatrix([[1,2,3],[4,5,6]])
    x = MX.sym("x")
    
    f = MXFunction("f", [x],[w])
    
    W = f.outputExpr(0)

    self.assertEqual(W.size1(),2)
    self.assertEqual(W.size2(),3)

  def test_sharedarray(self):
    w = DMatrix([[1,2],[3,4]])
    W = w.toArray(shared=True)
    self.checkarray(w,W,"shared")
    
    w[0,1] = 8
    self.checkarray(w,W,"shared")

    W[:,0] = 47
    self.checkarray(w,W,"shared")
    
  def test_setgetslicetransp(self):
    self.message("set/get on DMatrix using tranpose")
    
    w = DMatrix([[0,0],[0,0]])

    A = matrix([[1.0,2],[3,4]])
    B = matrix([[4.0,5],[6,7]])
    
    w.set(A)

    B = np.array(w.get()).reshape(B.shape)
    
    self.checkarray(B.T,A,"get")
    

  def test_setgetslice(self):
    self.message("set/get on DMatrix using slices")
    
    w = DMatrix([[0,0]])

    A = matrix([[1.0,2],[3,4]])
    B = matrix([[4.0,5],[6,7]])
    
    w.set(A[0,:])
    self.checkarray(w,A[0,:],"set")
    B[0,:] = w
    self.checkarray(B[0,:],A[0,:],"get")
    
    w = DMatrix([[0],[0]])


    w.set(A[:,0])
    self.checkarray(w,A[:,0],"set")
    B[:,0] = w
    self.checkarray(B[:,0],A[:,0],"get")
    
    w = DMatrix([[1,2],[3,4]])
    A = zeros((8,7))
    B = zeros((8,7))
    A[2:7:3,:7:4] = w
    B[2:7:3,:7:4] = w
    self.checkarray(A,B,"get")
    
  def test_vertcatprecedence(self):
    self.message("Argument precedence DMatrix")
    a = DMatrix([1,2])
    self.assertTrue(isinstance(vertcat([a,a]),DMatrix))
    
    a = DMatrix([1,2])
    self.assertTrue(isinstance(vertcat([a,[1,2,3]]),DMatrix))
    
    
    a = MX([1,2])
    print vertcat([a,[1,2,3]])
    self.assertTrue(isinstance(vertcat([a,[1,2,3]]),MX))
    
  def test_issue190(self):
    self.message("regression test issue #190")
    x=SX.sym("x")
    x * numpy.array(1)
    x * numpy.array(1.2)

    SX.sym("x") * numpy.array(1.0) 
    MX.sym("x") * numpy.array(1.0)
    
  def test_array_cat(self):
    horzcat((SX.sym("x",4,3),ones((4,3))))
    
    
  def test_issue(self):
    self.message("std::vector<double> typemap.")
    a = array([0,2,2,3])
    b = array([0.738,0.39,0.99])
    DMatrix(Sparsity(4,3,[0,2,2,3],[1,2,1]),[0.738,0.39,0.99])
    DMatrix(Sparsity(4,3,(0,2,2,3),[1,2,1]),[0.738,0.39,0.99])
    DMatrix(Sparsity(4,3,list(a),[1,2,1]),[0.738,0.39,0.99])
    DMatrix(Sparsity(4,3,a,[1,2,1]),[0.738,0.39,0.99])
    DMatrix(Sparsity(4,3,[0,2,2,3],[1,2,1]),(0.738,0.39,0.99))
    DMatrix(Sparsity(4,3,[0,2,2,3],[1,2,1]),list(b))
    DMatrix(Sparsity(4,3,[0,2,2,3],[1,2,1]),b)
    
  def test_imatrix(self):
    self.message("IMatrix")
    
    A = IMatrix.ones(2,2)
    B = A + 1
    self.assertEqual(type(B),type(A))
    self.checkarray(array(B),repmat(DMatrix(2),2,2),"Imatrix")
    
  def test_issue314(self):
    self.message("regression test for #314: SX sparsity constructor")
    SX(Sparsity.diag(3),[1,2,3])
  def test_setAll_365(self):
    self.message("ticket #365: DMAtrix.setAll does not work for 1x1 Matrices as input")
    m = DMatrix.ones(5,5)
    m.set(DMatrix(4))
    m.set(IMatrix(4))
        
  def test_issue570(self):
    self.message("Issue #570: long int")
    longint = 10**50
    print type(longint)
    print casadi.SX.sym('x') + longint
    print longint + casadi.SX.sym('x')
    print casadi.SX.sym('x') + longint
    print longint + casadi.SX.sym('x')
    
  def test_casting_DMatrix(self):
    self.message("casting DMatrix")
    
    x = SX.sym("x")
    f = SXFunction("f", [x],[x])
    class Foo:
      def __DMatrix__(self):
        return DMatrix([4])
        
    f.setInput(Foo())
    self.assertEqual(f.getInput(),4)

    class Foo:
      def __DMatrix__(self):
        return SX([4])
        
    self.assertRaises(NotImplementedError,lambda :f.setInput(Foo()))
    
    class Foo:
      def __DMatrix__(self):
        raise Exception("15")
        
    self.assertRaises(NotImplementedError,lambda :f.setInput(Foo()))

    class Foo:
      pass
        
    self.assertRaises(NotImplementedError,lambda :f.setInput(Foo()))

  def test_casting_IMatrix(self):
    self.message("casting IMatrix")

    class Foo:
      def __IMatrix__(self):
        return IMatrix([[4,6],[2,4]])
        
    self.assertEqual(det(Foo()),4)

    class Foo:
      def __IMatrix__(self):
        return SX([[4,6],[2,4]])
        
    self.assertRaises(NotImplementedError,lambda :det(Foo()))
    
    class Foo:
      def __IMatrix__(self):
        raise Exception("15")
        
    self.assertRaises(NotImplementedError,lambda :det(Foo()))

    class Foo:
      pass
        
    self.assertRaises(NotImplementedError,lambda : det(Foo()))

  def test_casting_SX(self):
    self.message("casting SX")
    
    
    x = SX.sym("x")
    
    class Foo:
      def __SX__(self):
        return x
        
    SXFunction("tmp", [x],[Foo()])
    
    class Foo:
      def __SX__(self):
        return MX.sym("x")
        
    self.assertRaises(NotImplementedError,lambda : SXFunction("tmp", [x],[Foo()]))
    
    class Foo:
      def __SX__(self):
        raise Exception("15")
        
    self.assertRaises(NotImplementedError,lambda : SXFunction("tmp", [x],[Foo()]))

    class Foo:
      pass
        
    self.assertRaises(NotImplementedError,lambda :SXFunction("tmp", [x],[Foo()]))


  def test_casting_MX(self):
    self.message("casting MX")
    
    
    x = MX.sym("x")
    
    class Foo:
      def __MX__(self):
        return x
        
    MXFunction("tmp", [x],[Foo()])
    
    class Foo:
      def __MX__(self):
        return SX.sym("x")
        
    self.assertRaises(NotImplementedError,lambda : MXFunction("tmp", [x],[Foo()]))
    
    class Foo:
      def __MX__(self):
        raise Exception("15")
        
    self.assertRaises(NotImplementedError,lambda : MXFunction("tmp", [x],[Foo()]))

    class Foo:
      pass
        
    self.assertRaises(NotImplementedError,lambda :MXFunction("tmp", [x],[Foo()]))
    
  def test_OUTPUT(self):
    self.message("OUTPUT typemap")
    a = SX.sym("A",3,3)
    self.assertTrue(isinstance(qr(a),tuple))

  def test_cvar(self):
    self.message("We must not have cvar, to avoid bug #652")
    # Wrap all static global things in #ifdef SWIG 
    with self.assertRaises(Exception):
      cvar
      
  def test_ufuncsum(self):
    self.message("ufunc.add")
    
    self.checkarray(DMatrix(sum(DMatrix([1,2,3]))),DMatrix(6))
    
  def test_sxmatrix(self):

    def val(a):
      f = SXFunction("f", [],[a])
      f.evaluate()
      return f.getOutput()
      
    for i in [SX(1),1,1.0]:
      a = numpy.array([[1,2],[3,4]])
      print val(SX(a))
      print val(SX(a.T))

      self.checkarray(val(SX(a)),DMatrix([[1,2],[3,4]]))
      self.checkarray(val(SX(a.T).T),DMatrix([[1,2],[3,4]]))


      a = numpy.matrix([[1,2],[3,4]])
      
      print val(SX(a))
      print DMatrix([[1,2],[3,4]])

      self.checkarray(val(SX(a)),DMatrix([[1,2],[3,4]]))
      self.checkarray(val(SX(a.T).T),DMatrix([[1,2],[3,4]]))
      
  def test_issue1158(self):
    A = numpy.zeros((0,2))
    a = DMatrix(A)
    self.assertEqual(a.shape[0],0)
    self.assertEqual(a.shape[1],2)
    
  def test_matrices(self):

    Ds = [    
          numpy.matrix([[1,2],[3,4]]),
          numpy.matrix([[1,2],[3,4.0]]),
          numpy.array([[1,2],[3,4]]),
          numpy.array([[1,2],[3,4.0]]),
        ]
        
    if scipy_available:
      Ds+=[
          csc_matrix(([1.0,3.0,2.0,4.0],[0,1,0,1],[0,2,4]),shape=(2,2),dtype=numpy.double),
          csc_matrix(([1,3,2,4],[0,1,0,1],[0,2,4]),shape=(2,2),dtype=numpy.int),
          DMatrix([[1,2],[3,4]]).toCsc_matrix()
      ]


    for D in Ds:
      print D
      d = DMatrix.ones(2,2)
      
      x = SX.sym("x",d.sparsity())
      f = SXFunction("f", [x],[x])
      f.setInput(D)

      self.checkarray(f.getInput(),DMatrix([[1,2],[3,4]]))
      d.set(D)
      self.checkarray(d,DMatrix([[1,2],[3,4]]))

  def test_issue1217(self):
    a = numpy.matrix([0,SX.sym("x")])

    print if_else(0,a,a)

  def test_issue1373(self):
    print np.array(casadi.DMatrix([2]))
    print np.array(casadi.DMatrix([1,2,3.0]))

  def test_None(self):
    #self.assertFalse(None==DMatrix(3))
    b = atleast_2d(None)
    with self.assertRaises(NotImplementedError):
      c = repmat(b, 1, 1)
  
  def test_SXtypemap_bug(self):
    x = casadi.SX.sym("x",3)
    print "x =", repr(x), "\n"
    print "array(x) =", repr(np.array(x)), "\n"
    print "SX(array(x)) =", repr(casadi.SX(np.array(x))), "\n"
    sx = casadi.SX(np.array(x))
    self.assertTrue(sx[0] == x[0] )
    self.assertTrue(sx[1] == x[1] )
    self.assertTrue(sx[2] == x[2] )
if __name__ == '__main__':
    unittest.main()
