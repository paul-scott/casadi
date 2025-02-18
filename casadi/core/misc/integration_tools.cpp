/*
 *    This file is part of CasADi.
 *
 *    CasADi -- A symbolic framework for dynamic optimization.
 *    Copyright (C) 2010-2014 Joel Andersson, Joris Gillis, Moritz Diehl,
 *                            K.U. Leuven. All rights reserved.
 *    Copyright (C) 2011-2014 Greg Horn
 *
 *    CasADi is free software; you can redistribute it and/or
 *    modify it under the terms of the GNU Lesser General Public
 *    License as published by the Free Software Foundation; either
 *    version 3 of the License, or (at your option) any later version.
 *
 *    CasADi is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *    Lesser General Public License for more details.
 *
 *    You should have received a copy of the GNU Lesser General Public
 *    License along with CasADi; if not, write to the Free Software
 *    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */


#include "integration_tools.hpp"
#include "casadi/core/function/mx_function.hpp"
#include "casadi/core/function/implicit_function.hpp"
#include "casadi/core/function/integrator.hpp"

#include <vector>

using namespace std;

namespace casadi {

  const long double legendre_points1[] = { 0.00000000000000000000, 0.50000000000000000000 };
  const long double legendre_points2[] =
      { 0.00000000000000000000, 0.21132486540518713447, 0.78867513459481286553 };
  const long double legendre_points3[] =
    { 0.00000000000000000000, 0.11270166537925824235, 0.50000000000000000000,
      0.88729833462074170214 };
  const long double legendre_points4[] =
    { 0.00000000000000000000, 0.06943184420297354720, 0.33000947820757187134,
      0.66999052179242823968, 0.93056815579702623076 };
  const long double legendre_points5[] =
    { 0.00000000000000000000, 0.04691007703066807366, 0.23076534494715861268,
      0.49999999999999994449, 0.76923465505284149835, 0.95308992296933192634 };
  const long double legendre_points6[] =
    { 0.00000000000000000000, 0.03376524289842347537, 0.16939530676686742616,
      0.38069040695840172805, 0.61930959304159849399, 0.83060469323313235179,
      0.96623475710157580298 };
  const long double legendre_points7[] =
    { 0.00000000000000000000, 0.02544604382862047931, 0.12923440720030288098,
      0.29707742431130129690, 0.50000000000000000000, 0.70292257568869853657,
      0.87076559279969734106, 0.97455395617137896558 };
  const long double legendre_points8[] =
    { 0.00000000000000000000, 0.01985507175123157886, 0.10166676129318691357,
      0.23723379504183561561, 0.40828267875217505445, 0.59171732124782483453,
      0.76276620495816449541, 0.89833323870681347501, 0.98014492824876797705 };
  const long double legendre_points9[] =
    { 0.00000000000000000000, 0.01591988024618706810, 0.08198444633668211523,
      0.19331428364970504319, 0.33787328829809543107, 0.49999999999999988898,
      0.66212671170190451342, 0.80668571635029517886, 0.91801555366331766272,
      0.98408011975381259884 };
  const long double* legendre_points[] =
    { 0, legendre_points1, legendre_points2, legendre_points3, legendre_points4,
      legendre_points5, legendre_points6, legendre_points7, legendre_points8, legendre_points9};

  // Radau collocation points
  const long double radau_points1[] =
    { 0.00000000000000000000, 1.00000000000000000000 };
  const long double radau_points2[] =
    { 0.00000000000000000000, 0.33333333333333337034, 1.00000000000000000000 };
  const long double radau_points3[] =
    { 0.00000000000000000000, 0.15505102572168222297, 0.64494897427831787695,
      1.00000000000000000000 };
  const long double radau_points4[] =
    { 0.00000000000000000000, 0.08858795951270420632, 0.40946686444073465694,
      0.78765946176084700170, 1.00000000000000000000 };
  const long double radau_points5[] =
    { 0.00000000000000000000, 0.05710419611451822419, 0.27684301363812369168,
      0.58359043236891683382, 0.86024013565621926247, 1.00000000000000000000 };
  const long double radau_points6[] =
    { 0.00000000000000000000, 0.03980985705146905529, 0.19801341787360787761,
      0.43797481024738621480, 0.69546427335363603106, 0.90146491420117347282,
      1.00000000000000000000 };
  const long double radau_points7[] =
    { 0.00000000000000000000, 0.02931642715978521885, 0.14807859966848435640,
      0.33698469028115418666, 0.55867151877155019069, 0.76923386203005450490,
      0.92694567131974103802, 1.00000000000000000000 };
  const long double radau_points8[] =
    { 0.00000000000000000000, 0.02247938643871305597, 0.11467905316090415413,
      0.26578982278458951338, 0.45284637366944457959, 0.64737528288683043876,
      0.81975930826310761113, 0.94373743946307731001, 1.00000000000000000000 };
  const long double radau_points9[] =
    { 0.00000000000000000000, 0.01777991514736393386, 0.09132360789979432347,
      0.21430847939563035798, 0.37193216458327238438, 0.54518668480342658000,
      0.71317524285556954666, 0.85563374295785443735, 0.95536604471003006012,
      1.00000000000000000000 };
  const long double* radau_points[] =
    { 0, radau_points1, radau_points2, radau_points3, radau_points4, radau_points5,
      radau_points6, radau_points7, radau_points8, radau_points9};

  const long double** collocation_points[] = {legendre_points, radau_points};

  template<typename RealT>
  std::vector<RealT> collocationPointsGen(int order, const std::string& scheme) {
    if (scheme=="radau") {
      casadi_assert_message(order>0 && order<10, "Error in collocationPoints(order, scheme): "
                            "only order up to 9 supported for scheme 'radau', but got "
                            << order << ".");
      return std::vector<RealT>(radau_points[order], radau_points[order]+order+1);
    } else if (scheme=="legendre") {
      casadi_assert_message(order>0 && order<10, "Error in collocationPoints(order, scheme): "
                            "only order up to 9 supported for scheme 'legendre', but got "
                            << order << ".");
      return std::vector<RealT>(legendre_points[order], legendre_points[order]+order+1);
    } else {
      casadi_error("Error in collocationPoints(order, scheme): unknown scheme '"
                   << scheme << "'. Select one of 'radau', 'legendre'.");
    }
  }

  std::vector<double> collocationPoints(int order, const std::string& scheme) {
    return collocationPointsGen<double>(order, scheme);
  }

  std::vector<long double> collocationPointsL(int order, const std::string& scheme) {
    return collocationPointsGen<long double>(order, scheme);
  }

  MXFunction simpleRK(Function f, int N, int order) {
    // Initialize f, if needed
    f.init(false);

    // Consistency check
    casadi_assert_message(N>=1, "Parameter N (number of steps) must be at least 1, but got "
                          << N << ".");
    casadi_assert_message(order==4, "Only RK order 4 is supported now.");
    casadi_assert_message(f.nIn()==2, "Function must have two inputs: x and p");
    casadi_assert_message(f.nOut()==1, "Function must have one outputs: dot(x)");

    MX x0 = MX::sym("x0", f.input(0).sparsity());
    MX p = MX::sym("p", f.input(1).sparsity());
    MX h = MX::sym("h");

    std::vector<double> b(order);
    b[0]=1.0/6;
    b[1]=1.0/3;
    b[2]=1.0/3;
    b[3]=1.0/6;

    std::vector<double> c(order);
    c[0]=0;
    c[1]=1.0/2;
    c[2]=1.0/2;
    c[3]=1;

    std::vector< std::vector<double> > A(order-1);
    A[0].resize(1);
    A[0][0]=1.0/2;
    A[1].resize(2);
    A[1][0]=0;A[1][1]=1.0/2;
    A[2].resize(3);
    A[2][0]=0;
    A[2][1]=0;A[2][2]=1;

    // Time step
    MX dt = h/N;

    std::vector<MX> k(order);
    vector<MX> f_arg(2);

    // Integrate
    MX xf = x0;
    for (int i=0; i<N; ++i) {
      for (int j=0; j<order; ++j) {
        MX xL = 0;
        for (int jj=0; jj<j; ++jj) {
          xL += k.at(jj)*A.at(j-1).at(jj);
        }
        f_arg[0] = xf+xL;
        f_arg[1] = p;
        k[j] = dt*f(f_arg).at(0);
      }

      for (int j=0; j<order; ++j) {
        xf += b.at(j)*k.at(j);
      }
    }

    // Form discrete-time dynamics
    vector<MX> ret_in(3);
    ret_in[0] = x0;
    ret_in[1] = p;
    ret_in[2] = h;
    return MXFunction("F", ret_in, make_vector(xf),
                      make_dict("input_scheme", IOScheme("x0", "p", "h"),
                                "output_scheme", IOScheme("xf")));
  }

  void collocationInterpolators(const std::vector<double> & tau_root,
                                std::vector< std::vector<double> > &C, std::vector< double > &D) {

    // Find the degree of the interpolation
    int deg = tau_root.size()-1;


    // Allocate storage space for resulting coefficients
    C.resize(deg+1);
    for (int i=0;i<deg+1;++i) {
      C[i].resize(deg+1);
    }
    D.resize(deg+1);

    // Collocation point
    SX tau = SX::sym("tau");

    // For all collocation points
    for (int j=0; j<deg+1; ++j) {
      // Construct Lagrange polynomials to get the polynomial basis at the collocation point
      SX L = 1;
      for (int j2=0; j2<deg+1; ++j2) {
        if (j2 != j) {
          L *= (tau-tau_root[j2])/(tau_root[j]-tau_root[j2]);
        }
      }

      SXFunction lfcn("lfcn", make_vector(tau), make_vector(L));

      // Evaluate the polynomial at the final time to get the
      // coefficients of the continuity equation
      lfcn.setInput(1.0);
      lfcn.evaluate();
      D[j] = lfcn.output().at(0);

      // Evaluate the time derivative of the polynomial at all collocation points to
      // get the coefficients of the continuity equation
      Function tfcn = lfcn.tangent();
      tfcn.init();
      for (int j2=0; j2<deg+1; ++j2) {
        tfcn.setInput(tau_root[j2]);
        tfcn.evaluate();
        C[j2][j] = tfcn.output().at(0);
      }
    }
  }

  MXFunction simpleIRK(Function f, int N, int order, const std::string& scheme,
                       const std::string& solver,
                       const Dict& solver_options) {
    // Initialize f, if needed
    f.init(false);

    // Consistency check
    casadi_assert_message(N>=1, "Parameter N (number of steps) must be at least 1, but got "
                          << N << ".");
    casadi_assert_message(f.nIn()==2, "Function must have two inputs: x and p");
    casadi_assert_message(f.nOut()==1, "Function must have one outputs: dot(x)");

    // Obtain collocation points
    std::vector<double> tau_root = collocationPoints(order, scheme);

    // Retrieve collocation interpolating matrices
    std::vector < std::vector <double> > C;
    std::vector < double > D;
    collocationInterpolators(tau_root, C, D);

    // Inputs of constructed function
    MX x0 = MX::sym("x0", f.input(0).sparsity());
    MX p = MX::sym("p", f.input(1).sparsity());
    MX h = MX::sym("h");

    // Time step
    MX dt = h/N;

    // Implicitly defined variables
    MX v = MX::sym("v", repmat(x0.sparsity(), order));
    std::vector<MX> x = vertsplit(v, x0.size1());
    x.insert(x.begin(), x0);

    // Collect the equations that implicitly define v
    std::vector<MX> V_eq, f_in(2), f_out;
    for (int j=1; j<order+1; ++j) {
      // Expression for the state derivative at the collocation point
      MX xp_j = 0;
      for (int r=0; r<=order; ++r) xp_j+= C[j][r]*x[r];

      // Collocation equations
      f_in[0] = x[j];
      f_in[1] = p;
      f_out = f(f_in);
      V_eq.push_back(dt*f_out.at(0)-xp_j);
    }

    // Root-finding function
    MXFunction rfp("rfp", make_vector(v, x0, p, h), make_vector(vertcat(V_eq)));

    // Create a implicit function instance to solve the system of equations
    ImplicitFunction ifcn("ifcn", solver, rfp, solver_options);

    // Get state at end time
    MX xf = x0;
    for (int k=0; k<N; ++k) {
      std::vector<MX> ifcn_out = ifcn(make_vector(repmat(xf, order), xf, p, h));
      x = vertsplit(ifcn_out[0], x0.size1());

      // State at end of step
      xf = D[0]*x0;
      for (int i=1; i<=order; ++i) {
        xf += D[i]*x[i-1];
      }
    }

    // Form discrete-time dynamics
    return MXFunction("F", make_vector(x0, p, h), make_vector(xf),
                      make_dict("input_scheme", IOScheme("x0", "p", "h"),
                                "output_scheme", IOScheme("xf")));
  }

  MXFunction simpleIntegrator(Function f, const std::string& integrator,
                              const Dict& integrator_options) {
    // Initialize f, if needed
    f.init(false);

    // Consistency check
    casadi_assert_message(f.nIn()==2, "Function must have two inputs: x and p");
    casadi_assert_message(f.nOut()==1, "Function must have one outputs: dot(x)");

    // Sparsities
    Sparsity x_sp = f.input(0).sparsity();
    Sparsity p_sp = f.input(1).sparsity();

    // Wrapper function inputs
    MX x = MX::sym("x", x_sp);
    MX u = MX::sym("u", vertcat(Sparsity::scalar(), vec(p_sp))); // augment p with t

    // Normalized xdot
    int u_offset[] = {0, 1, 1+p_sp.size1()};
    vector<MX> pp = vertsplit(u, vector<int>(u_offset, u_offset+3));
    MX h = pp[0];
    MX p = reshape(pp[1], p_sp.shape());
    MX f_in[] = {x, p};
    MX xdot = f(vector<MX>(f_in, f_in+2)).at(0);
    xdot *= h;

    // Form DAE function
    MXFunction dae("dae", daeIn("x", x, "p", u), daeOut("ode", xdot));

    // Create integrator function
    Dict integrator_options2 = integrator_options;
    integrator_options2["t0"] = 0; // Normalized time
    integrator_options2["tf"] = 1; // Normalized time
    Integrator ifcn("integrator", integrator, dae, integrator_options2);

    // Inputs of constructed function
    MX x0 = MX::sym("x0", x_sp);
    p = MX::sym("p", p_sp);
    h = MX::sym("h");

    // State at end
    MX xf = ifcn(make_map("x0", x0, "p", vertcat(h, vec(p)))).at("xf");

    // Form discrete-time dynamics
    return MXFunction("F", make_vector(x0, p, h), make_vector(xf),
                      make_dict("input_scheme", IOScheme("x0", "p", "h"),
                                "output_scheme", IOScheme("xf")));
  }

} // namespace casadi
