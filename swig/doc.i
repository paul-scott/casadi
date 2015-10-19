
// File: index.xml

// File: classcasadi_1_1Adaptor.xml
%feature("docstring") casadi::Adaptor "[INTERNAL]  A helper class for a
Solver that delegates work to another solver.

Joris Gillis

C++ includes: adaptor.hpp ";

%feature("docstring")  casadi::Adaptor< Derived, Solver >::addOptions() "
[INTERNAL]  Add options that are common to all Adaptor classes.

";


// File: classcasadi_1_1Assertion.xml


// File: classcasadi_1_1BinaryMX.xml


// File: classcasadi_1_1BinarySX.xml


// File: classcasadi_1_1Call.xml


// File: classcasadi_1_1Callback.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::OptionsFunctionality::copyOptions(const OptionsFunctionality &obj,
bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Callback::get_output_shape(int i) "

Specify output shape.

Specify the shape corresponding to a given output. The shape must not be
changed over the lifetime of the object

Default implementation: scalar (1,1)

";

%feature("docstring")  casadi::Callback::get_n_in() "

Number of input arguments.

Specify the number of input arguments that a specific instance can handle.
The number must not be changed over the lifetime of the object

Default implementation: 1

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::Callback::init() "

Initialize the object This function is called after the object construction
(for the whole class hierarchy) is complete, but before the finalization
step. It is called recursively for the whole class hierarchy, starting with
the lowest level.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Callback::get_n_out() "

Number of output arguments.

Specify the number of output arguments that a specific instance can handle.
The number must not be changed over the lifetime of the object

Default implementation: 1

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Callback::get_n_reverse() const  "

Return function that calculates adjoint derivatives derReverse(nadj) returns
a cached instance if available, and calls  Function getDerReverse(int nadj)
if no cached version is available.

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring") casadi::Callback::Callback() "

Default constructor.

";

%feature("docstring") casadi::Callback::Callback(const Callback &obj) "

Copy constructor (throws an error)

";

%feature("docstring") casadi::Callback::~Callback "

Destructor.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Callback::get_input_sparsity(int i) "

Specify input sparsity.

Specify the sparsity corresponding to a given input. The sparsity must not
be changed over the lifetime of the object

Default implementation: dense using inputShape

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Callback::construct(const std::string &name,
const Dict &opts=Dict()) "

Construct internal object This is the step that actually construct the
internal object, as the class constructor only creates a null pointer. It
should be called from the user constructor.

";

%feature("docstring")  casadi::Callback::get_n_forward() const  "

Return function that calculates forward derivatives derForward(nfwd) returns
a cached instance if available, and calls  Function getDerForward(int nfwd)
if no cached version is available.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Callback::get_forward(const std::string
&name, int nfwd, Dict &opts) "

Return function that calculates forward derivatives derForward(nfwd) returns
a cached instance if available, and calls  Function getDerForward(int nfwd)
if no cached version is available.

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::Callback::get_input_shape(int i) "

Specify input shape.

Specify the shape corresponding to a given input. The shape must not be
changed over the lifetime of the object

Default implementation: scalar (1,1)

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::Callback::has_jacobian() const  "

Return Jacobian of all input elements with respect to all output elements.

";

%feature("docstring")  casadi::Callback::get_output_sparsity(int i) "

Specify output sparsity.

Specify the sparsity corresponding to a given output. The sparsity must not
be changed over the lifetime of the object

Default implementation: dense using outputShape

";

%feature("docstring")  casadi::Callback::finalize() "

Finalize the object This function is called after the construction and init
steps are completed, but before user functions are called. It is called
recursively for the whole class hierarchy, starting with the highest level.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")  casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::Callback::get_jacobian(const std::string
&name, const Dict &opts) "

Return Jacobian of all input elements with respect to all output elements.

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Callback::eval(const std::vector< DMatrix >
&arg) "

Evaluate numerically, temporary matrices and work vectors.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring")  casadi::Callback::get_reverse(const std::string
&name, int nadj, Dict &opts) "

Return function that calculates adjoint derivatives derReverse(nadj) returns
a cached instance if available, and calls  Function getDerReverse(int nadj)
if no cached version is available.

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring") casadi::Callback "

Callback function functionality This class provides a public API to the
FunctionInternal class that can be subclassed by the user, who is then able
to implement the different virtual method. Note that the Function class also
provides a public API to FunctionInternal, but only allows calling, not
being called.

The user is responsible for not deleting this class for the lifetime of the
internal function object.

Joris Gillis, Joel Andersson

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp |              |
|              |              |              | uts)         |              |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+

Diagrams
--------



C++ includes: callback.hpp ";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring") casadi::Callback::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";


// File: classcasadi_1_1casadi__limits.xml
%feature("docstring") casadi::casadi_limits "

casadi_limits class

The following class, which acts as a complements to the standard
numeric_limits class, allows specifying certain properties of scalar
objects. The template can be specialized for e.g. symbolic scalars Joel
Andersson

C++ includes: casadi_limits.hpp ";


// File: classcasadi_1_1CasadiException.xml
%feature("docstring")  casadi::CasadiException::what() const  "  throw ()
Display error.

";

%feature("docstring") casadi::CasadiException::CasadiException() "

Default constructor.

";

%feature("docstring") casadi::CasadiException::CasadiException(const
std::string &msg) "

Form message string.

";

%feature("docstring") casadi::CasadiException "

Casadi exception class.

Joel Andersson

C++ includes: casadi_exception.hpp ";

%feature("docstring") casadi::CasadiException::~CasadiException "throw ()
Destructor.

";


// File: classcasadi_1_1CasadiMeta.xml
%feature("docstring") casadi::CasadiMeta "

Collects global CasADi meta information.

Joris Gillis

C++ includes: casadi_meta.hpp ";


// File: classcasadi_1_1CasadiOptions.xml
%feature("docstring") casadi::CasadiOptions "

Collects global CasADi options.

Note to developers: use sparingly. Global options are - in general - a
rather bad idea

this class must never be instantiated. Access its static members directly
Joris Gillis

C++ includes: casadi_options.hpp ";


// File: classcasadi_1_1ClangCompiler.xml


// File: classcasadi_1_1CodeGenerator.xml
%feature("docstring")  casadi::CodeGenerator::addInclude(const std::string
&new_include, bool relative_path=false, const std::string
&use_ifdef=std::string()) "

Add an include file optionally using a relative path \"...\" instead of an
absolute path <...>

";

%feature("docstring") casadi::CodeGenerator "C++ includes:
code_generator.hpp ";

%feature("docstring")  casadi::CodeGenerator::compile(const std::string
&name, const std::string &compiler="gcc -fPIC -O2") "

Compile and load function.

";

%feature("docstring")  casadi::CodeGenerator::add(const Function &f) "

Add a function (name generated)

";

%feature("docstring")  casadi::CodeGenerator::add(const Function &f, const
std::string &fname) "

Add a function.

";

%feature("docstring") casadi::CodeGenerator::CodeGenerator(const Dict
&opts=Dict()) "

Constructor.

";

%feature("docstring")  casadi::CodeGenerator::generate(const std::string
&name) const  "

Generate a file.

";

%feature("docstring")  casadi::CodeGenerator::generate() const  "

Generate a file, return code as string.

";


// File: classcasadi_1_1CollocationIntegrator.xml


// File: classcasadi_1_1CommonExternal.xml


// File: classcasadi_1_1Compiler.xml


/*  Option Functionality  */ %feature("docstring")
casadi::Compiler::plugin_name() const  "

Query plugin name.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring") casadi::Compiler::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring") casadi::Compiler "

Compiler.

Just-in-time compilation of code

General information
===================



>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+

List of plugins
===============



- clang

- shell

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
Compiler.doc(\"myextraplugin\")



--------------------------------------------------------------------------------

clang
-----



Interface to the JIT compiler CLANG

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| flags           | OT_STRINGVECTOR | GenericType()   | Compile flags   |
|                 |                 |                 | for the JIT     |
|                 |                 |                 | compiler.       |
|                 |                 |                 | Default: None   |
+-----------------+-----------------+-----------------+-----------------+
| include_path    | OT_STRING       | \"\"              | Include paths   |
|                 |                 |                 | for the JIT     |
|                 |                 |                 | compiler. The   |
|                 |                 |                 | include         |
|                 |                 |                 | directory       |
|                 |                 |                 | shipped with    |
|                 |                 |                 | CasADi will be  |
|                 |                 |                 | automatically   |
|                 |                 |                 | appended.       |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

shell
-----



Interface to the JIT compiler SHELL

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| compiler        | OT_STRING       | \"gcc\"           | Compiler        |
|                 |                 |                 | command         |
+-----------------+-----------------+-----------------+-----------------+
| compiler_setup  | OT_STRING       | \"-fPIC -shared\" | Compiler setup  |
|                 |                 |                 | command.        |
|                 |                 |                 | Intended to be  |
|                 |                 |                 | fixed. The      |
|                 |                 |                 | 'flag' option   |
|                 |                 |                 | is the prefered |
|                 |                 |                 | way to set      |
|                 |                 |                 | custom flags.   |
+-----------------+-----------------+-----------------+-----------------+
| flags           | OT_STRINGVECTOR | GenericType()   | Compile flags   |
|                 |                 |                 | for the JIT     |
|                 |                 |                 | compiler.       |
|                 |                 |                 | Default: None   |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



Joris Gillis
Diagrams
--------



C++ includes: compiler.hpp ";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring") casadi::Compiler::Compiler() "

Default constructor.

";

%feature("docstring") casadi::Compiler::Compiler(const std::string &name,
const std::string &compiler, const Dict &opts=Dict()) "

Compiler factory (new syntax, includes initialization)

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";


// File: classcasadi_1_1Concat.xml


// File: classcasadi_1_1Constant.xml


// File: classcasadi_1_1ConstantDMatrix.xml


// File: classcasadi_1_1ConstantMX.xml


// File: classcasadi_1_1ConstantSX.xml


// File: classcasadi_1_1DaeBuilder.xml


/*  Variables and equations  */

/* Public data members

*/

/*  Symbolic modeling  */

/* Formulate an optimal control problem

*/

/*  Manipulation  */

/* Reformulate the dynamic optimization problem.

*/

/*  Import and export  */ %feature("docstring")
casadi::DaeBuilder::setMin(const std::string &name, double val, bool
normalized=false) "

Set the lower bound by name.

";

%feature("docstring")  casadi::DaeBuilder::setMin(const MX &var, const
std::vector< double > &val, bool normalized=false) "

Set the lower bound(s) by expression.

";

%feature("docstring")  casadi::DaeBuilder::add_s(const std::string
&name=std::string(), int n=1) "

Add a implicit state.

";

%feature("docstring")  casadi::DaeBuilder::derivativeStart(const std::string
&name, bool normalized=false) const  "

Get the (optionally normalized) derivative value at time 0 by name.

";

%feature("docstring")  casadi::DaeBuilder::derivativeStart(const MX &var,
bool normalized=false) const  "

Get the (optionally normalized) derivative value(s) at time 0 by expression.

";

%feature("docstring")  casadi::DaeBuilder::sanity_check() const  "

Check if dimensions match.

";

%feature("docstring") casadi::DaeBuilder::DaeBuilder() "

Default constructor.

";

%feature("docstring")  casadi::DaeBuilder::sort_dae() "

Sort the DAE and implicitly defined states.

";

%feature("docstring")  casadi::DaeBuilder::setStart(const std::string &name,
double val, bool normalized=false) "

Set the (optionally normalized) value at time 0 by name.

";

%feature("docstring")  casadi::DaeBuilder::setStart(const MX &var, const
std::vector< double > &val, bool normalized=false) "

Set the (optionally normalized) value(s) at time 0 by expression.

";

%feature("docstring")  casadi::DaeBuilder::min(const std::string &name, bool
normalized=false) const  "

Get the lower bound by name.

";

%feature("docstring")  casadi::DaeBuilder::min(const MX &var, bool
normalized=false) const  "

Get the lower bound(s) by expression.

";

%feature("docstring")  casadi::DaeBuilder::add_quad(const MX &new_quad,
const std::string &name=std::string()) "

Add a quadrature equation.

";

%feature("docstring")  casadi::DaeBuilder::nominal(const std::string &name)
const  "

Get the nominal value by name.

";

%feature("docstring")  casadi::DaeBuilder::nominal(const MX &var) const  "

Get the nominal value(s) by expression.

";

%feature("docstring")  casadi::DaeBuilder::max(const std::string &name, bool
normalized=false) const  "

Get the upper bound by name.

";

%feature("docstring")  casadi::DaeBuilder::max(const MX &var, bool
normalized=false) const  "

Get the upper bound(s) by expression.

";

%feature("docstring")  casadi::DaeBuilder::variable(const std::string &name)
"

Access a variable by name

";

%feature("docstring")  casadi::DaeBuilder::variable(const std::string &name)
const  "

Access a variable by name

";

%feature("docstring")  casadi::DaeBuilder::initialGuess(const std::string
&name, bool normalized=false) const  "

Get the initial guess by name.

";

%feature("docstring")  casadi::DaeBuilder::initialGuess(const MX &var, bool
normalized=false) const  "

Get the initial guess(es) by expression.

";

%feature("docstring")  casadi::PrintableObject< DaeBuilder
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::DaeBuilder::makeSemiExplicit() "

Transform the implicit DAE to a semi-explicit DAE.

";

%feature("docstring")  casadi::DaeBuilder::sort_d() "

Sort dependent parameters.

";

%feature("docstring")  casadi::DaeBuilder::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print description.

";

%feature("docstring")  casadi::DaeBuilder::sort_alg() "

Sort the algebraic equations and algebraic states.

";

%feature("docstring")  casadi::DaeBuilder::add_dae(const MX &new_dae, const
std::string &name=std::string()) "

Add a differential-algebraic equation.

";

%feature("docstring")  casadi::DaeBuilder::addVariable(const std::string
&name, const Variable &var) "

Add a variable.

";

%feature("docstring")  casadi::DaeBuilder::addVariable(const std::string
&name, int n=1) "

Add a new variable: returns corresponding symbolic expression.

";

%feature("docstring")  casadi::DaeBuilder::addVariable(const std::string
&name, const Sparsity &sp) "

Add a new variable: returns corresponding symbolic expression.

";

%feature("docstring")  casadi::DaeBuilder::setMax(const std::string &name,
double val, bool normalized=false) "

Set the upper bound by name.

";

%feature("docstring")  casadi::DaeBuilder::setMax(const MX &var, const
std::vector< double > &val, bool normalized=false) "

Set the upper bound(s) by expression.

";

%feature("docstring") casadi::DaeBuilder "

An initial-value problem in differential-algebraic equations.

Independent variables:
======================





::

  t:      time
  



Time-continuous variables:
==========================





::

  x:      states defined by ODE
  s:      implicitly defined states
  z:      algebraic variables
  u:      control signals
  q:      quadrature states
  y:      outputs
  



Time-constant variables:
========================





::

  p:      free parameters
  d:      dependent parameters
  



Dynamic constraints (imposed everywhere):
=========================================





::

  ODE                    \\\\dot{x} ==  ode(t, x, s, z, u, p, d)
  DAE or implicit ODE:         0 ==  dae(t, x, s, z, u, p, d, sdot)
  algebraic equations:         0 ==  alg(t, x, s, z, u, p, d)
  quadrature equations:  \\\\dot{q} == quad(t, x, s, z, u, p, d)
  deppendent parameters:       d == ddef(t, x, s, z, u, p, d)
  output equations:            y == ydef(t, x, s, z, u, p, d)
  



Point constraints (imposed pointwise):
======================================





::

  Initial equations:           0 == init(t, x, s, z, u, p, d, sdot)
  



Joel Andersson

C++ includes: dae_builder.hpp ";

%feature("docstring")  casadi::DaeBuilder::parseFMI(const std::string
&filename) "

Import existing problem from FMI/XML

";

%feature("docstring")  casadi::DaeBuilder::add_q(const std::string
&name=std::string(), int n=1) "

Add a new quadrature state.

";

%feature("docstring")  casadi::DaeBuilder::add_p(const std::string
&name=std::string(), int n=1) "

Add a new parameter

";

%feature("docstring")  casadi::DaeBuilder::add_u(const std::string
&name=std::string(), int n=1) "

Add a new control.

";

%feature("docstring")  casadi::DaeBuilder::setDerivativeStart(const
std::string &name, double val, bool normalized=false) "

Set the (optionally normalized) derivative value at time 0 by name.

";

%feature("docstring")  casadi::DaeBuilder::setDerivativeStart(const MX &var,
const std::vector< double > &val, bool normalized=false) "

Set the (optionally normalized) derivative value(s) at time 0 by expression.

";

%feature("docstring")  casadi::DaeBuilder::add_z(const std::string
&name=std::string(), int n=1) "

Add a new algebraic variable.

";

%feature("docstring")  casadi::DaeBuilder::add_y(const MX &new_ydef, const
std::string &name=std::string()) "

Add a new output.

";

%feature("docstring")  casadi::DaeBuilder::add_x(const std::string
&name=std::string(), int n=1) "

Add a new differential state.

";

%feature("docstring")  casadi::DaeBuilder::eliminate_quad() "

Eliminate quadrature states and turn them into ODE states.

";

%feature("docstring")  casadi::DaeBuilder::makeExplicit() "

Transform the implicit DAE or semi-explicit DAE into an explicit ODE.

";

%feature("docstring")  casadi::DaeBuilder::add_d(const MX &new_ddef, const
std::string &name=std::string()) "

Add a new dependent parameter.

";

%feature("docstring")  casadi::DaeBuilder::split_dae() "

Identify and separate the algebraic variables and equations in the DAE.

";

%feature("docstring")  casadi::DaeBuilder::addLinearCombination(const
std::string &name, const std::vector< std::string > &f_out) "

Add a named linear combination of output expressions.

";

%feature("docstring")  casadi::DaeBuilder::add_alg(const MX &new_alg, const
std::string &name=std::string()) "

Add an algebraic equation.

";

%feature("docstring")  casadi::DaeBuilder::scaleEquations() "

Scale the implicit equations.

";

%feature("docstring")  casadi::DaeBuilder::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print representation.

";

%feature("docstring")  casadi::DaeBuilder::create(const std::string &fname,
const std::vector< std::string > &s_in, const std::vector< std::string >
&s_out) const  "

Construct a function object.

";

%feature("docstring")  casadi::DaeBuilder::scaleVariables() "

Scale the variables.

";

%feature("docstring")  casadi::DaeBuilder::setInitialGuess(const std::string
&name, double val, bool normalized=false) "

Set the initial guess by name.

";

%feature("docstring")  casadi::DaeBuilder::setInitialGuess(const MX &var,
const std::vector< double > &val, bool normalized=false) "

Set the initial guess(es) by expression.

";

%feature("docstring")  casadi::DaeBuilder::eliminate_alg() "

Eliminate algebraic variables and equations transforming them into outputs.

";

%feature("docstring")  casadi::PrintableObject< DaeBuilder
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::DaeBuilder::unit(const std::string &name)
const  "

Get the unit for a component.

";

%feature("docstring")  casadi::DaeBuilder::unit(const MX &var) const  "

Get the unit given a vector of symbolic variables (all units must be
identical)

";

%feature("docstring")  casadi::DaeBuilder::start(const std::string &name,
bool normalized=false) const  "

Get the (optionally normalized) value at time 0 by name.

";

%feature("docstring")  casadi::DaeBuilder::start(const MX &var, bool
normalized=false) const  "

Get the (optionally normalized) value(s) at time 0 by expression.

";

%feature("docstring")  casadi::DaeBuilder::split_d() "

Eliminate interdependencies amongst dependent parameters.

";

%feature("docstring")  casadi::DaeBuilder::eliminate_d() "

Eliminate dependent parameters.

";

%feature("docstring")  casadi::DaeBuilder::der(const std::string &name)
const  "

Get a derivative expression by name.

";

%feature("docstring")  casadi::DaeBuilder::der(const MX &var) const  "

Get a derivative expression by non-differentiated expression.

";

%feature("docstring")  casadi::DaeBuilder::setNominal(const std::string
&name, double val) "

Set the nominal value by name.

";

%feature("docstring")  casadi::DaeBuilder::setNominal(const MX &var, const
std::vector< double > &val) "

Set the nominal value(s) by expression.

";

%feature("docstring")  casadi::DaeBuilder::setUnit(const std::string &name,
const std::string &val) "

Set the unit for a component.

";

%feature("docstring")  casadi::DaeBuilder::add_ode(const MX &new_ode, const
std::string &name=std::string()) "

Add an ordinary differential equation.

";


// File: classcasadi_1_1DenseMultiplication.xml


// File: classcasadi_1_1DenseTranspose.xml


// File: classcasadi_1_1Determinant.xml


// File: classcasadi_1_1Diagcat.xml


// File: classcasadi_1_1Diagsplit.xml


// File: classcasadi_1_1Find.xml


// File: classcasadi_1_1FixedStepIntegrator.xml


// File: classcasadi_1_1Function.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::SharedObject::repr(std::ostream &stream=casadi::userOut(), bool
trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring") casadi::Function::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring") casadi::Function::Function() "

default constructor

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring") casadi::Function::~Function "

Destructor.

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring") casadi::Function "

General function.

A general function $f$ in casadi can be multi-input, multi-output. Number of
inputs: nin n_in() Number of outputs: nout n_out()  We can view this
function as a being composed of a ( nin, nout) grid of single-input, single-
output primitive functions. Each such primitive function $f_ {i, j}
\\\\forall i \\\\in [0, nin-1], j \\\\in [0, nout-1]$ can map as $\\\\mathbf
{R}^{n, m}\\\\to\\\\mathbf{R}^{p, q}$, in which n, m, p, q can take
different values for every (i, j) pair.  When passing input, you specify
which partition $i$ is active. You pass the numbers vectorized, as a vector
of size $(n*m)$. When requesting output, you specify which partition $j$ is
active. You get the numbers vectorized, as a vector of size $(p*q)$.  To
calculate Jacobians, you need to have $(m=1, q=1)$.

Write the Jacobian as $J_ {i, j} = \\\\nabla f_{i, j} = \\\\frac
{\\\\partial f_{i, j}(\\\\vec{x})}{\\\\partial \\\\vec{x}}$.

We have the following relationships for function mapping from a row vector
to a row vector:

$ \\\\vec {s}_f = \\\\nabla f_{i, j} . \\\\vec{v}$ $ \\\\vec {s}_a =
(\\\\nabla f_{i, j})^T . \\\\vec{w}$

Some quantities in these formulas must be transposed: input col: transpose $
\\\\vec {v} $ and $\\\\vec{s}_a$ output col: transpose $ \\\\vec {w} $ and
$\\\\vec{s}_f$  NOTE: Functions are allowed to modify their input arguments
when evaluating: implicitFunction, IDAS solver Further releases may disallow
this.

Joel Andersson

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp |              |
|              |              |              | uts)         |              |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+

>List of available monitors

+---------+--------------------------+
|   Id    |         Used in          |
+=========+==========================+
| inputs  | casadi::FunctionInternal |
+---------+--------------------------+
| outputs | casadi::FunctionInternal |
+---------+--------------------------+

Diagrams
--------



C++ includes: function.hpp ";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";


// File: classcasadi_1_1GenericCall.xml


// File: classcasadi_1_1GenericExpression.xml
%feature("docstring")  floor(const ExType &x) "

Round down to nearest integer.

";

%feature("docstring")  acos(const ExType &x) "

Arc cosine.

";

%feature("docstring")  copysign(const ExType &x, const ExType &n) "

Copy sign.

";

%feature("docstring")  exp(const ExType &x) "

Exponential function.

";

%feature("docstring")  ceil(const ExType &x) "

Round up to nearest integer.

";

%feature("docstring")  cos(const ExType &x) "

Cosine.

";

%feature("docstring")  asinh(const ExType &x) "

Inverse hyperbolic sine.

";

%feature("docstring")  atanh(const ExType &x) "

Inverse hyperbolic tangent.

";

%feature("docstring")  iszero(const ExType &x) "

Addition.

";

%feature("docstring")  tan(const ExType &x) "

Tangent.

";

%feature("docstring")  acosh(const ExType &x) "

Inverse hyperbolic cosine.

";

%feature("docstring")  erfinv(const ExType &x) "

Invers error function.

";

%feature("docstring")  fmod(const ExType &x, const ExType &y) "

Remainder after division.

";

%feature("docstring")  log(const ExType &x) "

Natural logarithm.

";

%feature("docstring")  log10(const ExType &x) "

Base-10 logarithm.

";

%feature("docstring")  constpow(const ExType &x, const ExType &n) "

Elementwise power with const power.

";

%feature("docstring")  abs(const ExType &x) "

Absolute value.

";

%feature("docstring")  fmax(const ExType &x, const ExType &y) "

Largest of two values.

";

%feature("docstring")  sqrt(const ExType &x) "

Square root.

";

%feature("docstring")  sign(const ExType &x) "

Sine function sign(x) := -1 for x<0 sign(x) := 1 for x>0, sign(0) := 0
sign(NaN) := NaN

";

%feature("docstring")  logic_and(const ExType &x, const ExType &y) "

Logical and, alternative syntax.

";

%feature("docstring")  fmin(const ExType &x, const ExType &y) "

Smallest of two values.

";

%feature("docstring")  erf(const ExType &x) "

Error function.

";

%feature("docstring")  pow(const ExType &x, const ExType &n) "

Elementwise power.

";

%feature("docstring")  atan2(const ExType &x, const ExType &y) "

Two argument arc tangent.

";

%feature("docstring")  logic_or(const ExType &x, const ExType &y) "

Logical or, alterntive syntax.

";

%feature("docstring")  fabs(const ExType &x) "

Absolute value.

";

%feature("docstring")  simplify(const ExType &x) "

Simplify an expression.

";

%feature("docstring")  sinh(const ExType &x) "

Hyperbolic sine.

";

%feature("docstring")  tanh(const ExType &x) "

Hyperbolic tangent.

";

%feature("docstring")  cosh(const ExType &x) "

Hyperbolic cosine.

";

%feature("docstring")  logic_not(const ExType &x) "

Logical not, alternative syntax.

";

%feature("docstring")  atan(const ExType &x) "

Arc tangent.

";

%feature("docstring") casadi::GenericExpression "

Expression interface.

This is a common base class for SX, MX and Matrix<>, introducing a uniform
syntax and implementing common functionality using the curiously recurring
template pattern (CRTP) idiom. Joel Andersson

C++ includes: generic_expression.hpp ";

%feature("docstring")  is_equal(const ExType &x, const ExType &y, int
depth=0) "

Check if two nodes are equivalent up to a given depth. Depth=0 checks if the
expressions are identical, i.e. points to the same node.

a = x*x b = x*x

a.is_equal(b, 0) will return false, but a.is_equal(b, 1) will return true

";

%feature("docstring")  sin(const ExType &x) "

Sine.

";

%feature("docstring")  asin(const ExType &x) "

Arc sine.

";


// File: classcasadi_1_1GenericExternal.xml


// File: classcasadi_1_1GenericMatrix.xml


/*  Construct symbolic primitives  */

/* The \"sym\" function is intended to work in a similar way as \"sym\" used
in the Symbolic Toolbox for Matlab but instead creating a CasADi symbolic
primitive.

*/ %feature("docstring")  sumRows(const MatType &x) "

Return a row-wise summation of elements.

";

%feature("docstring")  substitute(const MatType &ex, const MatType &v, const
MatType &vdef) "

Substitute variable v with expression vdef in an expression ex.

";

%feature("docstring")  substitute(const std::vector< MatType > &ex, const
std::vector< MatType > &v, const std::vector< MatType > &vdef) "

Substitute variable var with expression expr in multiple expressions.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::numel() const  "

Get the number of elements.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::numel(int i) const
"

Get the number of elements in slice (cf. MATLAB)

";

%feature("docstring")  norm_inf(const MatType &x) "

Infinity-norm.

";

%feature("docstring")  pinv(const MatType &A) "

Computes the Moore-Penrose pseudo-inverse.

If the matrix A is fat (size1<size2), mul(A, pinv(A)) is unity.

pinv(A)' = (AA')^(-1) A

If the matrix A is slender (size1>size2), mul(pinv(A), A) is unity.

pinv(A) = (A'A)^(-1) A'

";

%feature("docstring")  pinv(const MatType &A, const std::string &lsolver,
const Dict &dict=Dict()) "

Computes the Moore-Penrose pseudo-inverse.

If the matrix A is fat (size1>size2), mul(A, pinv(A)) is unity. If the
matrix A is slender (size2<size1), mul(pinv(A), A) is unity.

";

%feature("docstring")  countNodes(const MatType &A) "

Count number of nodes

";

%feature("docstring")  hessian(const MatType &ex, const MatType &arg) " ";

%feature("docstring")  hessian(const MatType &ex, const MatType &arg,
MatType &output_g) " ";

%feature("docstring")  trace(const MatType &a) "

Matrix trace.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::nnz_lower() const
"

Get the number of non-zeros in the lower triangular half.

";

%feature("docstring")  mldivide(const MatType &x, const MatType &n) "

Matrix divide (cf. backslash '\\\\' in MATLAB)

";

%feature("docstring")  inner_prod(const MatType &x, const MatType &y) "

Inner product of two matrices with x and y matrices of the same dimension.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::get_colind() const
"

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  cross(const MatType &a, const MatType &b, int dim=-1)
"

Matlab's cross command.

";

%feature("docstring")  tril2symm(const MatType &a) "

Convert a lower triangular matrix to a symmetric one.

";

%feature("docstring")  substituteInPlace(const std::vector< MatType > &v,
std::vector< MatType > &inout_vdef, std::vector< MatType > &inout_ex, bool
reverse=false) "

Inplace substitution with piggyback expressions Substitute variables v out
of the expressions vdef sequentially, as well as out of a number of other
expressions piggyback.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::issquare() const  "

Check if the matrix expression is square.

";

%feature("docstring")  quad_form(const MatType &X, const MatType &A) "

Calculate quadratic form X^T A X.

";

%feature("docstring")  quad_form(const MatType &X) "

Calculate quadratic form X^T X.

";

%feature("docstring")  det(const MatType &A) "

Matrix determinant (experimental)

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sparsity() const  "

Get the sparsity pattern.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::size2() const  "

Get the second dimension (i.e. number of columns)

";

%feature("docstring")  dependsOn(const MatType &f, const MatType &arg) "

Check if expression depends on the argument The argument must be symbolic.

";

%feature("docstring")  mpower(const MatType &x, const MatType &n) "

Matrix power x^n.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::nnz() const  "

Get the number of (structural) non-zero elements.

";

%feature("docstring")  norm_F(const MatType &x) "

Frobenius norm.

";

%feature("docstring")  repsum(const MatType &A, int n, int m=1) "

Given a repeated matrix, computes the sum of repeated parts.

";

%feature("docstring")  getOperatorRepresentation(const MatType &xb, const
std::vector< std::string > &args) "

Get a string representation for a binary MatType, using custom arguments.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::colind(int col)
const  "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::nnz_diag() const  "

Get get the number of non-zeros on the diagonal.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::isempty(bool
both=false) const  "

Check if the sparsity is empty, i.e. if one of the dimensions is zero (or
optionally both dimensions)

";

%feature("docstring")  casadi::GenericMatrix< MatType >::size() const  "

Get the shape.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::size(int axis)
const  "

Get the size along a particular dimensions.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::iscolumn() const  "

Check if the matrix is a column vector (i.e. size2()==1)

";

%feature("docstring") casadi::GenericMatrix "

Matrix base class.

This is a common base class for MX and Matrix<>, introducing a uniform
syntax and implementing common functionality using the curiously recurring
template pattern (CRTP) idiom.  The class is designed with the idea that
\"everything is a matrix\", that is, also scalars and vectors. This
philosophy makes it easy to use and to interface in particularly with Python
and Matlab/Octave.  The syntax tries to stay as close as possible to the
ublas syntax when it comes to vector/matrix operations.  Index starts with
0. Index vec happens as follows: (rr, cc) -> k = rr+cc*size1() Vectors are
column vectors.  The storage format is Compressed Column Storage (CCS),
similar to that used for sparse matrices in Matlab, but unlike this format,
we do allow for elements to be structurally non-zero but numerically zero.
The sparsity pattern, which is reference counted and cached, can be accessed
with Sparsity& sparsity() Joel Andersson

C++ includes: generic_matrix.hpp ";

%feature("docstring")  tangent(const MatType &ex, const MatType &arg) "

Matrix power x^n.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::find(bool
ind1=false) const  "

Get the location of all non-zero elements as they would appear in a Dense
matrix A : DenseMatrix 4 x 3 B : SparseMatrix 4 x 3 , 5 structural non-
zeros.

k = A.find() A[k] will contain the elements of A that are non-zero in B

";

%feature("docstring")  polyval(const MatType &p, const MatType &x) "

Evaluate a polynomial with coefficients p in x.

";

%feature("docstring")  triu2symm(const MatType &a) "

Convert a upper triangular matrix to a symmetric one.

";

%feature("docstring")  outer_prod(const MatType &x, const MatType &y) "

Take the outer product of two vectors Equals.

with x and y vectors

";

%feature("docstring")  symvar(const MatType &x) "

Get all symbols contained in the supplied expression Get all symbols on
which the supplied expression depends.

See:  SXFunction::getFree(), MXFunction::getFree()

";

%feature("docstring")  sum_square(const MatType &X) "

Calculate some of squares: sum_ij X_ij^2.

";

%feature("docstring")  solve(const MatType &A, const MatType &b) "

Solve a system of equations: A*x = b The solve routine works similar to
Matlab's backslash when A is square and nonsingular. The algorithm used is
the following:

A simple forward or backward substitution if A is upper or lower triangular

If the linear system is at most 3-by-3, form the inverse via minor expansion
and multiply

Permute the variables and equations as to get a (structurally) nonzero
diagonal, then perform a QR factorization without pivoting and solve the
factorized system.

Note 1: If there are entries of the linear system known to be zero, these
will be removed. Elements that are very small, or will evaluate to be zero,
can still cause numerical errors, due to the lack of pivoting (which is not
possible since cannot compare the size of entries)

Note 2: When permuting the linear system, a BLT (block lower triangular)
transformation is formed. Only the permutation part of this is however used.
An improvement would be to solve block-by-block if there are multiple BLT
blocks.

";

%feature("docstring")  solve(const MatType &A, const MatType &b, const
std::string &lsolver, const Dict &dict=Dict()) "

Solve a system of equations: A*x = b.

";

%feature("docstring")  unite(const MatType &A, const MatType &B) "

Unite two matrices no overlapping sparsity.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::get_row() const  "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  gradient(const MatType &ex, const MatType &arg) "

Matrix power x^n.

";

%feature("docstring")  sumCols(const MatType &x) "

Return a col-wise summation of elements.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::nnz_upper() const
"

Get the number of non-zeros in the upper triangular half.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::isvector() const  "

Check if the matrix is a row or column vector.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::isrow() const  "

Check if the matrix is a row vector (i.e. size1()==1)

";

%feature("docstring")  inv(const MatType &A) "

Matrix inverse (experimental)

";

%feature("docstring")  mrdivide(const MatType &x, const MatType &n) "

Matrix divide (cf. slash '/' in MATLAB)

";

%feature("docstring")  jacobian(const MatType &ex, const MatType &arg) "

Calculate jacobian via source code transformation.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::zeros(int nrow=1,
int ncol=1) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::zeros(const
Sparsity &sp) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::zeros(const
std::pair< int, int > &rc) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  conditional(const MatType &ind, const std::vector<
MatType > &x, const MatType &x_default, bool short_circuit=true) "

Create a switch.

If the condition

Parameters:
-----------

ind:  evaluates to the integer k, where 0<=k<f.size(), then x[k] will be
returned, otherwise

x_default:  will be returned.

";

%feature("docstring")  norm_1(const MatType &x) "

1-norm

";

%feature("docstring")  nullspace(const MatType &A) "

Computes the nullspace of a matrix A.

Finds Z m-by-(m-n) such that AZ = 0 with A n-by-m with m > n

Assumes A is full rank

Inspired by Numerical Methods in Scientific Computing by Ake Bjorck

";

%feature("docstring")  norm_2(const MatType &x) "

2-norm

";

%feature("docstring")  if_else(const MatType &cond, const MatType &if_true,
const MatType &if_false, bool short_circuit=true) "

Branching on MX nodes Ternary operator, \"cond ? if_true : if_false\".

";

%feature("docstring")  diag(const MatType &A) "

Get the diagonal of a matrix or construct a diagonal When the input is
square, the diagonal elements are returned. If the input is vector- like, a
diagonal matrix is constructed with it.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::isdense() const  "

Check if the matrix expression is dense.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::isscalar(bool
scalar_and_dense=false) const  "

Check if the matrix expression is scalar.

";

%feature("docstring")  linspace(const MatType &a, const MatType &b, int
nsteps) "

Matlab's linspace command.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::dim() const  "

Get string representation of dimensions. The representation is (nrow x ncol
= numel | size)

";

%feature("docstring")  densify(const MatType &x) "

Make the matrix dense if not already.

";

%feature("docstring")  densify(const MatType &x, const MatType &val) "

Make the matrix dense and assign nonzeros to a value.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, int nrow=1, int ncol=1) "

Create an nrow-by-ncol symbolic primitive.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, const std::pair< int, int > &rc) "

Construct a symbolic primitive with given dimensions.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, const Sparsity &sp) "

Create symbolic primitive with a given sparsity pattern.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, const Sparsity &sp, int p) "

Create a vector of length p with with matrices with symbolic primitives of
given sparsity.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, int nrow, int ncol, int p) "

Create a vector of length p with nrow-by-ncol symbolic primitives.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, const Sparsity &sp, int p, int r) "

Create a vector of length r of vectors of length p with symbolic primitives
with given sparsity.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::sym(const
std::string &name, int nrow, int ncol, int p, int r) "

Create a vector of length r of vectors of length p with nrow-by-ncol
symbolic primitives.

";

%feature("docstring")  casadi::GenericMatrix< SX >::sym(const std::string
&name, const Sparsity &sp) " [INTERNAL] ";

%feature("docstring")  casadi::GenericMatrix< MX >::sym(const std::string
&name, const Sparsity &sp) " ";

%feature("docstring")  casadi::GenericMatrix< MatType >::istril() const  "

Check if the matrix is lower triangular.

";

%feature("docstring")  project(const MatType &A, const Sparsity &sp, bool
intersect=false) "

Create a new matrix with a given sparsity pattern but with the nonzeros
taken from an existing matrix.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::row(int el) const
"

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  extractShared(std::vector< MatType > &ex,
std::vector< MatType > &v, std::vector< MatType > &vdef, const std::string
&v_prefix="v_", const std::string &v_suffix="") "

Extract shared subexpressions from an set of expressions.

";

%feature("docstring")  extractShared(const std::vector< MatType > &ex,
std::vector< MatType > &ex_output, std::vector< MatType > &v, std::vector<
MatType > &vdef, const std::string &v_prefix="v_", const std::string
&v_suffix="") "

Extract shared subexpressions from an set of expressions.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::ones(int nrow=1,
int ncol=1) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::ones(const Sparsity
&sp) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::ones(const
std::pair< int, int > &rc) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::istriu() const  "

Check if the matrix is upper triangular.

";

%feature("docstring")  casadi::GenericMatrix< MatType >::size1() const  "

Get the first dimension (i.e. number of rows)

";


// File: classcasadi_1_1GenericType.xml
%feature("docstring") casadi::GenericType "

Generic data type, can hold different types such as bool, int, string etc.

Joel Andersson

C++ includes: generic_type.hpp ";


// File: classcasadi_1_1GenericTypeBase.xml


// File: classcasadi_1_1GetNonzeros.xml


// File: classcasadi_1_1GetNonzerosSlice.xml


// File: classcasadi_1_1GetNonzerosSlice2.xml


// File: classcasadi_1_1GetNonzerosVector.xml


// File: classcasadi_1_1Horzcat.xml


// File: classcasadi_1_1HorzRepmat.xml


// File: classcasadi_1_1HorzRepsum.xml


// File: classcasadi_1_1Horzsplit.xml


// File: classcasadi_1_1ImplicitFixedStepIntegrator.xml


// File: classcasadi_1_1InfSX.xml


// File: classcasadi_1_1InnerProd.xml


// File: classcasadi_1_1IntegerSX.xml


// File: classcasadi_1_1Integrator.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring") casadi::Integrator::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring") casadi::Integrator::Integrator() "

Default constructor.

";

%feature("docstring") casadi::Integrator::Integrator(const std::string
&name, const std::string &solver, const Function &f, const Dict
&opts=Dict()) "

Integrator factory (new syntax, includes initialization)

Parameters:
-----------

solver:

Name of a solver. It might be one of:

- cvodes

- idas

- collocation

- oldcollocation

- rk

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
Integrator.doc(\"myextraplugin\")

f:  dynamical system

>Input scheme: casadi::DAEInput (DAE_NUM_IN = 4) [daeIn]

+-----------+-------+----------------------------+
| Full name | Short |        Description         |
+===========+=======+============================+
| DAE_X     | x     | Differential state .       |
+-----------+-------+----------------------------+
| DAE_Z     | z     | Algebraic state .          |
+-----------+-------+----------------------------+
| DAE_P     | p     | Parameter .                |
+-----------+-------+----------------------------+
| DAE_T     | t     | Explicit time dependence . |
+-----------+-------+----------------------------+

>Output scheme: casadi::DAEOutput (DAE_NUM_OUT = 3) [daeOut]

+-----------+-------+--------------------------------------------+
| Full name | Short |                Description                 |
+===========+=======+============================================+
| DAE_ODE   | ode   | Right hand side of the implicit ODE .      |
+-----------+-------+--------------------------------------------+
| DAE_ALG   | alg   | Right hand side of algebraic equations .   |
+-----------+-------+--------------------------------------------+
| DAE_QUAD  | quad  | Right hand side of quadratures equations . |
+-----------+-------+--------------------------------------------+

";

%feature("docstring") casadi::Integrator::Integrator(const std::string
&name, const std::string &solver, const std::pair< Function, Function > &fg,
const Dict &opts=Dict()) " ";

%feature("docstring") casadi::Integrator::Integrator(const std::string
&name, const std::string &solver, const SXDict &dae, const Dict
&opts=Dict()) " ";

%feature("docstring") casadi::Integrator::Integrator(const std::string
&name, const std::string &solver, const MXDict &dae, const Dict
&opts=Dict()) " ";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring") casadi::Integrator "

Base class for integrators.

Integrator abstract base class

Solves an initial value problem (IVP) coupled to a terminal value problem
with differential equation given as an implicit ODE coupled to an algebraic
equation and a set of quadratures:

::

   Initial conditions at t=t0
   x(t0)  = x0
   q(t0)  = 0
  
   Forward integration from t=t0 to t=tf
   der(x) = function(x, z, p, t)                  Forward ODE
   0 = fz(x, z, p, t)                  Forward algebraic equations
   der(q) = fq(x, z, p, t)                  Forward quadratures
  
   Terminal conditions at t=tf
   rx(tf)  = rx0
   rq(tf)  = 0
  
   Backward integration from t=tf to t=t0
   der(rx) = gx(rx, rz, rp, x, z, p, t)        Backward ODE
   0 = gz(rx, rz, rp, x, z, p, t)        Backward algebraic equations
   der(rq) = gq(rx, rz, rp, x, z, p, t)        Backward quadratures
  
   where we assume that both the forward and backwards integrations are index-1
   (i.e. dfz/dz, dgz/drz are invertible) and furthermore that
   gx, gz and gq have a linear dependency on rx, rz and rp.



The Integrator class provides some additional functionality, such as getting
the value of the state and/or sensitivities at certain time points.

General information
===================



>Input scheme: casadi::IntegratorInput (INTEGRATOR_NUM_IN = 6) [integratorIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| INTEGRATOR_X0          | x0                     | Differential state at  |
|                        |                        | the initial time .     |
+------------------------+------------------------+------------------------+
| INTEGRATOR_P           | p                      | Parameters .           |
+------------------------+------------------------+------------------------+
| INTEGRATOR_Z0          | z0                     | Initial guess for the  |
|                        |                        | algebraic variable .   |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RX0         | rx0                    | Backward differential  |
|                        |                        | state at the final     |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RP          | rp                     | Backward parameter     |
|                        |                        | vector .               |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RZ0         | rz0                    | Initial guess for the  |
|                        |                        | backwards algebraic    |
|                        |                        | variable .             |
+------------------------+------------------------+------------------------+

>Output scheme: casadi::IntegratorOutput (INTEGRATOR_NUM_OUT = 6) [integratorOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| INTEGRATOR_XF          | xf                     | Differential state at  |
|                        |                        | the final time .       |
+------------------------+------------------------+------------------------+
| INTEGRATOR_QF          | qf                     | Quadrature state at    |
|                        |                        | the final time .       |
+------------------------+------------------------+------------------------+
| INTEGRATOR_ZF          | zf                     | Algebraic variable at  |
|                        |                        | the final time .       |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RXF         | rxf                    | Backward differential  |
|                        |                        | state at the initial   |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RQF         | rqf                    | Backward quadrature    |
|                        |                        | state at the initial   |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RZF         | rzf                    | Backward algebraic     |
|                        |                        | variable at the        |
|                        |                        | initial time .         |
+------------------------+------------------------+------------------------+

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| augmented_op | OT_DICT      | GenericType( | Options to   | casadi::Inte |
| tions        |              | )            | be passed    | gratorIntern |
|              |              |              | down to the  | al           |
|              |              |              | augmented    |              |
|              |              |              | integrator,  |              |
|              |              |              | if one is    |              |
|              |              |              | constructed. |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+
| expand_augme | OT_BOOLEAN   | true         | If DAE       | casadi::Inte |
| nted         |              |              | callback     | gratorIntern |
|              |              |              | functions    | al           |
|              |              |              | are          |              |
|              |              |              | SXFunction,  |              |
|              |              |              | have         |              |
|              |              |              | augmented    |              |
|              |              |              | DAE callback |              |
|              |              |              | function     |              |
|              |              |              | also be      |              |
|              |              |              | SXFunction.  |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp |              |
|              |              |              | uts)         |              |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| print_stats  | OT_BOOLEAN   | false        | Print out    | casadi::Inte |
|              |              |              | statistics   | gratorIntern |
|              |              |              | after        | al           |
|              |              |              | integration  |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| t0           | OT_REAL      | 0            | Beginning of | casadi::Inte |
|              |              |              | the time     | gratorIntern |
|              |              |              | horizon      | al           |
+--------------+--------------+--------------+--------------+--------------+
| tf           | OT_REAL      | 1            | End of the   | casadi::Inte |
|              |              |              | time horizon | gratorIntern |
|              |              |              |              | al           |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+

List of plugins
===============



- cvodes

- idas

- collocation

- oldcollocation

- rk

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
Integrator.doc(\"myextraplugin\")



--------------------------------------------------------------------------------

cvodes
------



Interface to CVodes from the Sundials suite.

A call to evaluate will integrate to the end.

You can retrieve the entire state trajectory as follows, after the evaluate
call: Call reset. Then call integrate(t_i) and getOuput for a series of
times t_i.

Note: depending on the dimension and structure of your problem, you may
experience a dramatic speed-up by using a sparse linear solver:



::

     intg.setOption(\"linear_solver\",\"csparse\")
     intg.setOption(\"linear_solver_type\",\"user_defined\")



>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| abstol          | OT_REAL         | 0.000           | Absolute        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the IVP         |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| abstolB         | OT_REAL         | GenericType()   | Absolute        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the adjoint     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to abstol]      |
+-----------------+-----------------+-----------------+-----------------+
| disable_interna | OT_BOOLEAN      | false           | Disable CVodes  |
| l_warnings      |                 |                 | internal        |
|                 |                 |                 | warning         |
|                 |                 |                 | messages        |
+-----------------+-----------------+-----------------+-----------------+
| exact_jacobian  | OT_BOOLEAN      | true            | Use exact       |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | information for |
|                 |                 |                 | the forward     |
|                 |                 |                 | integration     |
+-----------------+-----------------+-----------------+-----------------+
| exact_jacobianB | OT_BOOLEAN      | GenericType()   | Use exact       |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | information for |
|                 |                 |                 | the backward    |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to              |
|                 |                 |                 | exact_jacobian] |
+-----------------+-----------------+-----------------+-----------------+
| finite_differen | OT_BOOLEAN      | false           | Use finite      |
| ce_fsens        |                 |                 | differences to  |
|                 |                 |                 | approximate the |
|                 |                 |                 | forward         |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | equations (if   |
|                 |                 |                 | AD is not       |
|                 |                 |                 | available)      |
+-----------------+-----------------+-----------------+-----------------+
| fsens_abstol    | OT_REAL         | GenericType()   | Absolute        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the forward     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to abstol]      |
+-----------------+-----------------+-----------------+-----------------+
| fsens_all_at_on | OT_BOOLEAN      | true            | Calculate all   |
| ce              |                 |                 | right hand      |
|                 |                 |                 | sides of the    |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | equations at    |
|                 |                 |                 | once            |
+-----------------+-----------------+-----------------+-----------------+
| fsens_err_con   | OT_BOOLEAN      | true            | include the     |
|                 |                 |                 | forward         |
|                 |                 |                 | sensitivities   |
|                 |                 |                 | in all error    |
|                 |                 |                 | controls        |
+-----------------+-----------------+-----------------+-----------------+
| fsens_reltol    | OT_REAL         | GenericType()   | Relative        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the forward     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to reltol]      |
+-----------------+-----------------+-----------------+-----------------+
| fsens_scaling_f | OT_REALVECTOR   | GenericType()   | Scaling factor  |
| actors          |                 |                 | for the         |
|                 |                 |                 | components if   |
|                 |                 |                 | finite          |
|                 |                 |                 | differences is  |
|                 |                 |                 | used            |
+-----------------+-----------------+-----------------+-----------------+
| fsens_sensitivi | OT_INTEGERVECTO | GenericType()   | Specifies which |
| y_parameters    | R               |                 | components will |
|                 |                 |                 | be used when    |
|                 |                 |                 | estimating the  |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | equations       |
+-----------------+-----------------+-----------------+-----------------+
| interpolation_t | OT_STRING       | \"hermite\"       | Type of         |
| ype             |                 |                 | interpolation   |
|                 |                 |                 | for the adjoint |
|                 |                 |                 | sensitivities ( |
|                 |                 |                 | hermite|polynom |
|                 |                 |                 | ial)            |
+-----------------+-----------------+-----------------+-----------------+
| iterative_solve | OT_STRING       | \"gmres\"         | (gmres|bcgstab| |
| r               |                 |                 | tfqmr)          |
+-----------------+-----------------+-----------------+-----------------+
| iterative_solve | OT_STRING       | GenericType()   | (gmres|bcgstab| |
| rB              |                 |                 | tfqmr)          |
+-----------------+-----------------+-----------------+-----------------+
| linear_multiste | OT_STRING       | \"bdf\"           | Integrator      |
| p_method        |                 |                 | scheme          |
|                 |                 |                 | (bdf|adams)     |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver   | OT_STRING       | GenericType()   | A custom linear |
|                 |                 |                 | solver creator  |
|                 |                 |                 | function        |
+-----------------+-----------------+-----------------+-----------------+
| linear_solverB  | OT_STRING       | GenericType()   | A custom linear |
|                 |                 |                 | solver creator  |
|                 |                 |                 | function for    |
|                 |                 |                 | backwards       |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to              |
|                 |                 |                 | linear_solver]  |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_o | OT_DICT         | GenericType()   | Options to be   |
| ptions          |                 |                 | passed to the   |
|                 |                 |                 | linear solver   |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_o | OT_DICT         | GenericType()   | Options to be   |
| ptionsB         |                 |                 | passed to the   |
|                 |                 |                 | linear solver   |
|                 |                 |                 | for backwards   |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to linear_solve |
|                 |                 |                 | r_options]      |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_t | OT_STRING       | \"dense\"         | (user_defined|d |
| ype             |                 |                 | ense|banded|ite |
|                 |                 |                 | rative)         |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_t | OT_STRING       | GenericType()   | (user_defined|d |
| ypeB            |                 |                 | ense|banded|ite |
|                 |                 |                 | rative)         |
+-----------------+-----------------+-----------------+-----------------+
| lower_bandwidth | OT_INTEGER      | GenericType()   | Lower band-     |
|                 |                 |                 | width of banded |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | (estimations)   |
+-----------------+-----------------+-----------------+-----------------+
| lower_bandwidth | OT_INTEGER      | GenericType()   | lower band-     |
| B               |                 |                 | width of banded |
|                 |                 |                 | jacobians for   |
|                 |                 |                 | backward        |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to lower_bandwi |
|                 |                 |                 | dth]            |
+-----------------+-----------------+-----------------+-----------------+
| max_krylov      | OT_INTEGER      | 10              | Maximum Krylov  |
|                 |                 |                 | subspace size   |
+-----------------+-----------------+-----------------+-----------------+
| max_krylovB     | OT_INTEGER      | GenericType()   | Maximum krylov  |
|                 |                 |                 | subspace size   |
+-----------------+-----------------+-----------------+-----------------+
| max_multistep_o | OT_INTEGER      | 5               |                 |
| rder            |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| max_num_steps   | OT_INTEGER      | 10000           | Maximum number  |
|                 |                 |                 | of integrator   |
|                 |                 |                 | steps           |
+-----------------+-----------------+-----------------+-----------------+
| nonlinear_solve | OT_STRING       | \"newton\"        | (newton|functio |
| r_iteration     |                 |                 | nal)            |
+-----------------+-----------------+-----------------+-----------------+
| pretype         | OT_STRING       | \"none\"          | (none|left|righ |
|                 |                 |                 | t|both)         |
+-----------------+-----------------+-----------------+-----------------+
| pretypeB        | OT_STRING       | GenericType()   | (none|left|righ |
|                 |                 |                 | t|both)         |
+-----------------+-----------------+-----------------+-----------------+
| quad_err_con    | OT_BOOLEAN      | false           | Should the      |
|                 |                 |                 | quadratures     |
|                 |                 |                 | affect the step |
|                 |                 |                 | size control    |
+-----------------+-----------------+-----------------+-----------------+
| reltol          | OT_REAL         | 0.000           | Relative        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the IVP         |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| reltolB         | OT_REAL         | GenericType()   | Relative        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the adjoint     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to reltol]      |
+-----------------+-----------------+-----------------+-----------------+
| sensitivity_met | OT_STRING       | \"simultaneous\"  | (simultaneous|s |
| hod             |                 |                 | taggered)       |
+-----------------+-----------------+-----------------+-----------------+
| steps_per_check | OT_INTEGER      | 20              | Number of steps |
| point           |                 |                 | between two     |
|                 |                 |                 | consecutive     |
|                 |                 |                 | checkpoints     |
+-----------------+-----------------+-----------------+-----------------+
| stop_at_end     | OT_BOOLEAN      | true            | Stop the        |
|                 |                 |                 | integrator at   |
|                 |                 |                 | the end of the  |
|                 |                 |                 | interval        |
+-----------------+-----------------+-----------------+-----------------+
| upper_bandwidth | OT_INTEGER      | GenericType()   | Upper band-     |
|                 |                 |                 | width of banded |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | (estimations)   |
+-----------------+-----------------+-----------------+-----------------+
| upper_bandwidth | OT_INTEGER      | GenericType()   | Upper band-     |
| B               |                 |                 | width of banded |
|                 |                 |                 | jacobians for   |
|                 |                 |                 | backward        |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to upper_bandwi |
|                 |                 |                 | dth]            |
+-----------------+-----------------+-----------------+-----------------+
| use_preconditio | OT_BOOLEAN      | false           | Precondition an |
| ner             |                 |                 | iterative       |
|                 |                 |                 | solver          |
+-----------------+-----------------+-----------------+-----------------+
| use_preconditio | OT_BOOLEAN      | GenericType()   | Precondition an |
| nerB            |                 |                 | iterative       |
|                 |                 |                 | solver for the  |
|                 |                 |                 | backwards       |
|                 |                 |                 | problem         |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to use_precondi |
|                 |                 |                 | tioner]         |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+---------+
|   Id    |
+=========+
| djacB   |
+---------+
| psetupB |
+---------+
| res     |
+---------+
| resB    |
+---------+
| resQB   |
+---------+
| reset   |
+---------+

>List of available stats

+-------------+
|     Id      |
+=============+
| nlinsetups  |
+-------------+
| nlinsetupsB |
+-------------+
| nsteps      |
+-------------+
| nstepsB     |
+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

idas
----



Interface to IDAS from the Sundials suite.

Note: depending on the dimension and structure of your problem, you may
experience a dramatic speed-up by using a sparse linear solver:



::

     intg.setOption(\"linear_solver\",\"csparse\")
     intg.setOption(\"linear_solver_type\",\"user_defined\")



>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| abstol          | OT_REAL         | 0.000           | Absolute        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the IVP         |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| abstolB         | OT_REAL         | GenericType()   | Absolute        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the adjoint     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to abstol]      |
+-----------------+-----------------+-----------------+-----------------+
| abstolv         | OT_REALVECTOR   |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| calc_ic         | OT_BOOLEAN      | true            | Use IDACalcIC   |
|                 |                 |                 | to get          |
|                 |                 |                 | consistent      |
|                 |                 |                 | initial         |
|                 |                 |                 | conditions.     |
+-----------------+-----------------+-----------------+-----------------+
| calc_icB        | OT_BOOLEAN      | GenericType()   | Use IDACalcIC   |
|                 |                 |                 | to get          |
|                 |                 |                 | consistent      |
|                 |                 |                 | initial         |
|                 |                 |                 | conditions for  |
|                 |                 |                 | backwards       |
|                 |                 |                 | system          |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to calc_ic].    |
+-----------------+-----------------+-----------------+-----------------+
| cj_scaling      | OT_BOOLEAN      | false           | IDAS scaling on |
|                 |                 |                 | cj for the      |
|                 |                 |                 | user-defined    |
|                 |                 |                 | linear solver   |
|                 |                 |                 | module          |
+-----------------+-----------------+-----------------+-----------------+
| disable_interna | OT_BOOLEAN      | false           | Disable IDAS    |
| l_warnings      |                 |                 | internal        |
|                 |                 |                 | warning         |
|                 |                 |                 | messages        |
+-----------------+-----------------+-----------------+-----------------+
| exact_jacobian  | OT_BOOLEAN      | true            | Use exact       |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | information for |
|                 |                 |                 | the forward     |
|                 |                 |                 | integration     |
+-----------------+-----------------+-----------------+-----------------+
| exact_jacobianB | OT_BOOLEAN      | GenericType()   | Use exact       |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | information for |
|                 |                 |                 | the backward    |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to              |
|                 |                 |                 | exact_jacobian] |
+-----------------+-----------------+-----------------+-----------------+
| extra_fsens_cal | OT_BOOLEAN      | false           | Call calc ic an |
| c_ic            |                 |                 | extra time,     |
|                 |                 |                 | with fsens=0    |
+-----------------+-----------------+-----------------+-----------------+
| finite_differen | OT_BOOLEAN      | false           | Use finite      |
| ce_fsens        |                 |                 | differences to  |
|                 |                 |                 | approximate the |
|                 |                 |                 | forward         |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | equations (if   |
|                 |                 |                 | AD is not       |
|                 |                 |                 | available)      |
+-----------------+-----------------+-----------------+-----------------+
| first_time      | OT_REAL         | GenericType()   | First requested |
|                 |                 |                 | time as a       |
|                 |                 |                 | fraction of the |
|                 |                 |                 | time interval   |
+-----------------+-----------------+-----------------+-----------------+
| fsens_abstol    | OT_REAL         | GenericType()   | Absolute        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the forward     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to abstol]      |
+-----------------+-----------------+-----------------+-----------------+
| fsens_abstolv   | OT_REALVECTOR   |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| fsens_err_con   | OT_BOOLEAN      | true            | include the     |
|                 |                 |                 | forward         |
|                 |                 |                 | sensitivities   |
|                 |                 |                 | in all error    |
|                 |                 |                 | controls        |
+-----------------+-----------------+-----------------+-----------------+
| fsens_reltol    | OT_REAL         | GenericType()   | Relative        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the forward     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to reltol]      |
+-----------------+-----------------+-----------------+-----------------+
| fsens_scaling_f | OT_REALVECTOR   | GenericType()   | Scaling factor  |
| actors          |                 |                 | for the         |
|                 |                 |                 | components if   |
|                 |                 |                 | finite          |
|                 |                 |                 | differences is  |
|                 |                 |                 | used            |
+-----------------+-----------------+-----------------+-----------------+
| fsens_sensitivi | OT_INTEGERVECTO | GenericType()   | Specifies which |
| y_parameters    | R               |                 | components will |
|                 |                 |                 | be used when    |
|                 |                 |                 | estimating the  |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | equations       |
+-----------------+-----------------+-----------------+-----------------+
| init_xdot       | OT_REALVECTOR   | GenericType()   | Initial values  |
|                 |                 |                 | for the state   |
|                 |                 |                 | derivatives     |
+-----------------+-----------------+-----------------+-----------------+
| interpolation_t | OT_STRING       | \"hermite\"       | Type of         |
| ype             |                 |                 | interpolation   |
|                 |                 |                 | for the adjoint |
|                 |                 |                 | sensitivities ( |
|                 |                 |                 | hermite|polynom |
|                 |                 |                 | ial)            |
+-----------------+-----------------+-----------------+-----------------+
| iterative_solve | OT_STRING       | \"gmres\"         | (gmres|bcgstab| |
| r               |                 |                 | tfqmr)          |
+-----------------+-----------------+-----------------+-----------------+
| iterative_solve | OT_STRING       | GenericType()   | (gmres|bcgstab| |
| rB              |                 |                 | tfqmr)          |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver   | OT_STRING       | GenericType()   | A custom linear |
|                 |                 |                 | solver creator  |
|                 |                 |                 | function        |
+-----------------+-----------------+-----------------+-----------------+
| linear_solverB  | OT_STRING       | GenericType()   | A custom linear |
|                 |                 |                 | solver creator  |
|                 |                 |                 | function for    |
|                 |                 |                 | backwards       |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to              |
|                 |                 |                 | linear_solver]  |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_o | OT_DICT         | GenericType()   | Options to be   |
| ptions          |                 |                 | passed to the   |
|                 |                 |                 | linear solver   |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_o | OT_DICT         | GenericType()   | Options to be   |
| ptionsB         |                 |                 | passed to the   |
|                 |                 |                 | linear solver   |
|                 |                 |                 | for backwards   |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to linear_solve |
|                 |                 |                 | r_options]      |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_t | OT_STRING       | \"dense\"         | (user_defined|d |
| ype             |                 |                 | ense|banded|ite |
|                 |                 |                 | rative)         |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver_t | OT_STRING       | GenericType()   | (user_defined|d |
| ypeB            |                 |                 | ense|banded|ite |
|                 |                 |                 | rative)         |
+-----------------+-----------------+-----------------+-----------------+
| lower_bandwidth | OT_INTEGER      | GenericType()   | Lower band-     |
|                 |                 |                 | width of banded |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | (estimations)   |
+-----------------+-----------------+-----------------+-----------------+
| lower_bandwidth | OT_INTEGER      | GenericType()   | lower band-     |
| B               |                 |                 | width of banded |
|                 |                 |                 | jacobians for   |
|                 |                 |                 | backward        |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to lower_bandwi |
|                 |                 |                 | dth]            |
+-----------------+-----------------+-----------------+-----------------+
| max_krylov      | OT_INTEGER      | 10              | Maximum Krylov  |
|                 |                 |                 | subspace size   |
+-----------------+-----------------+-----------------+-----------------+
| max_krylovB     | OT_INTEGER      | GenericType()   | Maximum krylov  |
|                 |                 |                 | subspace size   |
+-----------------+-----------------+-----------------+-----------------+
| max_multistep_o | OT_INTEGER      | 5               |                 |
| rder            |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| max_num_steps   | OT_INTEGER      | 10000           | Maximum number  |
|                 |                 |                 | of integrator   |
|                 |                 |                 | steps           |
+-----------------+-----------------+-----------------+-----------------+
| max_step_size   | OT_REAL         | 0               | Maximim step    |
|                 |                 |                 | size            |
+-----------------+-----------------+-----------------+-----------------+
| pretype         | OT_STRING       | \"none\"          | (none|left|righ |
|                 |                 |                 | t|both)         |
+-----------------+-----------------+-----------------+-----------------+
| pretypeB        | OT_STRING       | GenericType()   | (none|left|righ |
|                 |                 |                 | t|both)         |
+-----------------+-----------------+-----------------+-----------------+
| quad_err_con    | OT_BOOLEAN      | false           | Should the      |
|                 |                 |                 | quadratures     |
|                 |                 |                 | affect the step |
|                 |                 |                 | size control    |
+-----------------+-----------------+-----------------+-----------------+
| reltol          | OT_REAL         | 0.000           | Relative        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the IVP         |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| reltolB         | OT_REAL         | GenericType()   | Relative        |
|                 |                 |                 | tolerence for   |
|                 |                 |                 | the adjoint     |
|                 |                 |                 | sensitivity     |
|                 |                 |                 | solution        |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to reltol]      |
+-----------------+-----------------+-----------------+-----------------+
| sensitivity_met | OT_STRING       | \"simultaneous\"  | (simultaneous|s |
| hod             |                 |                 | taggered)       |
+-----------------+-----------------+-----------------+-----------------+
| steps_per_check | OT_INTEGER      | 20              | Number of steps |
| point           |                 |                 | between two     |
|                 |                 |                 | consecutive     |
|                 |                 |                 | checkpoints     |
+-----------------+-----------------+-----------------+-----------------+
| stop_at_end     | OT_BOOLEAN      | true            | Stop the        |
|                 |                 |                 | integrator at   |
|                 |                 |                 | the end of the  |
|                 |                 |                 | interval        |
+-----------------+-----------------+-----------------+-----------------+
| suppress_algebr | OT_BOOLEAN      | false           | Suppress        |
| aic             |                 |                 | algebraic       |
|                 |                 |                 | variables in    |
|                 |                 |                 | the error       |
|                 |                 |                 | testing         |
+-----------------+-----------------+-----------------+-----------------+
| upper_bandwidth | OT_INTEGER      | GenericType()   | Upper band-     |
|                 |                 |                 | width of banded |
|                 |                 |                 | Jacobian        |
|                 |                 |                 | (estimations)   |
+-----------------+-----------------+-----------------+-----------------+
| upper_bandwidth | OT_INTEGER      | GenericType()   | Upper band-     |
| B               |                 |                 | width of banded |
|                 |                 |                 | jacobians for   |
|                 |                 |                 | backward        |
|                 |                 |                 | integration     |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to upper_bandwi |
|                 |                 |                 | dth]            |
+-----------------+-----------------+-----------------+-----------------+
| use_preconditio | OT_BOOLEAN      | false           | Precondition an |
| ner             |                 |                 | iterative       |
|                 |                 |                 | solver          |
+-----------------+-----------------+-----------------+-----------------+
| use_preconditio | OT_BOOLEAN      | GenericType()   | Precondition an |
| nerB            |                 |                 | iterative       |
|                 |                 |                 | solver for the  |
|                 |                 |                 | backwards       |
|                 |                 |                 | problem         |
|                 |                 |                 | [default: equal |
|                 |                 |                 | to use_precondi |
|                 |                 |                 | tioner]         |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+--------------------------+
|            Id            |
+==========================+
| bjacB                    |
+--------------------------+
| correctInitialConditions |
+--------------------------+
| jtimesB                  |
+--------------------------+
| psetup                   |
+--------------------------+
| psetupB                  |
+--------------------------+
| psolveB                  |
+--------------------------+
| res                      |
+--------------------------+
| resB                     |
+--------------------------+
| resS                     |
+--------------------------+
| rhsQB                    |
+--------------------------+

>List of available stats

+-------------+
|     Id      |
+=============+
| nlinsetups  |
+-------------+
| nlinsetupsB |
+-------------+
| nsteps      |
+-------------+
| nstepsB     |
+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

collocation
-----------



Fixed-step implicit Runge-Kutta integrator ODE/DAE integrator based on
collocation schemes

The method is still under development

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| collocation_sch | OT_STRING       | \"radau\"         | Collocation     |
| eme             |                 |                 | scheme (radau|l |
|                 |                 |                 | egendre)        |
+-----------------+-----------------+-----------------+-----------------+
| implicit_solver | OT_STRING       | GenericType()   | An implicit     |
|                 |                 |                 | function solver |
+-----------------+-----------------+-----------------+-----------------+
| implicit_solver | OT_DICT         | GenericType()   | Options to be   |
| _options        |                 |                 | passed to the   |
|                 |                 |                 | NLP Solver      |
+-----------------+-----------------+-----------------+-----------------+
| interpolation_o | OT_INTEGER      | 3               | Order of the    |
| rder            |                 |                 | interpolating   |
|                 |                 |                 | polynomials     |
+-----------------+-----------------+-----------------+-----------------+
| number_of_finit | OT_INTEGER      | 20              | Number of       |
| e_elements      |                 |                 | finite elements |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

oldcollocation
--------------



Collocation integrator ODE/DAE integrator based on collocation

The method is still under development

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| collocation_sch | OT_STRING       | \"radau\"         | Collocation     |
| eme             |                 |                 | scheme (radau|l |
|                 |                 |                 | egendre)        |
+-----------------+-----------------+-----------------+-----------------+
| expand_f        | OT_BOOLEAN      | false           | Expand the      |
|                 |                 |                 | ODE/DAE         |
|                 |                 |                 | residual        |
|                 |                 |                 | function in an  |
|                 |                 |                 | SX graph        |
+-----------------+-----------------+-----------------+-----------------+
| expand_q        | OT_BOOLEAN      | false           | Expand the      |
|                 |                 |                 | quadrature      |
|                 |                 |                 | function in an  |
|                 |                 |                 | SX graph        |
+-----------------+-----------------+-----------------+-----------------+
| hotstart        | OT_BOOLEAN      | true            | Initialize the  |
|                 |                 |                 | trajectory at   |
|                 |                 |                 | the previous    |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| implicit_solver | OT_STRING       | GenericType()   | An implicit     |
|                 |                 |                 | function solver |
+-----------------+-----------------+-----------------+-----------------+
| implicit_solver | OT_DICT         | GenericType()   | Options to be   |
| _options        |                 |                 | passed to the   |
|                 |                 |                 | implicit solver |
+-----------------+-----------------+-----------------+-----------------+
| interpolation_o | OT_INTEGER      | 3               | Order of the    |
| rder            |                 |                 | interpolating   |
|                 |                 |                 | polynomials     |
+-----------------+-----------------+-----------------+-----------------+
| number_of_finit | OT_INTEGER      | 20              | Number of       |
| e_elements      |                 |                 | finite elements |
+-----------------+-----------------+-----------------+-----------------+
| startup_integra | OT_STRING       | GenericType()   | An ODE/DAE      |
| tor             |                 |                 | integrator that |
|                 |                 |                 | can be used to  |
|                 |                 |                 | generate a      |
|                 |                 |                 | startup         |
|                 |                 |                 | trajectory      |
+-----------------+-----------------+-----------------+-----------------+
| startup_integra | OT_DICT         | GenericType()   | Options to be   |
| tor_options     |                 |                 | passed to the   |
|                 |                 |                 | startup         |
|                 |                 |                 | integrator      |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

rk --



Fixed-step explicit Runge-Kutta integrator for ODEs Currently implements
RK4.

The method is still under development

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| number_of_finit | OT_INTEGER      | 20              | Number of       |
| e_elements      |                 |                 | finite elements |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



Joel Andersson
Diagrams
--------



C++ includes: integrator.hpp ";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring")  casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring")  casadi::Integrator::printStats(std::ostream
&stream=casadi::userOut()) const  "

Print solver statistics.

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";


// File: classcasadi_1_1InterruptHandler.xml
%feature("docstring") casadi::InterruptHandler "[INTERNAL]  Takes care of
user interrupts (Ctrl+C)

This is an internal class.

Joris Gillis

C++ includes: casadi_interrupt.hpp ";


// File: classcasadi_1_1Inverse.xml


// File: classcasadi_1_1IpoptUserClass.xml
%feature("docstring")  casadi::IpoptUserClass::get_starting_point(Index n,
bool init_x, Number *x, bool init_z, Number *z_L, Number *z_U, Index m, bool
init_lambda, Number *lambda) " [INTERNAL]  Method to return the starting
point for the algorithm

";

%feature("docstring")
casadi::IpoptUserClass::finalize_solution(SolverReturn status, Index n,
const Number *x, const Number *z_L, const Number *z_U, Index m, const Number
*g, const Number *lambda, Number obj_value, const IpoptData *ip_data,
IpoptCalculatedQuantities *ip_cq) " [INTERNAL]  This method is called when
the algorithm is complete so the TNLP can store/write the solution

";

%feature("docstring") casadi::IpoptUserClass "[INTERNAL] C++ includes:
ipopt_nlp.hpp ";

%feature("docstring")
casadi::IpoptUserClass::get_list_of_nonlinear_variables(Index
num_nonlin_vars, Index *pos_nonlin_vars) " [INTERNAL]  Specify which
variables that appear in the Hessian

";

%feature("docstring")  casadi::IpoptUserClass::eval_grad_f(Index n, const
Number *x, bool new_x, Number *grad_f) " [INTERNAL]  Method to return the
gradient of the objective

";

%feature("docstring")  casadi::IpoptUserClass::get_var_con_metadata(Index n,
StringMetaDataMapType &var_string_md, IntegerMetaDataMapType
&var_integer_md, NumericMetaDataMapType &var_numeric_md, Index m,
StringMetaDataMapType &con_string_md, IntegerMetaDataMapType
&con_integer_md, NumericMetaDataMapType &con_numeric_md) " [INTERNAL]
Allows setting information about variables and constraints

";

%feature("docstring") casadi::IpoptUserClass::~IpoptUserClass "[INTERNAL]
";

%feature("docstring")  casadi::IpoptUserClass::eval_g(Index n, const Number
*x, bool new_x, Index m, Number *g) " [INTERNAL]  Method to return the
constraint residuals

";

%feature("docstring")  casadi::IpoptUserClass::get_nlp_info(Index &n, Index
&m, Index &nnz_jac_g, Index &nnz_h_lag, IndexStyleEnum &index_style) "
[INTERNAL]  Method to return some info about the nlp

";

%feature("docstring")  casadi::IpoptUserClass::eval_f(Index n, const Number
*x, bool new_x, Number &obj_value) " [INTERNAL]  Method to return the
objective value

";

%feature("docstring")
casadi::IpoptUserClass::get_number_of_nonlinear_variables() "[INTERNAL]
Specify the number of variables that appear in the Hessian

";

%feature("docstring")  casadi::IpoptUserClass::eval_jac_g(Index n, const
Number *x, bool new_x, Index m, Index nele_jac, Index *iRow, Index *jCol,
Number *values) " [INTERNAL]  Method to return: 1) The structure of the
Jacobian (if \"values\" is NULL) 2) The values of the Jacobian (if
\"values\" is not NULL)

";

%feature("docstring")  casadi::IpoptUserClass::finalize_metadata(Index n,
const StringMetaDataMapType &var_string_md, const IntegerMetaDataMapType
&var_integer_md, const NumericMetaDataMapType &var_numeric_md, Index m,
const StringMetaDataMapType &con_string_md, const IntegerMetaDataMapType
&con_integer_md, const NumericMetaDataMapType &con_numeric_md) " [INTERNAL]
Retrieve information about variables and constraints

";

%feature("docstring")  casadi::IpoptUserClass::get_bounds_info(Index n,
Number *x_l, Number *x_u, Index m, Number *g_l, Number *g_u) " [INTERNAL]
Method to return the bounds for my problem

";

%feature("docstring")  casadi::IpoptUserClass::eval_h(Index n, const Number
*x, bool new_x, Number obj_factor, Index m, const Number *lambda, bool
new_lambda, Index nele_hess, Index *iRow, Index *jCol, Number *values) "
[INTERNAL]  Method to return: 1) The structure of the hessian of the
Lagrangian (if \"values\" is NULL) 2) The values of the hessian of the
Lagrangian (if \"values\" is not NULL)

";

%feature("docstring")
casadi::IpoptUserClass::intermediate_callback(AlgorithmMode mode, Index
iter, Number obj_value, Number inf_pr, Number inf_du, Number mu, Number
d_norm, Number regularization_size, Number alpha_du, Number alpha_pr, Index
ls_trials, const IpoptData *ip_data, IpoptCalculatedQuantities *ip_cq) "
[INTERNAL]  This method is called at every iteration

";

%feature("docstring") casadi::IpoptUserClass::IpoptUserClass(IpoptInterface
*ipoptInterface) " [INTERNAL] ";


// File: classcasadi_1_1LapackLuDense.xml


// File: classcasadi_1_1LapackQrDense.xml


// File: classcasadi_1_1LibInfo.xml
%feature("docstring") casadi::LibInfo "[INTERNAL]  Structure with
information about the library.

C++ includes: external_function_internal.hpp ";


// File: classcasadi_1_1LibInfo_3_01Compiler_01_4.xml
%feature("docstring") casadi::LibInfo< Compiler >::LibInfo() " [INTERNAL] ";

%feature("docstring") casadi::LibInfo< Compiler >::LibInfo(const Compiler
&compiler) " [INTERNAL] ";

%feature("docstring") casadi::LibInfo< Compiler > " [INTERNAL]  Library that
has been just-in-time compiled.

C++ includes: external_function_internal.hpp ";

%feature("docstring")  casadi::LibInfo< Compiler >::get(FcnPtr &fcnPtr,
const std::string &sym) " [INTERNAL] ";

%feature("docstring")  casadi::LibInfo< Compiler >::clear() " [INTERNAL] ";


// File: classcasadi_1_1LibInfo_3_01std_1_1string_01_4.xml
%feature("docstring") casadi::LibInfo< std::string > " [INTERNAL]  Library
given as a dynamically linked library.

C++ includes: external_function_internal.hpp ";

%feature("docstring")  casadi::LibInfo< std::string >::clear() " [INTERNAL]
";

%feature("docstring") casadi::LibInfo< std::string >::LibInfo() " [INTERNAL]
";

%feature("docstring") casadi::LibInfo< std::string >::LibInfo(const
std::string &bin_name) " [INTERNAL] ";

%feature("docstring")  casadi::LibInfo< std::string >::get(FcnPtr &fcnPtr,
const std::string &sym) " [INTERNAL] ";


// File: classcasadi_1_1LinearSolver.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::LinearSolver::prepare() "

Factorize the matrix.

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring")  casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")  casadi::LinearSolver::prepared() const  "

Check if prepared.

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring") casadi::LinearSolver "

Base class for the linear solver classes.

Solves the linear system A*X = B or A^T*X = B for X with A square and non-
singular

If A is structurally singular, an error will be thrown during init. If A is
numerically singular, the prepare step will fail.

The usual procedure to use LinearSolver is: init()

set the first input (A)

prepare()

set the second input (b)

solve()

Repeat steps 4 and 5 to work with other b vectors.

The method evaluate() combines the prepare() and solve() step and is
therefore more expensive if A is invariant.

General information
===================



>Input scheme: casadi::LinsolInput (LINSOL_NUM_IN = 2) [linsolIn]

+-----------+-------+------------------------------------------------+
| Full name | Short |                  Description                   |
+===========+=======+================================================+
| LINSOL_A  | A     | The square matrix A: sparse, (n x n). .        |
+-----------+-------+------------------------------------------------+
| LINSOL_B  | B     | The right-hand-side matrix b: dense, (n x m) . |
+-----------+-------+------------------------------------------------+

>Output scheme: casadi::LinsolOutput (LINSOL_NUM_OUT = 1) [linsolOut]

+-----------+-------+----------------------------------------------+
| Full name | Short |                 Description                  |
+===========+=======+==============================================+
| LINSOL_X  | X     | Solution to the linear system of equations . |
+-----------+-------+----------------------------------------------+

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp |              |
|              |              |              | uts)         |              |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+

List of plugins
===============



- csparsecholesky

- csparse

- lapacklu

- lapackqr

- symbolicqr

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
LinearSolver.doc(\"myextraplugin\")



--------------------------------------------------------------------------------

csparsecholesky
---------------



LinearSolver with CSparseCholesky Interface

>List of available options

+----+------+---------+-------------+
| Id | Type | Default | Description |
+====+======+=========+=============+
+----+------+---------+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

csparse
-------



LinearSolver with CSparse Interface

>List of available options

+----+------+---------+-------------+
| Id | Type | Default | Description |
+====+======+=========+=============+
+----+------+---------+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

lapacklu
--------



This class solves the linear system A.x=b by making an LU factorization of
A: A = L.U, with L lower and U upper triangular

>List of available options

+-----------------------------+------------+---------+-------------+
|             Id              |    Type    | Default | Description |
+=============================+============+=========+=============+
| allow_equilibration_failure | OT_BOOLEAN | false   |             |
+-----------------------------+------------+---------+-------------+
| equilibration               | OT_BOOLEAN | true    |             |
+-----------------------------+------------+---------+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

lapackqr
--------



This class solves the linear system A.x=b by making an QR factorization of
A: A = Q.R, with Q orthogonal and R upper triangular

>List of available options

+----+------+---------+-------------+
| Id | Type | Default | Description |
+====+======+=========+=============+
+----+------+---------+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

symbolicqr
----------



LinearSolver based on QR factorization with sparsity pattern based
reordering without partial pivoting

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| codegen         | OT_BOOLEAN      | false           | C-code          |
|                 |                 |                 | generation      |
+-----------------+-----------------+-----------------+-----------------+
| compiler        | OT_STRING       | \"gcc -fPIC -O2\" | Compiler        |
|                 |                 |                 | command to be   |
|                 |                 |                 | used for        |
|                 |                 |                 | compiling       |
|                 |                 |                 | generated code  |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



Joel Andersson
Diagrams
--------



C++ includes: linear_solver.hpp ";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::LinearSolver::getFactorizationSparsity(bool
transpose=false) const  "

Obtain a symbolic Cholesky factorization Only for Cholesky solvers.

";

%feature("docstring")  casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring") casadi::LinearSolver::LinearSolver(const std::string
&name, const std::string &solver, const Sparsity &sp, const Dict
&opts=Dict()) "

Create a linear solver given a sparsity pattern (new syntax, includes
initialization)

Parameters:
-----------

solver:

Name of a solver. It might be one of:

- csparsecholesky

- csparse

- lapacklu

- lapackqr

- symbolicqr

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
LinearSolver.doc(\"myextraplugin\")

";

%feature("docstring") casadi::LinearSolver::LinearSolver(const std::string
&name, const std::string &solver, const Sparsity &sp, int nrhs, const Dict
&opts=Dict()) "

Create a linear solver given a sparsity pattern (new syntax, includes
initialization)

Parameters:
-----------

solver:

Name of a solver. It might be one of:

- csparsecholesky

- csparse

- lapacklu

- lapackqr

- symbolicqr

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
LinearSolver.doc(\"myextraplugin\")

";

%feature("docstring") casadi::LinearSolver::LinearSolver() "[INTERNAL]
Default (empty) constructor

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring") casadi::LinearSolver::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::LinearSolver::solve(bool transpose=false) "

Solve the system of equations, internal vector.

";

%feature("docstring")  casadi::LinearSolver::solve(const MX &A, const MX &B,
bool transpose=false) "

Create a solve node.

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::LinearSolver::getFactorization(bool
transpose=false) const  "

Obtain a numeric Cholesky factorization Only for Cholesky solvers.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";


// File: classcasadi_1_1Logger.xml
%feature("docstring") casadi::Logger "

Keeps track of logging output to screen and/or files. All printout from
CasADi routines should go through this files.

Joel Andersson

C++ includes: casadi_logger.hpp ";


// File: classcasadi_1_1MapBase.xml


// File: classcasadi_1_1MapReduce.xml


// File: classcasadi_1_1MapSerial.xml


// File: singletoncasadi_1_1Matrix.xml


/*  Construct symbolic primitives  */

/* The \"sym\" function is intended to work in a similar way as \"sym\" used
in the Symbolic Toolbox for Matlab but instead creating a CasADi symbolic
primitive.

*/ %feature("docstring")  casadi::Matrix< DataType >::getIntValue() const  "

Get double value (only if integer constant)

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::nnz_upper() const "

Get the number of non-zeros in the upper triangular half.

";

%feature("docstring")  casadi::Matrix< DataType >::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Matrix< DataType >::getNZ(std::vector< double
> &output_m) const  "

Get the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::getNZ(Matrix< DataType >
&output_m, bool ind1, const Slice &k) const  "

Get a set of nonzeros

";

%feature("docstring")  casadi::Matrix< DataType >::getNZ(Matrix< DataType >
&output_m, bool ind1, const Matrix< int > &k) const  "

Get a set of nonzeros

";

%feature("docstring")  expand(const Matrix< DataType > &ex, Matrix< DataType
> &weights, Matrix< DataType > &terms) "

Expand the expression as a weighted sum (with constant weights)

";

%feature("docstring")  mtaylor(const Matrix< DataType > &ex, const Matrix<
DataType > &x, const Matrix< DataType > &a, int order=1) "

multivariate Taylor series expansion

Do Taylor expansions until the aggregated order of a term is equal to
'order'. The aggregated order of $x^n y^m$ equals $n+m$.

";

%feature("docstring")  mtaylor(const Matrix< DataType > &ex, const Matrix<
DataType > &x, const Matrix< DataType > &a, int order, const std::vector<
int > &order_contributions) "

multivariate Taylor series expansion

Do Taylor expansions until the aggregated order of a term is equal to
'order'. The aggregated order of $x^n y^m$ equals $n+m$.

The argument order_contributions can denote how match each variable
contributes to the aggregated order. If x=[x, y] and order_contributions=[1,
2], then the aggregated order of $x^n y^m$ equals $1n+2m$.

Example usage

$ \\\\sin(b+a)+\\\\cos(b+a)(x-a)+\\\\cos(b+a)(y-b) $ $ y+x-(x^3+3y x^2+3 y^2
x+y^3)/6 $ $ (-3 x^2 y-x^3)/6+y+x $

";

%feature("docstring")  casadi::Matrix< DataType >::grad(const Function &f,
int iind=0, int oind=0) "

Gradient expression.

";

%feature("docstring")  casadi::Matrix< DataType >::grad(const Function &f,
const std::string &iname, int oind=0) "

Gradient expression.

";

%feature("docstring")  casadi::Matrix< DataType >::grad(const Function &f,
int iind, const std::string &oname) "

Gradient expression.

";

%feature("docstring")  casadi::Matrix< DataType >::grad(const Function &f,
const std::string &iname, const std::string &oname) "

Gradient expression.

";

%feature("docstring")  casadi::Matrix< DataType >::hasNZ(int rr, int cc)
const  "

Returns true if the matrix has a non-zero at location rr, cc.

";

%feature("docstring")  casadi::Matrix< DataType >::set(double val) "

Get the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::set(const double *val,
bool tr=false) "

Get the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::set(const std::vector<
double > &val, bool tr=false) "

Get the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Slice &rr) "

Set a submatrix, single argument

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Matrix< int > &rr) "

Set a submatrix, single argument

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Sparsity &sp) "

Set a submatrix, single argument

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Slice &rr, const Slice &cc) "

Set a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Slice &rr, const Matrix< int > &cc) "

Set a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Matrix< int > &rr, const Slice &cc) "

Set a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &m, bool ind1, const Matrix< int > &rr, const Matrix< int > &cc)
"

Set a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::set(const Matrix<
DataType > &val) "

Set all the entries without changing sparsity pattern.

";

%feature("docstring")  casadi::Matrix< DataType >::hasNonStructuralZeros()
const  "

Check if the matrix has any zero entries which are not structural zeros.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::nnz()
const "

Get the number of (structural) non-zero elements.

";

%feature("docstring")  casadi::Matrix< DataType >::remove(const std::vector<
int > &rr, const std::vector< int > &cc) "

Remove columns and rows Remove/delete rows and/or columns of a matrix.

";

%feature("docstring")  casadi::Matrix< DataType >::getDep(int ch=0) const  "

Get expressions of the children of the expression Only defined if symbolic
scalar. Wraps SXElement SXElement::getDep(int ch=0) const.

";

%feature("docstring")  casadi::Matrix< DataType >::get(std::vector< double >
&output_m) const  "

Get the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Slice &rr) const  "

Get a submatrix, single argument

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Matrix< int > &rr) const  "

Get a submatrix, single argument

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Sparsity &sp) const  "

Get a submatrix, single argument

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Slice &rr, const Slice &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Slice &rr, const Matrix< int > &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Matrix< int > &rr, const Slice &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::Matrix< DataType >::get(Matrix< DataType >
&output_m, bool ind1, const Matrix< int > &rr, const Matrix< int > &cc)
const  "

Get a submatrix, two arguments

";

%feature("docstring")  triangle(const Matrix< DataType > &x) "

triangle function

\\\\[ \\\\begin {cases} \\\\Lambda(x) = 0 & |x| >= 1 \\\\\\\\ \\\\Lambda(x)
= 1-|x| & |x| < 1 \\\\end {cases} \\\\]

";

%feature("docstring")  adj(const Matrix< DataType > &A) "

Matrix adjoint.

";

%feature("docstring")  casadi::Matrix< DataType >::triplet(const
std::vector< int > &row, const std::vector< int > &col, const Matrix<
DataType > &d) " ";

%feature("docstring")  casadi::Matrix< DataType >::triplet(const
std::vector< int > &row, const std::vector< int > &col, const Matrix<
DataType > &d, int nrow, int ncol) " ";

%feature("docstring")  casadi::Matrix< DataType >::triplet(const
std::vector< int > &row, const std::vector< int > &col, const Matrix<
DataType > &d, const std::pair< int, int > &rc) " ";

%feature("docstring")  casadi::Matrix< DataType >::printDense(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print dense matrix-stype.

";

%feature("docstring")  casadi::Matrix< DataType >::getSparsity() const  "

Get an owning reference to the sparsity pattern.

";

%feature("docstring")  casadi::Matrix< DataType >::isIdentity() const  "

check if the matrix is an identity matrix (note that false negative answers
are possible)

";

%feature("docstring")  casadi::PrintableObject< Matrix< DataType >
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Matrix< DataType >::setNZ(double val) "

Set the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::setNZ(const double *val)
"

Set the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::setNZ(const std::vector<
double > &val) "

Set the elements numerically.

";

%feature("docstring")  casadi::Matrix< DataType >::setNZ(const Matrix<
DataType > &m, bool ind1, const Slice &k) "

Set a set of nonzeros

";

%feature("docstring")  casadi::Matrix< DataType >::setNZ(const Matrix<
DataType > &m, bool ind1, const Matrix< int > &k) "

Set a set of nonzeros

";

%feature("docstring")  casadi::Matrix< DataType >::sanity_check(bool
complete=false) const  "

Check if the dimensions and colind, row vectors are compatible.

Parameters:
-----------

complete:  set to true to also check elementwise throws an error as possible
result

";

%feature("docstring")  casadi::Matrix< DataType >::getSym(std::vector<
double > &output_m) const  "

Get upper triangular elements.

";

%feature("docstring")  casadi::Matrix< DataType >::unary(int op, const
Matrix< DataType > &x) " [INTERNAL]  Create nodes by their ID.

";

%feature("docstring")  norm_inf_mul(const Matrix< DataType > &x, const
Matrix< DataType > &y) "

Inf-norm of a Matrix-Matrix product.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::numel()
const "

Get the number of elements.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::numel(int i) const "

Get the number of elements in slice (cf. MATLAB)

";

%feature("docstring")  all(const Matrix< DataType > &x) "

Returns true only if every element in the matrix is true.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::find(bool ind1=false) const "

Get the location of all non-zero elements as they would appear in a Dense
matrix A : DenseMatrix 4 x 3 B : SparseMatrix 4 x 3 , 5 structural non-
zeros.

k = A.find() A[k] will contain the elements of A that are non-zero in B

";

%feature("docstring")  casadi::Matrix< DataType >::toSlice(bool ind1=false)
const  "

Convert to Slice (only for IMatrix)

";

%feature("docstring")  casadi::Matrix< int >::toSlice(bool ind1) const " ";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::nnz_diag() const "

Get get the number of non-zeros on the diagonal.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sparsity() const "

Get the sparsity pattern.

";

%feature("docstring")  casadi::Matrix< DataType >::isCommutative() const  "

Check whether a binary SX is commutative.

Only defined if symbolic scalar.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::isvector() const "

Check if the matrix is a row or column vector.

";

%feature("docstring")  casadi::Matrix< DataType >::isSlice(bool ind1=false)
const  "

Is the Matrix a Slice (only for IMatrix)

";

%feature("docstring")  casadi::Matrix< int >::isSlice(bool ind1) const " ";

%feature("docstring")  casadi::Matrix< DataType >::hasDuplicates() "
[INTERNAL]  Detect duplicate symbolic expressions If there are symbolic
primitives appearing more than once, the function will return true and the
names of the duplicate expressions will be printed to userOut<true,
PL_WARN>(). Note: Will mark the node using SXElement::setTemp. Make sure to
call resetInput() after usage.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::isempty(bool both=false) const "

Check if the sparsity is empty, i.e. if one of the dimensions is zero (or
optionally both dimensions)

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::dim()
const "

Get string representation of dimensions. The representation is (nrow x ncol
= numel | size)

";

%feature("docstring")  casadi::Matrix< DataType >::printSparse(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print sparse matrix style.

";

%feature("docstring")  casadi::Matrix< DataType >::T() const  "

Transpose the matrix.

";

%feature("docstring")  any(const Matrix< DataType > &x) "

Returns true only if any element in the matrix is true.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::isscalar(bool scalar_and_dense=false) const "

Check if the matrix expression is scalar.

";

%feature("docstring")  casadi::Matrix< DataType >::clear() " ";

%feature("docstring")  casadi::Matrix< DataType >::nonzeros_int() const  "

Get all nonzeros.

";

%feature("docstring")  poly_roots(const Matrix< DataType > &p) "

Attempts to find the roots of a polynomial.

This will only work for polynomials up to order 3 It is assumed that the
roots are real.

";

%feature("docstring")  casadi::Matrix< DataType >::setScientific(bool
scientific) "

Set the 'precision, width & scientific' used in printing and serializing to
streams.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::isrow()
const "

Check if the matrix is a row vector (i.e. size1()==1)

";

%feature("docstring")  casadi::Matrix< DataType >::hess(const Function &f,
int iind=0, int oind=0) "

Hessian expression

";

%feature("docstring")  casadi::Matrix< DataType >::hess(const Function &f,
const std::string &iname, int oind=0) "

Hessian expression

";

%feature("docstring")  casadi::Matrix< DataType >::hess(const Function &f,
int iind, const std::string &oname) "

Hessian expression

";

%feature("docstring")  casadi::Matrix< DataType >::hess(const Function &f,
const std::string &iname, const std::string &oname) "

Hessian expression

";

%feature("docstring")  casadi::Matrix< DataType >::getValue() const  "

Get double value (only if constant)

";

%feature("docstring")  casadi::Matrix< DataType >::getValue(int k) const  "

Get double value (particular nonzero)

";

%feature("docstring")  casadi::Matrix< DataType >::isOne() const  "

check if the matrix is 1 (note that false negative answers are possible)

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::nnz_lower() const "

Get the number of non-zeros in the lower triangular half.

";

%feature("docstring")  casadi::Matrix< DataType >::reserve(int nnz) " ";

%feature("docstring")  casadi::Matrix< DataType >::reserve(int nnz, int
ncol) " ";

%feature("docstring")  casadi::Matrix< DataType >::printScalar(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print scalar.

";

%feature("docstring")  casadi::Matrix< DataType >::tang(const Function &f,
int iind=0, int oind=0) "

Tangent expression.

";

%feature("docstring")  casadi::Matrix< DataType >::tang(const Function &f,
const std::string &iname, int oind=0) "

Tangent expression.

";

%feature("docstring")  casadi::Matrix< DataType >::tang(const Function &f,
int iind, const std::string &oname) "

Tangent expression.

";

%feature("docstring")  casadi::Matrix< DataType >::tang(const Function &f,
const std::string &iname, const std::string &oname) "

Tangent expression.

";

%feature("docstring")  casadi::Matrix< DataType >::isSmooth() const  "

Check if smooth.

";

%feature("docstring")  casadi::Matrix< DataType >::erase(const std::vector<
int > &rr, const std::vector< int > &cc, bool ind1=false) "

Erase a submatrix (leaving structural zeros in its place) Erase rows and/or
columns of a matrix.

";

%feature("docstring")  casadi::Matrix< DataType >::erase(const std::vector<
int > &rr, bool ind1=false) "

Erase a submatrix (leaving structural zeros in its place) Erase elements of
a matrix.

";

%feature("docstring")  casadi::Matrix< DataType >::inf(const Sparsity &sp) "

create a matrix with all inf

";

%feature("docstring")  casadi::Matrix< DataType >::inf(int nrow=1, int
ncol=1) "

create a matrix with all inf

";

%feature("docstring")  casadi::Matrix< DataType >::inf(const std::pair< int,
int > &rc) "

create a matrix with all inf

";

%feature("docstring")  casadi::Matrix< DataType >::scalar_matrix(int op,
const Matrix< DataType > &x, const Matrix< DataType > &y) " [INTERNAL]
Create nodes by their ID.

";

%feature("docstring")  ramp(const Matrix< DataType > &x) "

ramp function

\\\\[ \\\\begin {cases} R(x) = 0 & x <= 1 \\\\\\\\ R(x) = x & x > 1 \\\\\\\\
\\\\end {cases} \\\\]

Also called: slope function

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::ones(int nrow=1, int ncol=1) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::ones(const Sparsity &sp) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::ones(const std::pair< int, int > &rc) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  jacobianTimesVector(const Matrix< DataType > &ex,
const Matrix< DataType > &arg, const Matrix< DataType > &v, bool
transpose_jacobian=false) "

Calculate the Jacobian and multiply by a vector from the right This is
equivalent to mul(jacobian(ex, arg), v) or mul(jacobian(ex, arg).T, v) for
transpose_jacobian set to false and true respectively. If contrast to these
expressions, it will use directional derivatives which is typically (but not
necessarily) more efficient if the complete Jacobian is not needed and v has
few rows.

";

%feature("docstring")  casadi::Matrix< DataType >::addSub(const Matrix<
DataType > &m, RR rr, CC cc, bool ind1) "

Add a submatrix to an existing matrix (TODO: remove memory allocation)

";

%feature("docstring")  casadi::Matrix< DataType >::resize(int nrow, int
ncol) " ";

%feature("docstring")  qr(const Matrix< DataType > &A, Matrix< DataType >
&Q, Matrix< DataType > &R) "

QR factorization using the modified Gram-Schmidt algorithm More stable than
the classical Gram-Schmidt, but may break down if the rows of A are nearly
linearly dependent See J. Demmel: Applied Numerical Linear Algebra
(algorithm 3.1.). Note that in SWIG, Q and R are returned by value.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::row(int
el) const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::zeros(int nrow=1, int ncol=1) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::zeros(const Sparsity &sp) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::zeros(const std::pair< int, int > &rc) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::Matrix< DataType >::isConstant() const  "

Check if the matrix is constant (note that false negative answers are
possible)

";

%feature("docstring")  casadi::Matrix< DataType >::getNdeps() const  "

Get the number of dependencies of a binary SXElement Only defined if
symbolic scalar.

";

%feature("docstring")  casadi::Matrix< DataType >::printSplit(std::vector<
std::string > &output_nz, std::vector< std::string > &output_inter) const  "

Get strings corresponding to the nonzeros and the interdependencies.

";

%feature("docstring") casadi::Matrix "

Sparse matrix class. SX and DMatrix are specializations.

General sparse matrix class that is designed with the idea that \"everything
is a matrix\", that is, also scalars and vectors. This philosophy makes it
easy to use and to interface in particularly with Python and Matlab/Octave.
Index starts with 0. Index vec happens as follows: (rr, cc) -> k =
rr+cc*size1() Vectors are column vectors.  The storage format is Compressed
Column Storage (CCS), similar to that used for sparse matrices in Matlab,
but unlike this format, we do allow for elements to be structurally non-zero
but numerically zero.  Matrix<DataType> is polymorphic with a
std::vector<DataType> that contain all non-identical-zero elements. The
sparsity can be accessed with Sparsity& sparsity() Joel Andersson

C++ includes: casadi_types.hpp ";

%feature("docstring")  casadi::Matrix< DataType >::setValue(double m) "

Set double value (only if constant)

";

%feature("docstring")  casadi::Matrix< DataType >::setValue(double m, int k)
"

Set double value (particular nonzero)

";

%feature("docstring")  casadi::Matrix< DataType >::isMinusOne() const  "

check if the matrix is -1 (note that false negative answers are possible)

";

%feature("docstring")  casadi::Matrix< DataType >::printVector(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print vector-style.

";

%feature("docstring")  casadi::Matrix< DataType >::isRegular() const  "

Checks if expression does not contain NaN or Inf.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::istril() const "

Check if the matrix is lower triangular.

";

%feature("docstring")  eig_symbolic(const Matrix< DataType > &m) "

Attempts to find the eigenvalues of a symbolic matrix This will only work
for up to 3x3 matrices.

";

%feature("docstring")  casadi::Matrix< DataType >::jac(const Function &f,
int iind=0, int oind=0, bool compact=false, bool symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::Matrix< DataType >::jac(const Function &f,
const std::string &iname, int oind=0, bool compact=false, bool
symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::Matrix< DataType >::jac(const Function &f,
int iind, const std::string &oname, bool compact=false, bool
symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::Matrix< DataType >::jac(const Function &f,
const std::string &iname, const std::string &oname, bool compact=false, bool
symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::istriu() const "

Check if the matrix is upper triangular.

";

%feature("docstring")  sparsify(const Matrix< DataType > &A, double tol=0) "

Make a matrix sparse by removing numerical zeros.

";

%feature("docstring")  casadi::Matrix< DataType >::nonzeros() const  "

Get all nonzeros.

";

%feature("docstring")  cofactor(const Matrix< DataType > &x, int i, int j) "

Get the (i,j) cofactor matrix.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::colind(int col) const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::issquare() const "

Check if the matrix expression is square.

";

%feature("docstring")  casadi::Matrix< DataType >::isLeaf() const  "

Check if SX is a leaf of the SX graph.

Only defined if symbolic scalar.

";

%feature("docstring")  casadi::Matrix< DataType >::matrix_scalar(int op,
const Matrix< DataType > &x, const Matrix< DataType > &y) " [INTERNAL]
Create nodes by their ID.

";

%feature("docstring")  casadi::Matrix< DataType >::nan(const Sparsity &sp) "

create a matrix with all nan

";

%feature("docstring")  casadi::Matrix< DataType >::nan(int nrow=1, int
ncol=1) "

create a matrix with all nan

";

%feature("docstring")  casadi::Matrix< DataType >::nan(const std::pair< int,
int > &rc) "

create a matrix with all nan

";

%feature("docstring")  casadi::PrintableObject< Matrix< DataType >
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  poly_coeff(const Matrix< DataType > &ex, const
Matrix< DataType > &x) "

extracts polynomial coefficients from an expression

Parameters:
-----------

ex:  Scalar expression that represents a polynomial

x:  Scalar symbol that the polynomial is build up with

";

%feature("docstring")  getMinor(const Matrix< DataType > &x, int i, int j) "

Get the (i,j) minor matrix.

";

%feature("docstring")  heaviside(const Matrix< DataType > &x) "

Heaviside function.

\\\\[ \\\\begin {cases} H(x) = 0 & x<0 \\\\\\\\ H(x) = 1/2 & x=0 \\\\\\\\
H(x) = 1 & x>0 \\\\\\\\ \\\\end {cases} \\\\]

";

%feature("docstring")  casadi::Matrix< DataType >::setPrecision(int
precision) "

Set the 'precision, width & scientific' used in printing and serializing to
streams.

";

%feature("docstring")  casadi::Matrix< DataType >::isValidInput() const  "

Check if matrix can be used to define function inputs. Sparse matrices can
return true if all non-zero elements are symbolic.

";

%feature("docstring")  casadi::Matrix< DataType >::isZero() const  "

check if the matrix is 0 (note that false negative answers are possible)

";

%feature("docstring")  casadi::Matrix< DataType >::setSym(const double *val)
"

Set upper triangular elements.

";

%feature("docstring")  casadi::Matrix< DataType >::setSym(const std::vector<
double > &val) "

Set upper triangular elements.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::size()
const "

Get the shape.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::size(int axis) const "

Get the size along a particular dimensions.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::isdense() const "

Check if the matrix expression is dense.

";

%feature("docstring") casadi::Matrix::__nonzero__ "

Returns the truth value of a Matrix.

";

%feature("docstring") casadi::Matrix::__nonzero__ "[INTERNAL] ";

%feature("docstring")  taylor(const Matrix< DataType > &ex, const Matrix<
DataType > &x, const Matrix< DataType > &a, int order=1) "

univariate Taylor series expansion

Calculate the Taylor expansion of expression 'ex' up to order 'order' with
respect to variable 'x' around the point 'a'

$(x)=f(a)+f'(a)(x-a)+f''(a)\\\\frac
{(x-a)^2}{2!}+f'''(a)\\\\frac{(x-a)^3}{3!}+\\\\ldots$

Example usage:

::

>>   x



";

%feature("docstring")  taylor(const Matrix< DataType > &ex, const Matrix<
DataType > &x) "

univariate Taylor series expansion

Calculate the Taylor expansion of expression 'ex' up to order 'order' with
respect to variable 'x' around the point 'a'

$(x)=f(a)+f'(a)(x-a)+f''(a)\\\\frac
{(x-a)^2}{2!}+f'''(a)\\\\frac{(x-a)^3}{3!}+\\\\ldots$

Example usage:

::

>>   x



";

%feature("docstring")  casadi::Matrix< DataType >::isSymbolic() const  "

Check if symbolic (Dense) Sparse matrices invariable return false.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::size1()
const "

Get the first dimension (i.e. number of rows)

";

%feature("docstring")  chol(const Matrix< DataType > &A) "

Obtain a Cholesky factorisation of a matrix Returns an upper triangular R
such that R'R = A. Matrix A must be positive definite.

At the moment, the algorithm is dense (Cholesky-Banachiewicz). There is an
open ticket #1212 to make it sparse.

";

%feature("docstring")  casadi::Matrix< DataType >::getName() const  "

Get name (only if symbolic scalar)

";

%feature("docstring")  casadi::Matrix< DataType >::printme(const Matrix<
DataType > &y) const  " ";

%feature("docstring")  gauss_quadrature(const Matrix< DataType > &f, const
Matrix< DataType > &x, const Matrix< DataType > &a, const Matrix< DataType >
&b, int order=5) "

Integrate f from a to b using Gaussian quadrature with n points.

";

%feature("docstring")  gauss_quadrature(const Matrix< DataType > &f, const
Matrix< DataType > &x, const Matrix< DataType > &a, const Matrix< DataType >
&b, int order, const Matrix< DataType > &w) "

Matrix adjoint.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::get_row() const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  pw_const(const Matrix< DataType > &t, const Matrix<
DataType > &tval, const Matrix< DataType > &val) "

Create a piecewise constant function Create a piecewise constant function
with n=val.size() intervals.

Inputs:

Parameters:
-----------

t:  a scalar variable (e.g. time)

tval:  vector with the discrete values of t at the interval transitions
(length n-1)

val:  vector with the value of the function for each interval (length n)

";

%feature("docstring")  casadi::Matrix< DataType >::enlarge(int nrow, int
ncol, const std::vector< int > &rr, const std::vector< int > &cc, bool
ind1=false) "

Enlarge matrix Make the matrix larger by inserting empty rows and columns,
keeping the existing non-zeros.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::iscolumn() const "

Check if the matrix is a column vector (i.e. size2()==1)

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >  >::size2()
const "

Get the second dimension (i.e. number of columns)

";

%feature("docstring")  pw_lin(const Matrix< DataType > &t, const Matrix<
DataType > &tval, const Matrix< DataType > &val) "

t a scalar variable (e.g. time)

Create a piecewise linear function Create a piecewise linear function:

Inputs: tval vector with the the discrete values of t (monotonically
increasing) val vector with the corresponding function values (same length
as tval)

";

%feature("docstring")  casadi::Matrix< DataType >::setWidth(int width) "

Set the 'precision, width & scientific' used in printing and serializing to
streams.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix() "

constructors

empty 0-by-0 matrix constructor

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const Matrix<
DataType > &m) "

Copy constructor.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(int nrow, int ncol)
"

Create a sparse matrix with all structural zeros.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const Sparsity &sp)
"

Create a sparse matrix from a sparsity pattern. Same as
Matrix::ones(sparsity)

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const Sparsity &sp,
const Matrix< DataType > &d) "

Construct matrix with a given sparsity and nonzeros.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(double val) "

This constructor enables implicit type conversion from a numeric type.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const std::vector<
std::vector< double > > &m) "

Dense matrix constructor with data given as vector of vectors.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const Matrix< A >
&x) "

Create a matrix from another matrix with a different entry type Assumes that
the scalar conversion is valid.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const std::vector<
A > &x) "

Create an expression from a vector.

";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const std::vector<
DataType > &x) " [INTERNAL] ";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const std::pair<
int, int > &rc) " [INTERNAL] ";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const Sparsity &sp,
const DataType &val, bool dummy) " [INTERNAL] ";

%feature("docstring") casadi::Matrix< DataType >::Matrix(const Sparsity &sp,
const std::vector< DataType > &d, bool dummy) " [INTERNAL] ";

%feature("docstring")  casadi::Matrix< DataType >::getElementHash() const  "

Returns a number that is unique for a given symbolic scalar.

Only defined if symbolic scalar.

";

%feature("docstring")  rectangle(const Matrix< DataType > &x) "

rectangle function

\\\\[ \\\\begin {cases} \\\\Pi(x) = 1 & |x| < 1/2 \\\\\\\\ \\\\Pi(x) = 1/2 &
|x| = 1/2 \\\\\\\\ \\\\Pi(x) = 0 & |x| > 1/2 \\\\\\\\ \\\\end {cases} \\\\]

Also called: gate function, block function, band function, pulse function,
window function

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, int nrow=1, int ncol=1) "

Create an nrow-by-ncol symbolic primitive.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, const std::pair< int, int > &rc) "

Construct a symbolic primitive with given dimensions.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, const Sparsity &sp) "

Create symbolic primitive with a given sparsity pattern.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, const Sparsity &sp, int p) "

Create a vector of length p with with matrices with symbolic primitives of
given sparsity.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, int nrow, int ncol, int p) "

Create a vector of length p with nrow-by-ncol symbolic primitives.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, const Sparsity &sp, int p, int r) "

Create a vector of length r of vectors of length p with symbolic primitives
with given sparsity.

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::sym(const std::string &name, int nrow, int ncol, int p, int r) "

Create a vector of length r of vectors of length p with nrow-by-ncol
symbolic primitives.

";

%feature("docstring")  casadi::Matrix< DataType >::matrix_matrix(int op,
const Matrix< DataType > &x, const Matrix< DataType > &y) " [INTERNAL]
Create nodes by their ID.

";

%feature("docstring")  casadi::Matrix< DataType >::binary(int op, const
Matrix< DataType > &x, const Matrix< DataType > &y) " [INTERNAL]  Create
nodes by their ID.

";

%feature("docstring")  casadi::Matrix< DataType >::isInteger() const  "

Check if the matrix is integer-valued (note that false negative answers are
possible)

";

%feature("docstring")  casadi::GenericMatrix< Matrix< DataType >
>::get_colind() const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::Matrix< DataType >::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Matrix< DataType >::resetInput() " [INTERNAL]
Reset the marker for an input expression.

";


// File: classcasadi_1_1MinusInfSX.xml


// File: classcasadi_1_1MinusOneSX.xml


// File: classcasadi_1_1Monitor.xml


// File: classcasadi_1_1MultipleOutput.xml


// File: classcasadi_1_1Multiplication.xml


// File: classcasadi_1_1MX.xml


/*  Construct symbolic primitives  */

/* The \"sym\" function is intended to work in a similar way as \"sym\" used
in the Symbolic Toolbox for Matlab but instead creating a CasADi symbolic
primitive.

*/ %feature("docstring")  casadi::MX::attachAssert(const MX &y, const
std::string &fail_message="") const  "

returns itself, but with an assertion attached

If y does not evaluate to 1, a runtime error is raised

";

%feature("docstring") casadi::MX "

MX - Matrix expression.

The MX class is used to build up trees made up from MXNodes. It is a more
general graph representation than the scalar expression, SX, and much less
efficient for small objects. On the other hand, the class allows much more
general operations than does SX, in particular matrix valued operations and
calls to arbitrary differentiable functions.

The MX class is designed to have identical syntax with the Matrix<> template
class, and uses Matrix<double> as its internal representation of the values
at a node. By keeping the syntaxes identical, it is possible to switch from
one class to the other, as well as inlining MX functions to SXElement
functions.

Note that an operation is always \"lazy\", making a matrix multiplication
will create a matrix multiplication node, not perform the actual
multiplication.

Joel Andersson

C++ includes: mx.hpp ";

%feature("docstring")  casadi::MX::grad(const Function &f, int iind=0, int
oind=0) "

Gradient expression.

";

%feature("docstring")  casadi::MX::grad(const Function &f, const std::string
&iname, int oind=0) "

Gradient expression.

";

%feature("docstring")  casadi::MX::grad(const Function &f, int iind, const
std::string &oname) "

Gradient expression.

";

%feature("docstring")  casadi::MX::grad(const Function &f, const std::string
&iname, const std::string &oname) "

Gradient expression.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::MX::erase(const std::vector< int > &rr, const
std::vector< int > &cc, bool ind1=false) "

Erase a submatrix (leaving structural zeros in its place) Erase rows and/or
columns of a matrix.

";

%feature("docstring")  casadi::MX::erase(const std::vector< int > &rr, bool
ind1=false) "

Erase a submatrix (leaving structural zeros in its place) Erase elements of
a matrix.

";

%feature("docstring")  casadi::MX::monitor(const std::string &comment) const
"

Monitor an expression Returns itself, but with the side effect of printing
the nonzeros along with a comment.

";

%feature("docstring")  casadi::MX::isValidInput() const  "

Check if matrix can be used to define function inputs. Valid inputs for
MXFunctions are combinations of Reshape, concatenations and SymbolicMX.

";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const Slice
&rr) "

Set a submatrix, single argument

";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const Matrix<
int > &rr) "

Set a submatrix, single argument

";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const
Sparsity &sp) "

Set a submatrix, single argument

";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const Slice
&rr, const Slice &cc) " ";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const Slice
&rr, const Matrix< int > &cc) " ";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const Matrix<
int > &rr, const Slice &cc) " ";

%feature("docstring")  casadi::MX::set(const MX &m, bool ind1, const Matrix<
int > &rr, const Matrix< int > &cc) " ";

%feature("docstring")  casadi::MX::getTemp() const  " [INTERNAL]  Get the
temporary variable

";

%feature("docstring")  casadi::MX::hasDuplicates() "[INTERNAL]  Detect
duplicate symbolic expressions If there are symbolic primitives appearing
more than once, the function will return true and the names of the duplicate
expressions will be printed to userOut<true, PL_WARN>(). Note: Will mark the
node using MX::setTemp. Make sure to call resetInput() after usage.

";

%feature("docstring")  casadi::MX::binary(int op, const MX &x, const MX &y)
"

Create nodes by their ID.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sparsity() const "

Get the sparsity pattern.

";

%feature("docstring")  lift(const MX &x, const MX &x_guess) "

Lift the expression Experimental feature.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::size2() const "

Get the second dimension (i.e. number of columns)

";

%feature("docstring")  casadi::GenericMatrix< MX  >::size1() const "

Get the first dimension (i.e. number of rows)

";

%feature("docstring")  casadi::GenericMatrix< MX  >::iscolumn() const "

Check if the matrix is a column vector (i.e. size2()==1)

";

%feature("docstring")  casadi::MX::isMultiplication() const  "

Check if multiplication.

";

%feature("docstring") casadi::MX::~MX "[INTERNAL]  Destructor.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::isscalar(bool
scalar_and_dense=false) const "

Check if the matrix expression is scalar.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::MX::n_out() const  "

Number of outputs.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::isrow() const "

Check if the matrix is a row vector (i.e. size1()==1)

";

%feature("docstring")  casadi::MX::isEvaluationOutput() const  "

Check if evaluation output.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::MX::splitPrimitives(const MX &x) const  "

Split up an expression along symbolic primitives.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::ones(int nrow=1, int
ncol=1) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::ones(const Sparsity
&sp) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::ones(const std::pair<
int, int > &rc) "

Create a dense matrix or a matrix with specified sparsity with all entries
one.

";

%feature("docstring")  casadi::MX::getSparsity() const  "

Get an owning reference to the sparsity pattern.

";

%feature("docstring")  casadi::MX::isIdentity() const  "

check if identity

";

%feature("docstring")  casadi::GenericMatrix< MX  >::isdense() const "

Check if the matrix expression is dense.

";

%feature("docstring")  casadi::MX::isMinusOne() const  "

check if zero (note that false negative answers are possible)

";

%feature("docstring")  casadi::MX::inf(const Sparsity &sp) "

create a matrix with all inf

";

%feature("docstring")  casadi::MX::inf(int nrow=1, int ncol=1) "

create a matrix with all inf

";

%feature("docstring")  casadi::MX::inf(const std::pair< int, int > &rc) "

create a matrix with all inf

";

%feature("docstring")  matrix_expand(const MX &e, const std::vector< MX >
&boundary=std::vector< MX >(), const Dict &options=Dict()) "

Expand MX graph to SXFunction call.

Expand the given expression e, optionally supplying expressions contained in
it at which expansion should stop.

";

%feature("docstring")  matrix_expand(const std::vector< MX > &e, const
std::vector< MX > &boundary=std::vector< MX >(), const Dict &options=Dict())
"

Expand MX graph to SXFunction call.

Expand the given expression e, optionally supplying expressions contained in
it at which expansion should stop.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::colind(int col) const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::MX::isRegular() const  "

Checks if expression does not contain NaN or Inf.

";

%feature("docstring")  casadi::MX::getName() const  "

Get the name.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::get_colind() const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::MX::getDep(int ch=0) const  "

Get the nth dependency as MX.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::isvector() const "

Check if the matrix is a row or column vector.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::GenericMatrix< MX  >::nnz() const "

Get the number of (structural) non-zero elements.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::find(bool ind1=false)
const "

Get the location of all non-zero elements as they would appear in a Dense
matrix A : DenseMatrix 4 x 3 B : SparseMatrix 4 x 3 , 5 structural non-
zeros.

k = A.find() A[k] will contain the elements of A that are non-zero in B

";

%feature("docstring")  casadi::GenericMatrix< MX  >::dim() const "

Get string representation of dimensions. The representation is (nrow x ncol
= numel | size)

";

%feature("docstring")  find(const MX &x) "

Find first nonzero If failed, returns the number of rows.

";

%feature("docstring")  casadi::MX::isZero() const  "

check if zero (note that false negative answers are possible)

";

%feature("docstring")  graph_substitute(const MX &ex, const std::vector< MX
> &v, const std::vector< MX > &vdef) "

Substitute single expression in graph Substitute variable v with expression
vdef in an expression ex, preserving nodes.

";

%feature("docstring")  graph_substitute(const std::vector< MX > &ex, const
std::vector< MX > &v, const std::vector< MX > &vdef) "

Substitute multiple expressions in graph Substitute variable var with
expression expr in multiple expressions, preserving nodes.

";

%feature("docstring")  casadi::MX::getValue() const  "

Get the value (only for scalar constant nodes)

";

%feature("docstring")  casadi::MX::getEvaluationOutput() const  "

Get the index of evaluation output - only valid when isEvaluationoutput() is
true.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::get_row() const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::nnz_upper() const "

Get the number of non-zeros in the upper triangular half.

";

%feature("docstring") casadi::MX::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::MX::jac(const Function &f, int iind=0, int
oind=0, bool compact=false, bool symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::MX::jac(const Function &f, const std::string
&iname, int oind=0, bool compact=false, bool symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::MX::jac(const Function &f, int iind, const
std::string &oname, bool compact=false, bool symmetric=false) "

Jacobian expression.

";

%feature("docstring")  casadi::MX::jac(const Function &f, const std::string
&iname, const std::string &oname, bool compact=false, bool symmetric=false)
"

Jacobian expression.

";

%feature("docstring")  casadi::MX::getOutput(int oind=0) const  "

Get an output.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::zeros(int nrow=1, int
ncol=1) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::zeros(const Sparsity
&sp) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::zeros(const std::pair<
int, int > &rc) "

Create a dense matrix or a matrix with specified sparsity with all entries
zero.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::size() const "

Get the shape.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::size(int axis) const "

Get the size along a particular dimensions.

";

%feature("docstring")  casadi::MX::T() const  "

Transpose the matrix.

";

%feature("docstring")  casadi::MX::printme(const MX &y) const  " ";

%feature("docstring")  casadi::MX::joinPrimitives(std::vector< MX > &v)
const  "

Join an expression along symbolic primitives.

";

%feature("docstring")  casadi::MX::nan(const Sparsity &sp) "

create a matrix with all nan

";

%feature("docstring")  casadi::MX::nan(int nrow=1, int ncol=1) "

create a matrix with all nan

";

%feature("docstring")  casadi::MX::nan(const std::pair< int, int > &rc) "

create a matrix with all nan

";

%feature("docstring")  casadi::MX::isTranspose() const  "

Is the expression a transpose?

";

%feature("docstring")  casadi::GenericMatrix< MX  >::row(int el) const "

Get the sparsity pattern. See the Sparsity class for details.

";

%feature("docstring")  casadi::MX::isCommutative() const  "

Check if commutative operation.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::numel() const "

Get the number of elements.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::numel(int i) const "

Get the number of elements in slice (cf. MATLAB)

";

%feature("docstring")  casadi::MX::enlarge(int nrow, int ncol, const
std::vector< int > &rr, const std::vector< int > &cc, bool ind1=false) "

Enlarge matrix Make the matrix larger by inserting empty rows and columns,
keeping the existing non-zeros.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, int nrow=1, int ncol=1) "

Create an nrow-by-ncol symbolic primitive.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, const std::pair< int, int > &rc) "

Construct a symbolic primitive with given dimensions.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, const Sparsity &sp) "

Create symbolic primitive with a given sparsity pattern.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, const Sparsity &sp, int p) "

Create a vector of length p with with matrices with symbolic primitives of
given sparsity.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, int nrow, int ncol, int p) "

Create a vector of length p with nrow-by-ncol symbolic primitives.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, const Sparsity &sp, int p, int r) "

Create a vector of length r of vectors of length p with symbolic primitives
with given sparsity.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::sym(const std::string
&name, int nrow, int ncol, int p, int r) "

Create a vector of length r of vectors of length p with nrow-by-ncol
symbolic primitives.

";

%feature("docstring")  casadi::MX::setNZ(const MX &m, bool ind1, const Slice
&kk) "

Set a set of nonzeros

";

%feature("docstring")  casadi::MX::setNZ(const MX &m, bool ind1, const
Matrix< int > &kk) "

Set a set of nonzeros

";

%feature("docstring")  casadi::MX::isOne() const  "

check if zero (note that false negative answers are possible)

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const Slice
&rr) const  "

Get a submatrix, single argument

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const
Matrix< int > &rr) const  "

Get a submatrix, single argument

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const
Sparsity &sp) const  "

Get a submatrix, single argument

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const Slice
&rr, const Slice &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const Slice
&rr, const Matrix< int > &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const
Matrix< int > &rr, const Slice &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::MX::get(MX &output_m, bool ind1, const
Matrix< int > &rr, const Matrix< int > &cc) const  "

Get a submatrix, two arguments

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::MX::getFunction(int i=0) "

Get function.

";

%feature("docstring")  casadi::MX::numFunctions() const  "

Number of functions.

";

%feature("docstring") casadi::MX::__nonzero__ "

Returns the truth value of an MX expression.

";

%feature("docstring")  casadi::MX::resetInput() "[INTERNAL]  Reset the
marker for an input expression.

";

%feature("docstring")  casadi::MX::tang(const Function &f, int iind=0, int
oind=0) "

Tangent expression.

";

%feature("docstring")  casadi::MX::tang(const Function &f, const std::string
&iname, int oind=0) "

Tangent expression.

";

%feature("docstring")  casadi::MX::tang(const Function &f, int iind, const
std::string &oname) "

Tangent expression.

";

%feature("docstring")  casadi::MX::tang(const Function &f, const std::string
&iname, const std::string &oname) "

Tangent expression.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::istril() const "

Check if the matrix is lower triangular.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::isempty(bool
both=false) const "

Check if the sparsity is empty, i.e. if one of the dimensions is zero (or
optionally both dimensions)

";

%feature("docstring")  casadi::MX::zz_project(const Sparsity &sp, bool
intersect=false) const  "

Set sparse.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::istriu() const "

Check if the matrix is upper triangular.

";

%feature("docstring") casadi::MX::MX() "

Default constructor.

";

%feature("docstring") casadi::MX::MX(int nrow, int ncol) "

Create a sparse matrix with all structural zeros.

";

%feature("docstring") casadi::MX::MX(const Sparsity &sp) "

Create a sparse matrix from a sparsity pattern. Same as MX::ones(sparsity)

";

%feature("docstring") casadi::MX::MX(const Sparsity &sp, const MX &val) "

Construct matrix with a given sparsity and nonzeros.

";

%feature("docstring") casadi::MX::MX(double x) "

Create scalar constant (also implicit type conversion)

";

%feature("docstring") casadi::MX::MX(const MX &x) "

Copy constructor.

";

%feature("docstring") casadi::MX::MX(const std::vector< double > &x) "

Create vector constant (also implicit type conversion)

";

%feature("docstring") casadi::MX::MX(const Matrix< double > &x) "

Create sparse matrix constant (also implicit type conversion)

";

%feature("docstring")  casadi::MX::numPrimitives() const  "

Get the number of symbolic primitive Assumes isValidInput() returns true.

";

%feature("docstring")  casadi::MX::isBinary() const  "

Is binary operation.

";

%feature("docstring")  casadi::MX::isUnary() const  "

Is unary operation.

";

%feature("docstring")  casadi::MX::getOp() const  "

Get operation type.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::nnz_lower() const "

Get the number of non-zeros in the lower triangular half.

";

%feature("docstring")  casadi::MX::isNorm() const  "

Check if norm.

";

%feature("docstring")  casadi::MX::setTemp(int t) " [INTERNAL]  Set the
temporary variable.

";

%feature("docstring")  casadi::MX::getPrimitives() const  "

Get symbolic primitives.

";

%feature("docstring")  casadi::MX::getMatrixValue() const  "

Get the value (only for constant nodes)

";

%feature("docstring")  casadi::MX::isConstant() const  "

Check if constant.

";

%feature("docstring")  casadi::MX::mapping() const  "

Get an IMatrix representation of a GetNonzeros or SetNonzeros node.

";

%feature("docstring")  casadi::MX::getNZ(MX &output_m, bool ind1, const
Slice &kk) const  "

Get a set of nonzeros

";

%feature("docstring")  casadi::MX::getNZ(MX &output_m, bool ind1, const
Matrix< int > &kk) const  "

Get a set of nonzeros

";

%feature("docstring")  casadi::MX::isEvaluation() const  "

Check if evaluation.

";

%feature("docstring")  casadi::MX::isOperation(int op) const  "

Is it a certain operation.

";

%feature("docstring")  casadi::MX::getNdeps() const  "

Get the number of dependencies of a binary SXElement.

";

%feature("docstring")  casadi::MX::isSymbolic() const  "

Check if symbolic.

";

%feature("docstring")  casadi::GenericMatrix< MX  >::issquare() const "

Check if the matrix expression is square.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::GenericMatrix< MX  >::nnz_diag() const "

Get get the number of non-zeros on the diagonal.

";

%feature("docstring")  casadi::MX::unary(int op, const MX &x) "

Create nodes by their ID.

";


// File: classcasadi_1_1NanSX.xml


// File: classcasadi_1_1Newton.xml


// File: classcasadi_1_1NlpBuilder.xml


/*  Symbolic representation of the NLP  */

/* Data members

*/ %feature("docstring") casadi::NlpBuilder "

A symbolic NLP representation.

Joel Andersson

C++ includes: nlp_builder.hpp ";

%feature("docstring")  casadi::PrintableObject< NlpBuilder
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::PrintableObject< NlpBuilder
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::NlpBuilder::parseNL(const std::string
&filename, const Dict &options=Dict()) "

Parse an AMPL och PyOmo NL-file.

";

%feature("docstring")  casadi::NlpBuilder::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::NlpBuilder::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";


// File: classcasadi_1_1NlpSolver.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring") casadi::NlpSolver::NlpSolver() "

Default constructor.

";

%feature("docstring") casadi::NlpSolver::NlpSolver(const std::string &name,
const std::string &solver, const Function &nlp, const Dict &opts=Dict()) "

NLP solver factory (new syntax, includes initialization)

";

%feature("docstring") casadi::NlpSolver::NlpSolver(const std::string &name,
const std::string &solver, const SXDict &nlp, const Dict &opts=Dict()) "

Create an NLP solver from a dictionary with SX expressions.

";

%feature("docstring") casadi::NlpSolver::NlpSolver(const std::string &name,
const std::string &solver, const MXDict &nlp, const Dict &opts=Dict()) "

Create an NLP solver from a dictionary with MX expressions.

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::NlpSolver::jacG() "

Access the Hessian of the Lagrangian function.

>Input scheme: casadi::JacGInput (JACG_NUM_IN = 2) [jacGIn]

+-----------+-------+---------------------+
| Full name | Short |     Description     |
+===========+=======+=====================+
| JACG_X    | x     | Decision variable . |
+-----------+-------+---------------------+
| JACG_P    | p     | Fixed parameter .   |
+-----------+-------+---------------------+

>Output scheme: casadi::JacGOutput (JACG_NUM_OUT = 3) [jacGOut]

+-----------+-------+-------------------------------+
| Full name | Short |          Description          |
+===========+=======+===============================+
| JACG_JAC  | jac   | Jacobian of the constraints . |
+-----------+-------+-------------------------------+
| JACG_F    | f     | Objective function .          |
+-----------+-------+-------------------------------+
| JACG_G    | g     | Constraint function .         |
+-----------+-------+-------------------------------+

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::NlpSolver::nlp() "

Access the NLP.

>Input scheme: casadi::NlpSolverInput (NLP_SOLVER_NUM_IN = 8) [nlpSolverIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| NLP_SOLVER_X0          | x0                     | Decision variables,    |
|                        |                        | initial guess (nx x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_P           | p                      | Value of fixed         |
|                        |                        | parameters (np x 1) .  |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LBX         | lbx                    | Decision variables     |
|                        |                        | lower bound (nx x 1),  |
|                        |                        | default -inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_UBX         | ubx                    | Decision variables     |
|                        |                        | upper bound (nx x 1),  |
|                        |                        | default +inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LBG         | lbg                    | Constraints lower      |
|                        |                        | bound (ng x 1),        |
|                        |                        | default -inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_UBG         | ubg                    | Constraints upper      |
|                        |                        | bound (ng x 1),        |
|                        |                        | default +inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_X0      | lam_x0                 | Lagrange multipliers   |
|                        |                        | for bounds on X,       |
|                        |                        | initial guess (nx x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_G0      | lam_g0                 | Lagrange multipliers   |
|                        |                        | for bounds on G,       |
|                        |                        | initial guess (ng x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+

>Output scheme: casadi::NlpSolverOutput (NLP_SOLVER_NUM_OUT = 6) [nlpSolverOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| NLP_SOLVER_X           | x                      | Decision variables at  |
|                        |                        | the optimal solution   |
|                        |                        | (nx x 1) .             |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_F           | f                      | Cost function value at |
|                        |                        | the optimal solution   |
|                        |                        | (1 x 1) .              |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_G           | g                      | Constraints function   |
|                        |                        | at the optimal         |
|                        |                        | solution (ng x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_X       | lam_x                  | Lagrange multipliers   |
|                        |                        | for bounds on X at the |
|                        |                        | solution (nx x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_G       | lam_g                  | Lagrange multipliers   |
|                        |                        | for bounds on G at the |
|                        |                        | solution (ng x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_P       | lam_p                  | Lagrange multipliers   |
|                        |                        | for bounds on P at the |
|                        |                        | solution (np x 1) .    |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring")  casadi::NlpSolver::getReducedHessian() "

Get the reduced Hessian. Requires a patched sIPOPT installation, see CasADi
documentation.

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::NlpSolver::reportConstraints(std::ostream
&stream=casadi::userOut()) "

Prints out a human readable report about possible constraint violations,
after solving.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring") casadi::NlpSolver "

NlpSolver.

Solves the following parametric nonlinear program (NLP):

::

  min          F(x, p)
   x
  
  subject to
              LBX <=   x    <= UBX
              LBG <= G(x, p) <= UBG
                         p  == P
  
      nx: number of decision variables
      ng: number of constraints
      np: number of parameters
  



General information
===================



>Input scheme: casadi::NlpSolverInput (NLP_SOLVER_NUM_IN = 8) [nlpSolverIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| NLP_SOLVER_X0          | x0                     | Decision variables,    |
|                        |                        | initial guess (nx x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_P           | p                      | Value of fixed         |
|                        |                        | parameters (np x 1) .  |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LBX         | lbx                    | Decision variables     |
|                        |                        | lower bound (nx x 1),  |
|                        |                        | default -inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_UBX         | ubx                    | Decision variables     |
|                        |                        | upper bound (nx x 1),  |
|                        |                        | default +inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LBG         | lbg                    | Constraints lower      |
|                        |                        | bound (ng x 1),        |
|                        |                        | default -inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_UBG         | ubg                    | Constraints upper      |
|                        |                        | bound (ng x 1),        |
|                        |                        | default +inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_X0      | lam_x0                 | Lagrange multipliers   |
|                        |                        | for bounds on X,       |
|                        |                        | initial guess (nx x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_G0      | lam_g0                 | Lagrange multipliers   |
|                        |                        | for bounds on G,       |
|                        |                        | initial guess (ng x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+

>Output scheme: casadi::NlpSolverOutput (NLP_SOLVER_NUM_OUT = 6) [nlpSolverOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| NLP_SOLVER_X           | x                      | Decision variables at  |
|                        |                        | the optimal solution   |
|                        |                        | (nx x 1) .             |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_F           | f                      | Cost function value at |
|                        |                        | the optimal solution   |
|                        |                        | (1 x 1) .              |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_G           | g                      | Constraints function   |
|                        |                        | at the optimal         |
|                        |                        | solution (ng x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_X       | lam_x                  | Lagrange multipliers   |
|                        |                        | for bounds on X at the |
|                        |                        | solution (nx x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_G       | lam_g                  | Lagrange multipliers   |
|                        |                        | for bounds on G at the |
|                        |                        | solution (ng x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_P       | lam_p                  | Lagrange multipliers   |
|                        |                        | for bounds on P at the |
|                        |                        | solution (np x 1) .    |
+------------------------+------------------------+------------------------+

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode   c |
|              |              |              | according to | asadi::NlpSo |
|              |              |              | a given      | lverInternal |
|              |              |              | recipe (low- |              |
|              |              |              | level)  (qp) |              |
+--------------+--------------+--------------+--------------+--------------+
| eval_errors_ | OT_BOOLEAN   | false        | When errors  | casadi::NlpS |
| fatal        |              |              | occur during | olverInterna |
|              |              |              | evaluation   | l            |
|              |              |              | of           |              |
|              |              |              | f,g,...,stop |              |
|              |              |              | the          |              |
|              |              |              | iterations   |              |
+--------------+--------------+--------------+--------------+--------------+
| expand       | OT_BOOLEAN   | false        | Expand the   | casadi::NlpS |
|              |              |              | NLP function | olverInterna |
|              |              |              | in terms of  | l            |
|              |              |              | scalar       |              |
|              |              |              | operations,  |              |
|              |              |              | i.e. MX->SX  |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| grad_f       | OT_FUNCTION  | GenericType( | Function for | casadi::NlpS |
|              |              | )            | calculating  | olverInterna |
|              |              |              | the gradient | l            |
|              |              |              | of the       |              |
|              |              |              | objective    |              |
|              |              |              | (column, aut |              |
|              |              |              | ogenerated   |              |
|              |              |              | by default)  |              |
+--------------+--------------+--------------+--------------+--------------+
| grad_f_optio | OT_DICT      | GenericType( | Options for  | casadi::NlpS |
| ns           |              | )            | the autogene | olverInterna |
|              |              |              | rated        | l            |
|              |              |              | gradient of  |              |
|              |              |              | the          |              |
|              |              |              | objective.   |              |
+--------------+--------------+--------------+--------------+--------------+
| grad_lag     | OT_FUNCTION  | GenericType( | Function for | casadi::NlpS |
|              |              | )            | calculating  | olverInterna |
|              |              |              | the gradient | l            |
|              |              |              | of the       |              |
|              |              |              | Lagrangian ( |              |
|              |              |              | autogenerate |              |
|              |              |              | d by         |              |
|              |              |              | default)     |              |
+--------------+--------------+--------------+--------------+--------------+
| grad_lag_opt | OT_DICT      | GenericType( | Options for  | casadi::NlpS |
| ions         |              | )            | the autogene | olverInterna |
|              |              |              | rated        | l            |
|              |              |              | gradient of  |              |
|              |              |              | the          |              |
|              |              |              | Lagrangian.  |              |
+--------------+--------------+--------------+--------------+--------------+
| hess_lag     | OT_FUNCTION  | GenericType( | Function for | casadi::NlpS |
|              |              | )            | calculating  | olverInterna |
|              |              |              | the Hessian  | l            |
|              |              |              | of the       |              |
|              |              |              | Lagrangian ( |              |
|              |              |              | autogenerate |              |
|              |              |              | d by         |              |
|              |              |              | default)     |              |
+--------------+--------------+--------------+--------------+--------------+
| hess_lag_opt | OT_DICT      | GenericType( | Options for  | casadi::NlpS |
| ions         |              | )            | the autogene | olverInterna |
|              |              |              | rated        | l            |
|              |              |              | Hessian of   |              |
|              |              |              | the          |              |
|              |              |              | Lagrangian.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ignore_check | OT_BOOLEAN   | false        | If set to    | casadi::NlpS |
| _vec         |              |              | true, the    | olverInterna |
|              |              |              | input shape  | l            |
|              |              |              | of F will    |              |
|              |              |              | not be       |              |
|              |              |              | checked.     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| iteration_ca | OT_FUNCTION  | GenericType( | A function   | casadi::NlpS |
| llback       |              | )            | that will be | olverInterna |
|              |              |              | called at    | l            |
|              |              |              | each         |              |
|              |              |              | iteration    |              |
|              |              |              | with the     |              |
|              |              |              | solver as    |              |
|              |              |              | input. Check |              |
|              |              |              | documentatio |              |
|              |              |              | n of         |              |
|              |              |              | Callback .   |              |
+--------------+--------------+--------------+--------------+--------------+
| iteration_ca | OT_BOOLEAN   | false        | If set to    | casadi::NlpS |
| llback_ignor |              |              | true, errors | olverInterna |
| e_errors     |              |              | thrown by it | l            |
|              |              |              | eration_call |              |
|              |              |              | back will be |              |
|              |              |              | ignored.     |              |
+--------------+--------------+--------------+--------------+--------------+
| iteration_ca | OT_INTEGER   | 1            | Only call    | casadi::NlpS |
| llback_step  |              |              | the callback | olverInterna |
|              |              |              | function     | l            |
|              |              |              | every few    |              |
|              |              |              | iterations.  |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_f        | OT_FUNCTION  | GenericType( | Function for | casadi::NlpS |
|              |              | )            | calculating  | olverInterna |
|              |              |              | the Jacobian | l            |
|              |              |              | of the       |              |
|              |              |              | objective    |              |
|              |              |              | (sparse row, |              |
|              |              |              | autogenerate |              |
|              |              |              | d by         |              |
|              |              |              | default)     |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_f_option | OT_DICT      | GenericType( | Options for  | casadi::NlpS |
| s            |              | )            | the autogene | olverInterna |
|              |              |              | rated        | l            |
|              |              |              | Jacobian of  |              |
|              |              |              | the          |              |
|              |              |              | objective.   |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_g        | OT_FUNCTION  | GenericType( | Function for | casadi::NlpS |
|              |              | )            | calculating  | olverInterna |
|              |              |              | the Jacobian | l            |
|              |              |              | of the       |              |
|              |              |              | constraints  |              |
|              |              |              | (autogenerat |              |
|              |              |              | ed by        |              |
|              |              |              | default)     |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_g_option | OT_DICT      | GenericType( | Options for  | casadi::NlpS |
| s            |              | )            | the autogene | olverInterna |
|              |              |              | rated        | l            |
|              |              |              | Jacobian of  |              |
|              |              |              | the          |              |
|              |              |              | constraints. |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp |              |
|              |              |              | uts)         |              |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose_init | OT_BOOLEAN   | false        | Print out    | casadi::NlpS |
|              |              |              | timing       | olverInterna |
|              |              |              | information  | l            |
|              |              |              | about the    |              |
|              |              |              | different    |              |
|              |              |              | stages of in |              |
|              |              |              | itialization |              |
+--------------+--------------+--------------+--------------+--------------+
| warn_initial | OT_BOOLEAN   | false        | Warn if the  | casadi::NlpS |
| _bounds      |              |              | initial      | olverInterna |
|              |              |              | guess does   | l            |
|              |              |              | not satisfy  |              |
|              |              |              | LBX and UBX  |              |
+--------------+--------------+--------------+--------------+--------------+

>List of available stats

+------------------------------+---------------------------+
|              Id              |          Used in          |
+==============================+===========================+
| base class init time         | casadi::NlpSolverInternal |
+------------------------------+---------------------------+
| constraint jacobian gen time | casadi::NlpSolverInternal |
+------------------------------+---------------------------+
| grad lag gen time            | casadi::NlpSolverInternal |
+------------------------------+---------------------------+
| hess lag gen time            | casadi::NlpSolverInternal |
+------------------------------+---------------------------+
| hess lag sparsity time       | casadi::NlpSolverInternal |
+------------------------------+---------------------------+
| objective gradient gen time  | casadi::NlpSolverInternal |
+------------------------------+---------------------------+
| objective jacobian gen time  | casadi::NlpSolverInternal |
+------------------------------+---------------------------+

List of plugins
===============



- ipopt

- knitro

- snopt

- worhp

- scpgen

- sqpmethod

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
NlpSolver.doc(\"myextraplugin\")



--------------------------------------------------------------------------------

ipopt
-----



When in warmstart mode, output NLP_SOLVER_LAM_X may be used as input

NOTE: Even when max_iter == 0, it is not guaranteed that
input(NLP_SOLVER_X0) == output(NLP_SOLVER_X). Indeed if bounds on X or
constraints are unmet, they will differ.

For a good tutorial on IPOPT,
seehttp://drops.dagstuhl.de/volltexte/2009/2089/pdf/09061.WaechterAndreas.Paper.2089.pdf

A good resource about the algorithms in IPOPT is: Wachter and L. T. Biegler,
On the Implementation of an Interior-Point Filter Line-Search Algorithm for
Large-Scale Nonlinear Programming, Mathematical Programming 106(1), pp.
25-57, 2006 (As Research Report RC 23149, IBM T. J. Watson Research Center,
Yorktown, USA

Caveats: with default options, multipliers for the decision variables are
wrong for equality constraints. Change the 'fixed_variable_treatment' to
'make_constraint' or 'relax_bounds' to obtain correct results.

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| accept_after_ma | OT_INTEGER      | -1              | Accept a trial  |
| x_steps         |                 |                 | point after     |
|                 |                 |                 | maximal this    |
|                 |                 |                 | number of       |
|                 |                 |                 | steps. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| accept_every_tr | OT_STRING       | no              | Always accept   |
| ial_step        |                 |                 | the first trial |
|                 |                 |                 | step. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| acceptable_comp | OT_REAL         | 0.010           | \"Acceptance\"    |
| l_inf_tol       |                 |                 | threshold for   |
|                 |                 |                 | the             |
|                 |                 |                 | complementarity |
|                 |                 |                 | conditions.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| acceptable_cons | OT_REAL         | 0.010           | \"Acceptance\"    |
| tr_viol_tol     |                 |                 | threshold for   |
|                 |                 |                 | the constraint  |
|                 |                 |                 | violation. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| acceptable_dual | OT_REAL         | 1.000e+10       | \"Acceptance\"    |
| _inf_tol        |                 |                 | threshold for   |
|                 |                 |                 | the dual        |
|                 |                 |                 | infeasibility.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| acceptable_iter | OT_INTEGER      | 15              | Number of       |
|                 |                 |                 | \"acceptable\"    |
|                 |                 |                 | iterates before |
|                 |                 |                 | triggering      |
|                 |                 |                 | termination.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| acceptable_obj_ | OT_REAL         | 1.000e+20       | \"Acceptance\"    |
| change_tol      |                 |                 | stopping        |
|                 |                 |                 | criterion based |
|                 |                 |                 | on objective    |
|                 |                 |                 | function        |
|                 |                 |                 | change. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| acceptable_tol  | OT_REAL         | 0.000           | \"Acceptable\"    |
|                 |                 |                 | convergence     |
|                 |                 |                 | tolerance       |
|                 |                 |                 | (relative).     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_glo | OT_STRING       | obj-constr-     | Globalization   |
| balization      |                 | filter          | strategy for    |
|                 |                 |                 | the adaptive mu |
|                 |                 |                 | selection mode. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_kkt | OT_STRING       | 2-norm-squared  | Norm used for   |
| _norm_type      |                 |                 | the KKT error   |
|                 |                 |                 | in the adaptive |
|                 |                 |                 | mu              |
|                 |                 |                 | globalization   |
|                 |                 |                 | strategies.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_kkt | OT_REAL         | 1.000           | Sufficient      |
| error_red_fact  |                 |                 | decrease factor |
|                 |                 |                 | for \"kkt-error\" |
|                 |                 |                 | globalization   |
|                 |                 |                 | strategy. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_kkt | OT_INTEGER      | 4               | Maximum number  |
| error_red_iters |                 |                 | of iterations   |
|                 |                 |                 | requiring       |
|                 |                 |                 | sufficient      |
|                 |                 |                 | progress. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_mon | OT_REAL         | 0.800           | Determines the  |
| otone_init_fact |                 |                 | initial value   |
| or              |                 |                 | of the barrier  |
|                 |                 |                 | parameter when  |
|                 |                 |                 | switching to    |
|                 |                 |                 | the monotone    |
|                 |                 |                 | mode. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_res | OT_STRING       | no              | Indicates if    |
| tore_previous_i |                 |                 | the previous    |
| terate          |                 |                 | iterate should  |
|                 |                 |                 | be restored if  |
|                 |                 |                 | the monotone    |
|                 |                 |                 | mode is         |
|                 |                 |                 | entered. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| adaptive_mu_saf | OT_REAL         | 0               | (see IPOPT      |
| eguard_factor   |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| alpha_for_y     | OT_STRING       | primal          | Method to       |
|                 |                 |                 | determine the   |
|                 |                 |                 | step size for   |
|                 |                 |                 | constraint      |
|                 |                 |                 | multipliers.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| alpha_for_y_tol | OT_REAL         | 10              | Tolerance for   |
|                 |                 |                 | switching to    |
|                 |                 |                 | full equality   |
|                 |                 |                 | multiplier      |
|                 |                 |                 | steps. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| alpha_min_frac  | OT_REAL         | 0.050           | Safety factor   |
|                 |                 |                 | for the minimal |
|                 |                 |                 | step size       |
|                 |                 |                 | (before         |
|                 |                 |                 | switching to    |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase). (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| alpha_red_facto | OT_REAL         | 0.500           | Fractional      |
| r               |                 |                 | reduction of    |
|                 |                 |                 | the trial step  |
|                 |                 |                 | size in the     |
|                 |                 |                 | backtracking    |
|                 |                 |                 | line search.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| barrier_tol_fac | OT_REAL         | 10              | Factor for mu   |
| tor             |                 |                 | in barrier stop |
|                 |                 |                 | test. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| bound_frac      | OT_REAL         | 0.010           | Desired minimum |
|                 |                 |                 | relative        |
|                 |                 |                 | distance from   |
|                 |                 |                 | the initial     |
|                 |                 |                 | point to bound. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| bound_mult_init | OT_STRING       | constant        | Initialization  |
| _method         |                 |                 | method for      |
|                 |                 |                 | bound           |
|                 |                 |                 | multipliers     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| bound_mult_init | OT_REAL         | 1               | Initial value   |
| _val            |                 |                 | for the bound   |
|                 |                 |                 | multipliers.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| bound_mult_rese | OT_REAL         | 1000            | Threshold for   |
| t_threshold     |                 |                 | resetting bound |
|                 |                 |                 | multipliers     |
|                 |                 |                 | after the       |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| bound_push      | OT_REAL         | 0.010           | Desired minimum |
|                 |                 |                 | absolute        |
|                 |                 |                 | distance from   |
|                 |                 |                 | the initial     |
|                 |                 |                 | point to bound. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| bound_relax_fac | OT_REAL         | 0.000           | Factor for      |
| tor             |                 |                 | initial         |
|                 |                 |                 | relaxation of   |
|                 |                 |                 | the bounds.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| check_derivativ | OT_STRING       | no              | Indicates       |
| es_for_naninf   |                 |                 | whether it is   |
|                 |                 |                 | desired to      |
|                 |                 |                 | check for       |
|                 |                 |                 | Nan/Inf in      |
|                 |                 |                 | derivative      |
|                 |                 |                 | matrices (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| chi_cup         | OT_REAL         | 1.500           | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| chi_hat         | OT_REAL         | 2               | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| chi_tilde       | OT_REAL         | 5               | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| compl_inf_tol   | OT_REAL         | 0.000           | Desired         |
|                 |                 |                 | threshold for   |
|                 |                 |                 | the             |
|                 |                 |                 | complementarity |
|                 |                 |                 | conditions.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| con_integer_md  | OT_DICT         | None            | Integer         |
|                 |                 |                 | metadata (a     |
|                 |                 |                 | dictionary with |
|                 |                 |                 | lists of        |
|                 |                 |                 | integers) about |
|                 |                 |                 | constraints to  |
|                 |                 |                 | be passed to    |
|                 |                 |                 | IPOPT           |
+-----------------+-----------------+-----------------+-----------------+
| con_numeric_md  | OT_DICT         | None            | Numeric         |
|                 |                 |                 | metadata (a     |
|                 |                 |                 | dictionary with |
|                 |                 |                 | lists of reals) |
|                 |                 |                 | about           |
|                 |                 |                 | constraints to  |
|                 |                 |                 | be passed to    |
|                 |                 |                 | IPOPT           |
+-----------------+-----------------+-----------------+-----------------+
| con_string_md   | OT_DICT         | None            | String metadata |
|                 |                 |                 | (a dictionary   |
|                 |                 |                 | with lists of   |
|                 |                 |                 | strings) about  |
|                 |                 |                 | constraints to  |
|                 |                 |                 | be passed to    |
|                 |                 |                 | IPOPT           |
+-----------------+-----------------+-----------------+-----------------+
| constr_mult_ini | OT_REAL         | 1000            | Maximum allowed |
| t_max           |                 |                 | least-square    |
|                 |                 |                 | guess of        |
|                 |                 |                 | constraint      |
|                 |                 |                 | multipliers.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| constr_mult_res | OT_REAL         | 0               | Threshold for   |
| et_threshold    |                 |                 | resetting       |
|                 |                 |                 | equality and    |
|                 |                 |                 | inequality      |
|                 |                 |                 | multipliers     |
|                 |                 |                 | after           |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| constr_viol_tol | OT_REAL         | 0.000           | Desired         |
|                 |                 |                 | threshold for   |
|                 |                 |                 | the constraint  |
|                 |                 |                 | violation. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| constraint_viol | OT_STRING       | 1-norm          | Norm to be used |
| ation_norm_type |                 |                 | for the         |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation in    |
|                 |                 |                 | the line        |
|                 |                 |                 | search. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| corrector_compl | OT_REAL         | 1               | Complementarity |
| _avrg_red_fact  |                 |                 | tolerance       |
|                 |                 |                 | factor for      |
|                 |                 |                 | accepting       |
|                 |                 |                 | corrector step  |
|                 |                 |                 | (unsupported!). |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| corrector_type  | OT_STRING       | none            | The type of     |
|                 |                 |                 | corrector steps |
|                 |                 |                 | that should be  |
|                 |                 |                 | taken           |
|                 |                 |                 | (unsupported!). |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| delta           | OT_REAL         | 1               | Multiplier for  |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation in    |
|                 |                 |                 | the switching   |
|                 |                 |                 | rule. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| delta_y_max     | OT_REAL         | 1.000e+12       | a parameter     |
|                 |                 |                 | used to check   |
|                 |                 |                 | if the fast     |
|                 |                 |                 | direction can   |
|                 |                 |                 | be used asthe   |
|                 |                 |                 | line search     |
|                 |                 |                 | direction (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| dependency_dete | OT_STRING       | no              | Indicates if    |
| ction_with_rhs  |                 |                 | the right hand  |
|                 |                 |                 | sides of the    |
|                 |                 |                 | constraints     |
|                 |                 |                 | should be       |
|                 |                 |                 | considered      |
|                 |                 |                 | during          |
|                 |                 |                 | dependency      |
|                 |                 |                 | detection (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| dependency_dete | OT_STRING       | none            | Indicates which |
| ctor            |                 |                 | linear solver   |
|                 |                 |                 | should be used  |
|                 |                 |                 | to detect       |
|                 |                 |                 | linearly        |
|                 |                 |                 | dependent       |
|                 |                 |                 | equality        |
|                 |                 |                 | constraints.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| derivative_test | OT_STRING       | none            | Enable          |
|                 |                 |                 | derivative      |
|                 |                 |                 | checker (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| derivative_test | OT_INTEGER      | -2              | Index of first  |
| _first_index    |                 |                 | quantity to be  |
|                 |                 |                 | checked by      |
|                 |                 |                 | derivative      |
|                 |                 |                 | checker (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| derivative_test | OT_REAL         | 0.000           | Size of the     |
| _perturbation   |                 |                 | finite          |
|                 |                 |                 | difference      |
|                 |                 |                 | perturbation in |
|                 |                 |                 | derivative      |
|                 |                 |                 | test. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| derivative_test | OT_STRING       | no              | Indicates       |
| _print_all      |                 |                 | whether         |
|                 |                 |                 | information for |
|                 |                 |                 | all estimated   |
|                 |                 |                 | derivatives     |
|                 |                 |                 | should be       |
|                 |                 |                 | printed. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| derivative_test | OT_REAL         | 0.000           | Threshold for   |
| _tol            |                 |                 | indicating      |
|                 |                 |                 | wrong           |
|                 |                 |                 | derivative.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| diverging_itera | OT_REAL         | 1.000e+20       | Threshold for   |
| tes_tol         |                 |                 | maximal value   |
|                 |                 |                 | of primal       |
|                 |                 |                 | iterates. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| dual_inf_tol    | OT_REAL         | 1               | Desired         |
|                 |                 |                 | threshold for   |
|                 |                 |                 | the dual        |
|                 |                 |                 | infeasibility.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| epsilon_c       | OT_REAL         | 0.010           | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| eta_min         | OT_REAL         | 10              | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| eta_penalty     | OT_REAL         | 0.000           | Relaxation      |
|                 |                 |                 | factor in the   |
|                 |                 |                 | Armijo          |
|                 |                 |                 | condition for   |
|                 |                 |                 | the penalty     |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| eta_phi         | OT_REAL         | 0.000           | Relaxation      |
|                 |                 |                 | factor in the   |
|                 |                 |                 | Armijo          |
|                 |                 |                 | condition. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| evaluate_orig_o | OT_STRING       | yes             | Determines if   |
| bj_at_resto_tri |                 |                 | the original    |
| al              |                 |                 | objective       |
|                 |                 |                 | function should |
|                 |                 |                 | be evaluated at |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase trial     |
|                 |                 |                 | points. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| expect_infeasib | OT_STRING       | no              | Enable          |
| le_problem      |                 |                 | heuristics to   |
|                 |                 |                 | quickly detect  |
|                 |                 |                 | an infeasible   |
|                 |                 |                 | problem. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| expect_infeasib | OT_REAL         | 0.001           | Threshold for   |
| le_problem_ctol |                 |                 | disabling \"expe |
|                 |                 |                 | ct_infeasible_p |
|                 |                 |                 | roblem\" option. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| expect_infeasib | OT_REAL         | 100000000       | Multiplier      |
| le_problem_ytol |                 |                 | threshold for   |
|                 |                 |                 | activating \"exp |
|                 |                 |                 | ect_infeasible_ |
|                 |                 |                 | problem\"        |
|                 |                 |                 | option. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| fast_des_fact   | OT_REAL         | 0.100           | a parameter     |
|                 |                 |                 | used to check   |
|                 |                 |                 | if the fast     |
|                 |                 |                 | direction can   |
|                 |                 |                 | be used asthe   |
|                 |                 |                 | line search     |
|                 |                 |                 | direction (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| fast_step_compu | OT_STRING       | no              | Indicates if    |
| tation          |                 |                 | the linear      |
|                 |                 |                 | system should   |
|                 |                 |                 | be solved       |
|                 |                 |                 | quickly. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| file_print_leve | OT_INTEGER      | 5               | Verbosity level |
| l               |                 |                 | for output      |
|                 |                 |                 | file. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| filter_margin_f | OT_REAL         | 0.000           | Factor          |
| act             |                 |                 | determining     |
|                 |                 |                 | width of margin |
|                 |                 |                 | for obj-constr- |
|                 |                 |                 | filter adaptive |
|                 |                 |                 | globalization   |
|                 |                 |                 | strategy. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| filter_max_marg | OT_REAL         | 1               | Maximum width   |
| in              |                 |                 | of margin in    |
|                 |                 |                 | obj-constr-     |
|                 |                 |                 | filter adaptive |
|                 |                 |                 | globalization   |
|                 |                 |                 | strategy. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| filter_reset_tr | OT_INTEGER      | 5               | Number of       |
| igger           |                 |                 | iterations that |
|                 |                 |                 | trigger the     |
|                 |                 |                 | filter reset.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| findiff_perturb | OT_REAL         | 0.000           | Size of the     |
| ation           |                 |                 | finite          |
|                 |                 |                 | difference      |
|                 |                 |                 | perturbation    |
|                 |                 |                 | for derivative  |
|                 |                 |                 | approximation.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| first_hessian_p | OT_REAL         | 0.000           | Size of first   |
| erturbation     |                 |                 | x-s             |
|                 |                 |                 | perturbation    |
|                 |                 |                 | tried. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| fixed_mu_oracle | OT_STRING       | average_compl   | Oracle for the  |
|                 |                 |                 | barrier         |
|                 |                 |                 | parameter when  |
|                 |                 |                 | switching to    |
|                 |                 |                 | fixed mode.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| fixed_variable_ | OT_STRING       | make_parameter  | Determines how  |
| treatment       |                 |                 | fixed variables |
|                 |                 |                 | should be       |
|                 |                 |                 | handled. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| gamma_hat       | OT_REAL         | 0.040           | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| gamma_phi       | OT_REAL         | 0.000           | Relaxation      |
|                 |                 |                 | factor in the   |
|                 |                 |                 | filter margin   |
|                 |                 |                 | for the barrier |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| gamma_theta     | OT_REAL         | 0.000           | Relaxation      |
|                 |                 |                 | factor in the   |
|                 |                 |                 | filter margin   |
|                 |                 |                 | for the         |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| gamma_tilde     | OT_REAL         | 4               | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| hessian_approxi | OT_STRING       | exact           | Indicates what  |
| mation          |                 |                 | Hessian         |
|                 |                 |                 | information is  |
|                 |                 |                 | to be used.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| hessian_approxi | OT_STRING       | nonlinear-      | Indicates in    |
| mation_space    |                 | variables       | which subspace  |
|                 |                 |                 | the Hessian     |
|                 |                 |                 | information is  |
|                 |                 |                 | to be           |
|                 |                 |                 | approximated.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| hessian_constan | OT_STRING       | no              | Indicates       |
| t               |                 |                 | whether the     |
|                 |                 |                 | problem is a    |
|                 |                 |                 | quadratic       |
|                 |                 |                 | problem (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| honor_original_ | OT_STRING       | yes             | Indicates       |
| bounds          |                 |                 | whether final   |
|                 |                 |                 | points should   |
|                 |                 |                 | be projected    |
|                 |                 |                 | into original   |
|                 |                 |                 | bounds. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| inf_pr_output   | OT_STRING       | original        | Determines what |
|                 |                 |                 | value is        |
|                 |                 |                 | printed in the  |
|                 |                 |                 | \"inf_pr\" output |
|                 |                 |                 | column. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| jac_c_constant  | OT_STRING       | no              | Indicates       |
|                 |                 |                 | whether all     |
|                 |                 |                 | equality        |
|                 |                 |                 | constraints are |
|                 |                 |                 | linear (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| jac_d_constant  | OT_STRING       | no              | Indicates       |
|                 |                 |                 | whether all     |
|                 |                 |                 | inequality      |
|                 |                 |                 | constraints are |
|                 |                 |                 | linear (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| jacobian_approx | OT_STRING       | exact           | Specifies       |
| imation         |                 |                 | technique to    |
|                 |                 |                 | compute         |
|                 |                 |                 | constraint      |
|                 |                 |                 | Jacobian (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| jacobian_regula | OT_REAL         | 0.250           | Exponent for mu |
| rization_expone |                 |                 | in the          |
| nt              |                 |                 | regularization  |
|                 |                 |                 | for rank-       |
|                 |                 |                 | deficient       |
|                 |                 |                 | constraint      |
|                 |                 |                 | Jacobians. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| jacobian_regula | OT_REAL         | 0.000           | Size of the     |
| rization_value  |                 |                 | regularization  |
|                 |                 |                 | for rank-       |
|                 |                 |                 | deficient       |
|                 |                 |                 | constraint      |
|                 |                 |                 | Jacobians. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| kappa_d         | OT_REAL         | 0.000           | Weight for      |
|                 |                 |                 | linear damping  |
|                 |                 |                 | term (to handle |
|                 |                 |                 | one-sided       |
|                 |                 |                 | bounds). (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| kappa_sigma     | OT_REAL         | 1.000e+10       | Factor limiting |
|                 |                 |                 | the deviation   |
|                 |                 |                 | of dual         |
|                 |                 |                 | variables from  |
|                 |                 |                 | primal          |
|                 |                 |                 | estimates. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| kappa_soc       | OT_REAL         | 0.990           | Factor in the   |
|                 |                 |                 | sufficient      |
|                 |                 |                 | reduction rule  |
|                 |                 |                 | for second      |
|                 |                 |                 | order           |
|                 |                 |                 | correction.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| kappa_x_dis     | OT_REAL         | 100             | a parameter     |
|                 |                 |                 | used to check   |
|                 |                 |                 | if the fast     |
|                 |                 |                 | direction can   |
|                 |                 |                 | be used asthe   |
|                 |                 |                 | line search     |
|                 |                 |                 | direction (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| kappa_y_dis     | OT_REAL         | 10000           | a parameter     |
|                 |                 |                 | used to check   |
|                 |                 |                 | if the fast     |
|                 |                 |                 | direction can   |
|                 |                 |                 | be used asthe   |
|                 |                 |                 | line search     |
|                 |                 |                 | direction (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| least_square_in | OT_STRING       | no              | Least square    |
| it_duals        |                 |                 | initialization  |
|                 |                 |                 | of all dual     |
|                 |                 |                 | variables (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| least_square_in | OT_STRING       | no              | Least square    |
| it_primal       |                 |                 | initialization  |
|                 |                 |                 | of the primal   |
|                 |                 |                 | variables (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_STRING       | sherman-        | Strategy for    |
| aug_solver      |                 | morrison        | solving the     |
|                 |                 |                 | augmented       |
|                 |                 |                 | system for low- |
|                 |                 |                 | rank Hessian.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_REAL         | 1               | Value for B0 in |
| init_val        |                 |                 | low-rank        |
|                 |                 |                 | update. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_REAL         | 100000000       | Upper bound on  |
| init_val_max    |                 |                 | value for B0 in |
|                 |                 |                 | low-rank        |
|                 |                 |                 | update. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_REAL         | 0.000           | Lower bound on  |
| init_val_min    |                 |                 | value for B0 in |
|                 |                 |                 | low-rank        |
|                 |                 |                 | update. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_STRING       | scalar1         | Initialization  |
| initialization  |                 |                 | strategy for    |
|                 |                 |                 | the limited     |
|                 |                 |                 | memory quasi-   |
|                 |                 |                 | Newton          |
|                 |                 |                 | approximation.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_INTEGER      | 6               | Maximum size of |
| max_history     |                 |                 | the history for |
|                 |                 |                 | the limited     |
|                 |                 |                 | quasi-Newton    |
|                 |                 |                 | Hessian         |
|                 |                 |                 | approximation.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_INTEGER      | 2               | Threshold for   |
| max_skipping    |                 |                 | successive      |
|                 |                 |                 | iterations      |
|                 |                 |                 | where update is |
|                 |                 |                 | skipped. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_STRING       | no              | Determines if   |
| special_for_res |                 |                 | the quasi-      |
| to              |                 |                 | Newton updates  |
|                 |                 |                 | should be       |
|                 |                 |                 | special during  |
|                 |                 |                 | the restoration |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| limited_memory_ | OT_STRING       | bfgs            | Quasi-Newton    |
| update_type     |                 |                 | update formula  |
|                 |                 |                 | for the limited |
|                 |                 |                 | memory          |
|                 |                 |                 | approximation.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| line_search_met | OT_STRING       | filter          | Globalization   |
| hod             |                 |                 | method used in  |
|                 |                 |                 | backtracking    |
|                 |                 |                 | line search     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| linear_scaling_ | OT_STRING       | yes             | Flag indicating |
| on_demand       |                 |                 | that linear     |
|                 |                 |                 | scaling is only |
|                 |                 |                 | done if it      |
|                 |                 |                 | seems required. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| linear_solver   | OT_STRING       | mumps           | Linear solver   |
|                 |                 |                 | used for step   |
|                 |                 |                 | computations.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| linear_system_s | OT_STRING       | none            | Method for      |
| caling          |                 |                 | scaling the     |
|                 |                 |                 | linear system.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_ignore_sin | OT_STRING       | no              | Enables MA27's  |
| gularity        |                 |                 | ability to      |
|                 |                 |                 | solve a linear  |
|                 |                 |                 | system even if  |
|                 |                 |                 | the matrix is   |
|                 |                 |                 | singular. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_la_init_fa | OT_REAL         | 5               | Real workspace  |
| ctor            |                 |                 | memory for      |
|                 |                 |                 | MA27. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_liw_init_f | OT_REAL         | 5               | Integer         |
| actor           |                 |                 | workspace       |
|                 |                 |                 | memory for      |
|                 |                 |                 | MA27. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_meminc_fac | OT_REAL         | 10              | Increment       |
| tor             |                 |                 | factor for      |
|                 |                 |                 | workspace size  |
|                 |                 |                 | for MA27. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_pivtol     | OT_REAL         | 0.000           | Pivot tolerance |
|                 |                 |                 | for the linear  |
|                 |                 |                 | solver MA27.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_pivtolmax  | OT_REAL         | 0.000           | Maximum pivot   |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | the linear      |
|                 |                 |                 | solver MA27.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma27_skip_inert | OT_STRING       | no              | Always pretend  |
| ia_check        |                 |                 | inertia is      |
|                 |                 |                 | correct. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma28_pivtol     | OT_REAL         | 0.010           | Pivot tolerance |
|                 |                 |                 | for linear      |
|                 |                 |                 | solver MA28.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_automatic_ | OT_STRING       | yes             | Controls MA57   |
| scaling         |                 |                 | automatic       |
|                 |                 |                 | scaling (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_block_size | OT_INTEGER      | 16              | Controls block  |
|                 |                 |                 | size used by    |
|                 |                 |                 | Level 3 BLAS in |
|                 |                 |                 | MA57BD (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_node_amalg | OT_INTEGER      | 16              | Node            |
| amation         |                 |                 | amalgamation    |
|                 |                 |                 | parameter (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_pivot_orde | OT_INTEGER      | 5               | Controls pivot  |
| r               |                 |                 | order in MA57   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_pivtol     | OT_REAL         | 0.000           | Pivot tolerance |
|                 |                 |                 | for the linear  |
|                 |                 |                 | solver MA57.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_pivtolmax  | OT_REAL         | 0.000           | Maximum pivot   |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | the linear      |
|                 |                 |                 | solver MA57.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_pre_alloc  | OT_REAL         | 1.050           | Safety factor   |
|                 |                 |                 | for work space  |
|                 |                 |                 | memory          |
|                 |                 |                 | allocation for  |
|                 |                 |                 | the linear      |
|                 |                 |                 | solver MA57.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma57_small_pivo | OT_INTEGER      | 0               | If set to 1,    |
| t_flag          |                 |                 | then when small |
|                 |                 |                 | entries defined |
|                 |                 |                 | by CNTL(2) are  |
|                 |                 |                 | detected they   |
|                 |                 |                 | are removed and |
|                 |                 |                 | the             |
|                 |                 |                 | corresponding   |
|                 |                 |                 | pivots placed   |
|                 |                 |                 | at the end of   |
|                 |                 |                 | the             |
|                 |                 |                 | factorization.  |
|                 |                 |                 | This can be     |
|                 |                 |                 | particularly    |
|                 |                 |                 | efficient if    |
|                 |                 |                 | the matrix is   |
|                 |                 |                 | highly rank     |
|                 |                 |                 | deficient. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma86_nemin      | OT_INTEGER      | 32              | Node            |
|                 |                 |                 | Amalgamation    |
|                 |                 |                 | parameter (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma86_print_leve | OT_INTEGER      | 0               | Debug printing  |
| l               |                 |                 | level for the   |
|                 |                 |                 | linear solver   |
|                 |                 |                 | MA86 (see IPOPT |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma86_small      | OT_REAL         | 0.000           | Zero Pivot      |
|                 |                 |                 | Threshold (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma86_static     | OT_REAL         | 0               | Static Pivoting |
|                 |                 |                 | Threshold (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma86_u          | OT_REAL         | 0.000           | Pivoting        |
|                 |                 |                 | Threshold (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| ma86_umax       | OT_REAL         | 0.000           | Maximum         |
|                 |                 |                 | Pivoting        |
|                 |                 |                 | Threshold (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| magic_steps     | OT_STRING       | no              | Enables magic   |
|                 |                 |                 | steps. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_cpu_time    | OT_REAL         | 1000000         | Maximum number  |
|                 |                 |                 | of CPU seconds. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_filter_rese | OT_INTEGER      | 5               | Maximal allowed |
| ts              |                 |                 | number of       |
|                 |                 |                 | filter resets   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_hessian_per | OT_REAL         | 1.000e+20       | Maximum value   |
| turbation       |                 |                 | of              |
|                 |                 |                 | regularization  |
|                 |                 |                 | parameter for   |
|                 |                 |                 | handling        |
|                 |                 |                 | negative        |
|                 |                 |                 | curvature. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_iter        | OT_INTEGER      | 3000            | Maximum number  |
|                 |                 |                 | of iterations.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_refinement_ | OT_INTEGER      | 10              | Maximum number  |
| steps           |                 |                 | of iterative    |
|                 |                 |                 | refinement      |
|                 |                 |                 | steps per       |
|                 |                 |                 | linear system   |
|                 |                 |                 | solve. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_resto_iter  | OT_INTEGER      | 3000000         | Maximum number  |
|                 |                 |                 | of successive   |
|                 |                 |                 | iterations in   |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_soc         | OT_INTEGER      | 4               | Maximum number  |
|                 |                 |                 | of second order |
|                 |                 |                 | correction      |
|                 |                 |                 | trial steps at  |
|                 |                 |                 | each iteration. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| max_soft_resto_ | OT_INTEGER      | 10              | Maximum number  |
| iters           |                 |                 | of iterations   |
|                 |                 |                 | performed       |
|                 |                 |                 | successively in |
|                 |                 |                 | soft            |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mehrotra_algori | OT_STRING       | no              | Indicates if we |
| thm             |                 |                 | want to do      |
|                 |                 |                 | Mehrotra's      |
|                 |                 |                 | algorithm. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| min_alpha_prima | OT_REAL         | 0.000           | LIFENG WRITES   |
| l               |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| min_hessian_per | OT_REAL         | 0.000           | Smallest        |
| turbation       |                 |                 | perturbation of |
|                 |                 |                 | the Hessian     |
|                 |                 |                 | block. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| min_refinement_ | OT_INTEGER      | 1               | Minimum number  |
| steps           |                 |                 | of iterative    |
|                 |                 |                 | refinement      |
|                 |                 |                 | steps per       |
|                 |                 |                 | linear system   |
|                 |                 |                 | solve. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_allow_fast_m | OT_STRING       | yes             | Allow skipping  |
| onotone_decreas |                 |                 | of barrier      |
| e               |                 |                 | problem if      |
|                 |                 |                 | barrier test is |
|                 |                 |                 | already met.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_init         | OT_REAL         | 0.100           | Initial value   |
|                 |                 |                 | for the barrier |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_linear_decre | OT_REAL         | 0.200           | Determines      |
| ase_factor      |                 |                 | linear decrease |
|                 |                 |                 | rate of barrier |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_max          | OT_REAL         | 100000          | Maximum value   |
|                 |                 |                 | for barrier     |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_max_fact     | OT_REAL         | 1000            | Factor for      |
|                 |                 |                 | initialization  |
|                 |                 |                 | of maximum      |
|                 |                 |                 | value for       |
|                 |                 |                 | barrier         |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_min          | OT_REAL         | 0.000           | Minimum value   |
|                 |                 |                 | for barrier     |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_oracle       | OT_STRING       | quality-        | Oracle for a    |
|                 |                 | function        | new barrier     |
|                 |                 |                 | parameter in    |
|                 |                 |                 | the adaptive    |
|                 |                 |                 | strategy. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_strategy     | OT_STRING       | monotone        | Update strategy |
|                 |                 |                 | for barrier     |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_superlinear_ | OT_REAL         | 1.500           | Determines      |
| decrease_power  |                 |                 | superlinear     |
|                 |                 |                 | decrease rate   |
|                 |                 |                 | of barrier      |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mu_target       | OT_REAL         | 0               | Desired value   |
|                 |                 |                 | of complementar |
|                 |                 |                 | ity. (see IPOPT |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mult_diverg_fea | OT_REAL         | 0.000           | tolerance for   |
| sibility_tol    |                 |                 | deciding if the |
|                 |                 |                 | multipliers are |
|                 |                 |                 | diverging (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mult_diverg_y_t | OT_REAL         | 100000000       | tolerance for   |
| ol              |                 |                 | deciding if the |
|                 |                 |                 | multipliers are |
|                 |                 |                 | diverging (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_dep_tol   | OT_REAL         | -1              | Pivot threshold |
|                 |                 |                 | for detection   |
|                 |                 |                 | of linearly     |
|                 |                 |                 | dependent       |
|                 |                 |                 | constraints in  |
|                 |                 |                 | MUMPS. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_mem_perce | OT_INTEGER      | 1000            | Percentage      |
| nt              |                 |                 | increase in the |
|                 |                 |                 | estimated       |
|                 |                 |                 | working space   |
|                 |                 |                 | for MUMPS. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_permuting | OT_INTEGER      | 7               | Controls        |
| _scaling        |                 |                 | permuting and   |
|                 |                 |                 | scaling in      |
|                 |                 |                 | MUMPS (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_pivot_ord | OT_INTEGER      | 7               | Controls pivot  |
| er              |                 |                 | order in MUMPS  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_pivtol    | OT_REAL         | 0.000           | Pivot tolerance |
|                 |                 |                 | for the linear  |
|                 |                 |                 | solver MUMPS.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_pivtolmax | OT_REAL         | 0.100           | Maximum pivot   |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | the linear      |
|                 |                 |                 | solver MUMPS.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| mumps_scaling   | OT_INTEGER      | 77              | Controls        |
|                 |                 |                 | scaling in      |
|                 |                 |                 | MUMPS (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| neg_curv_test_t | OT_REAL         | 0               | Tolerance for   |
| ol              |                 |                 | heuristic to    |
|                 |                 |                 | ignore wrong    |
|                 |                 |                 | inertia. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| never_use_fact_ | OT_STRING       | no              | Toggle to       |
| cgpen_direction |                 |                 | switch off the  |
|                 |                 |                 | fast Chen-      |
|                 |                 |                 | Goldfarb        |
|                 |                 |                 | direction (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| never_use_piece | OT_STRING       | no              | Toggle to       |
| wise_penalty_ls |                 |                 | switch off the  |
|                 |                 |                 | piecewise       |
|                 |                 |                 | penalty method  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_lower_bound | OT_REAL         | -1.000e+19      | any bound less  |
| _inf            |                 |                 | or equal this   |
|                 |                 |                 | value will be   |
|                 |                 |                 | considered -inf |
|                 |                 |                 | (i.e. not lower |
|                 |                 |                 | bounded). (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_scaling_con | OT_REAL         | 0               | Target value    |
| str_target_grad |                 |                 | for constraint  |
| ient            |                 |                 | function        |
|                 |                 |                 | gradient size.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_scaling_max | OT_REAL         | 100             | Maximum         |
| _gradient       |                 |                 | gradient after  |
|                 |                 |                 | NLP scaling.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_scaling_met | OT_STRING       | gradient-based  | Select the      |
| hod             |                 |                 | technique used  |
|                 |                 |                 | for scaling the |
|                 |                 |                 | NLP. (see IPOPT |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_scaling_min | OT_REAL         | 0.000           | Minimum value   |
| _value          |                 |                 | of gradient-    |
|                 |                 |                 | based scaling   |
|                 |                 |                 | values. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_scaling_obj | OT_REAL         | 0               | Target value    |
| _target_gradien |                 |                 | for objective   |
| t               |                 |                 | function        |
|                 |                 |                 | gradient size.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nlp_upper_bound | OT_REAL         | 1.000e+19       | any bound       |
| _inf            |                 |                 | greater or this |
|                 |                 |                 | value will be   |
|                 |                 |                 | considered +inf |
|                 |                 |                 | (i.e. not upper |
|                 |                 |                 | bounded). (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nu_inc          | OT_REAL         | 0.000           | Increment of    |
|                 |                 |                 | the penalty     |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| nu_init         | OT_REAL         | 0.000           | Initial value   |
|                 |                 |                 | of the penalty  |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| num_linear_vari | OT_INTEGER      | 0               | Number of       |
| ables           |                 |                 | linear          |
|                 |                 |                 | variables (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| obj_max_inc     | OT_REAL         | 5               | Determines the  |
|                 |                 |                 | upper bound on  |
|                 |                 |                 | the acceptable  |
|                 |                 |                 | increase of     |
|                 |                 |                 | barrier         |
|                 |                 |                 | objective       |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| obj_scaling_fac | OT_REAL         | 1               | Scaling factor  |
| tor             |                 |                 | for the         |
|                 |                 |                 | objective       |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| option_file_nam | OT_STRING       |                 | File name of    |
| e               |                 |                 | options file    |
|                 |                 |                 | (to overwrite   |
|                 |                 |                 | default). (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| output_file     | OT_STRING       |                 | File name of    |
|                 |                 |                 | desired output  |
|                 |                 |                 | file (leave     |
|                 |                 |                 | unset for no    |
|                 |                 |                 | file output).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_co | OT_INTEGER      | 5000            | Maximum Size of |
| arse_size       |                 |                 | Coarse Grid     |
|                 |                 |                 | Matrix (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_dr | OT_REAL         | 0.500           | dropping value  |
| opping_factor   |                 |                 | for incomplete  |
|                 |                 |                 | factor (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_dr | OT_REAL         | 0.100           | dropping value  |
| opping_schur    |                 |                 | for sparsify    |
|                 |                 |                 | schur           |
|                 |                 |                 | complement      |
|                 |                 |                 | factor (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_in | OT_REAL         | 5000000         | (see IPOPT      |
| verse_norm_fact |                 |                 | documentation)  |
| or              |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_ma | OT_INTEGER      | 10              | Maximum Size of |
| x_levels        |                 |                 | Grid Levels     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_ma | OT_INTEGER      | 10000000        | max fill for    |
| x_row_fill      |                 |                 | each row (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iter_re | OT_REAL         | 0.000           | Relative        |
| lative_tol      |                 |                 | Residual        |
|                 |                 |                 | Convergence     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_iterati | OT_STRING       | no              | Switch on       |
| ve              |                 |                 | iterative       |
|                 |                 |                 | solver in       |
|                 |                 |                 | Pardiso library |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_matchin | OT_STRING       | complete+2x2    | Matching        |
| g_strategy      |                 |                 | strategy to be  |
|                 |                 |                 | used by Pardiso |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_max_dro | OT_INTEGER      | 4               | Maximal number  |
| ptol_correction |                 |                 | of decreases of |
| s               |                 |                 | drop tolerance  |
|                 |                 |                 | during one      |
|                 |                 |                 | solve. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_max_ite | OT_INTEGER      | 500             | Maximum number  |
| r               |                 |                 | of Krylov-      |
|                 |                 |                 | Subspace        |
|                 |                 |                 | Iteration (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_msglvl  | OT_INTEGER      | 0               | Pardiso message |
|                 |                 |                 | level (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_out_of_ | OT_INTEGER      | 0               | Enables out-of- |
| core_power      |                 |                 | core variant of |
|                 |                 |                 | Pardiso (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_redo_sy | OT_STRING       | no              | Toggle for      |
| mbolic_fact_onl |                 |                 | handling case   |
| y_if_inertia_wr |                 |                 | when elements   |
| ong             |                 |                 | were perturbed  |
|                 |                 |                 | by Pardiso.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_repeate | OT_STRING       | no              | Interpretation  |
| d_perturbation_ |                 |                 | of perturbed    |
| means_singular  |                 |                 | elements. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pardiso_skip_in | OT_STRING       | no              | Always pretend  |
| ertia_check     |                 |                 | inertia is      |
|                 |                 |                 | correct. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pass_nonlinear_ | OT_BOOLEAN      | False           | n/a             |
| variables       |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| pen_des_fact    | OT_REAL         | 0.200           | a parameter     |
|                 |                 |                 | used in penalty |
|                 |                 |                 | parameter       |
|                 |                 |                 | computation     |
|                 |                 |                 | (for Chen-      |
|                 |                 |                 | Goldfarb line   |
|                 |                 |                 | search). (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pen_init_fac    | OT_REAL         | 50              | a parameter     |
|                 |                 |                 | used to choose  |
|                 |                 |                 | initial penalty |
|                 |                 |                 | parameterswhen  |
|                 |                 |                 | the regularized |
|                 |                 |                 | Newton method   |
|                 |                 |                 | is used. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| pen_theta_max_f | OT_REAL         | 10000           | Determines      |
| act             |                 |                 | upper bound for |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation in    |
|                 |                 |                 | the filter.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| penalty_init_ma | OT_REAL         | 100000          | Maximal value   |
| x               |                 |                 | for the intial  |
|                 |                 |                 | penalty         |
|                 |                 |                 | parameter (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| penalty_init_mi | OT_REAL         | 1               | Minimal value   |
| n               |                 |                 | for the intial  |
|                 |                 |                 | penalty         |
|                 |                 |                 | parameter for   |
|                 |                 |                 | line search(for |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| penalty_max     | OT_REAL         | 1.000e+30       | Maximal value   |
|                 |                 |                 | for the penalty |
|                 |                 |                 | parameter (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| penalty_update_ | OT_REAL         | 10              | LIFENG WRITES   |
| compl_tol       |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| penalty_update_ | OT_REAL         | 0.000           | Threshold for   |
| infeasibility_t |                 |                 | infeasibility   |
| ol              |                 |                 | in penalty      |
|                 |                 |                 | parameter       |
|                 |                 |                 | update test.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| perturb_always_ | OT_STRING       | no              | Active          |
| cd              |                 |                 | permanent       |
|                 |                 |                 | perturbation of |
|                 |                 |                 | constraint      |
|                 |                 |                 | linearization.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| perturb_dec_fac | OT_REAL         | 0.333           | Decrease factor |
| t               |                 |                 | for x-s         |
|                 |                 |                 | perturbation.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| perturb_inc_fac | OT_REAL         | 8               | Increase factor |
| t               |                 |                 | for x-s         |
|                 |                 |                 | perturbation.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| perturb_inc_fac | OT_REAL         | 100             | Increase factor |
| t_first         |                 |                 | for x-s         |
|                 |                 |                 | perturbation    |
|                 |                 |                 | for very first  |
|                 |                 |                 | perturbation.   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| piecewisepenalt | OT_REAL         | 0.000           | LIFENG WRITES   |
| y_gamma_infeasi |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| piecewisepenalt | OT_REAL         | 0.000           | LIFENG WRITES   |
| y_gamma_obj     |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| point_perturbat | OT_REAL         | 10              | Maximal         |
| ion_radius      |                 |                 | perturbation of |
|                 |                 |                 | an evaluation   |
|                 |                 |                 | point. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| print_info_stri | OT_STRING       | no              | Enables         |
| ng              |                 |                 | printing of     |
|                 |                 |                 | additional info |
|                 |                 |                 | string at end   |
|                 |                 |                 | of iteration    |
|                 |                 |                 | output. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| print_level     | OT_INTEGER      | 5               | Output          |
|                 |                 |                 | verbosity       |
|                 |                 |                 | level. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| print_options_d | OT_STRING       | no              | Switch to print |
| ocumentation    |                 |                 | all algorithmic |
|                 |                 |                 | options. (see   |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| print_options_l | OT_STRING       | no              | Undocumented    |
| atex_mode       |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| print_time      | OT_BOOLEAN      | True            | print           |
|                 |                 |                 | information     |
|                 |                 |                 | about execution |
|                 |                 |                 | time            |
+-----------------+-----------------+-----------------+-----------------+
| print_timing_st | OT_STRING       | no              | Switch to print |
| atistics        |                 |                 | timing          |
|                 |                 |                 | statistics.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| print_user_opti | OT_STRING       | no              | Print all       |
| ons             |                 |                 | options set by  |
|                 |                 |                 | the user. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| quality_functio | OT_STRING       | none            | The balancing   |
| n_balancing_ter |                 |                 | term included   |
| m               |                 |                 | in the quality  |
|                 |                 |                 | function for    |
|                 |                 |                 | centrality.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| quality_functio | OT_STRING       | none            | The penalty     |
| n_centrality    |                 |                 | term for        |
|                 |                 |                 | centrality that |
|                 |                 |                 | is included in  |
|                 |                 |                 | quality         |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| quality_functio | OT_INTEGER      | 8               | Maximum number  |
| n_max_section_s |                 |                 | of search steps |
| teps            |                 |                 | during direct   |
|                 |                 |                 | search          |
|                 |                 |                 | procedure       |
|                 |                 |                 | determining the |
|                 |                 |                 | optimal         |
|                 |                 |                 | centering       |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| quality_functio | OT_STRING       | 2-norm-squared  | Norm used for   |
| n_norm_type     |                 |                 | components of   |
|                 |                 |                 | the quality     |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| quality_functio | OT_REAL         | 0               | Tolerance for   |
| n_section_qf_to |                 |                 | the golden      |
| l               |                 |                 | section search  |
|                 |                 |                 | procedure       |
|                 |                 |                 | determining the |
|                 |                 |                 | optimal         |
|                 |                 |                 | centering       |
|                 |                 |                 | parameter (in   |
|                 |                 |                 | the function    |
|                 |                 |                 | value space).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| quality_functio | OT_REAL         | 0.010           | Tolerance for   |
| n_section_sigma |                 |                 | the section     |
| _tol            |                 |                 | search          |
|                 |                 |                 | procedure       |
|                 |                 |                 | determining the |
|                 |                 |                 | optimal         |
|                 |                 |                 | centering       |
|                 |                 |                 | parameter (in   |
|                 |                 |                 | sigma space).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| recalc_y        | OT_STRING       | no              | Tells the       |
|                 |                 |                 | algorithm to    |
|                 |                 |                 | recalculate the |
|                 |                 |                 | equality and    |
|                 |                 |                 | inequality      |
|                 |                 |                 | multipliers as  |
|                 |                 |                 | least square    |
|                 |                 |                 | estimates. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| recalc_y_feas_t | OT_REAL         | 0.000           | Feasibility     |
| ol              |                 |                 | threshold for   |
|                 |                 |                 | recomputation   |
|                 |                 |                 | of multipliers. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| replace_bounds  | OT_STRING       | no              | Indicates if    |
|                 |                 |                 | all variable    |
|                 |                 |                 | bounds should   |
|                 |                 |                 | be replaced by  |
|                 |                 |                 | inequality      |
|                 |                 |                 | constraints     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| required_infeas | OT_REAL         | 0.900           | Required        |
| ibility_reducti |                 |                 | reduction of    |
| on              |                 |                 | infeasibility   |
|                 |                 |                 | before leaving  |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| residual_improv | OT_REAL         | 1.000           | Minimal         |
| ement_factor    |                 |                 | required        |
|                 |                 |                 | reduction of    |
|                 |                 |                 | residual test   |
|                 |                 |                 | ratio in        |
|                 |                 |                 | iterative       |
|                 |                 |                 | refinement.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| residual_ratio_ | OT_REAL         | 0.000           | Iterative       |
| max             |                 |                 | refinement      |
|                 |                 |                 | tolerance (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| residual_ratio_ | OT_REAL         | 0.000           | Threshold for   |
| singular        |                 |                 | declaring       |
|                 |                 |                 | linear system   |
|                 |                 |                 | singular after  |
|                 |                 |                 | failed          |
|                 |                 |                 | iterative       |
|                 |                 |                 | refinement.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| resto_failure_f | OT_REAL         | 0               | Threshold for   |
| easibility_thre |                 |                 | primal          |
| shold           |                 |                 | infeasibility   |
|                 |                 |                 | to declare      |
|                 |                 |                 | failure of      |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| resto_penalty_p | OT_REAL         | 1000            | Penalty         |
| arameter        |                 |                 | parameter in    |
|                 |                 |                 | the restoration |
|                 |                 |                 | phase objective |
|                 |                 |                 | function. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| resto_proximity | OT_REAL         | 1               | Weighting       |
| _weight         |                 |                 | factor for the  |
|                 |                 |                 | proximity term  |
|                 |                 |                 | in restoration  |
|                 |                 |                 | phase           |
|                 |                 |                 | objective. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| rho             | OT_REAL         | 0.100           | Value in        |
|                 |                 |                 | penalty         |
|                 |                 |                 | parameter       |
|                 |                 |                 | update formula. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| s_max           | OT_REAL         | 100             | Scaling         |
|                 |                 |                 | threshold for   |
|                 |                 |                 | the NLP error.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| s_phi           | OT_REAL         | 2.300           | Exponent for    |
|                 |                 |                 | linear barrier  |
|                 |                 |                 | function model  |
|                 |                 |                 | in the          |
|                 |                 |                 | switching rule. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| s_theta         | OT_REAL         | 1.100           | Exponent for    |
|                 |                 |                 | current         |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation in    |
|                 |                 |                 | the switching   |
|                 |                 |                 | rule. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| sb              | OT_STRING       | no              | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| sigma_max       | OT_REAL         | 100             | Maximum value   |
|                 |                 |                 | of the          |
|                 |                 |                 | centering       |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| sigma_min       | OT_REAL         | 0.000           | Minimum value   |
|                 |                 |                 | of the          |
|                 |                 |                 | centering       |
|                 |                 |                 | parameter. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| skip_corr_if_ne | OT_STRING       | yes             | Skip the        |
| g_curv          |                 |                 | corrector step  |
|                 |                 |                 | in negative     |
|                 |                 |                 | curvature       |
|                 |                 |                 | iteration       |
|                 |                 |                 | (unsupported!). |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| skip_corr_in_mo | OT_STRING       | yes             | Skip the        |
| notone_mode     |                 |                 | corrector step  |
|                 |                 |                 | during monotone |
|                 |                 |                 | barrier         |
|                 |                 |                 | parameter mode  |
|                 |                 |                 | (unsupported!). |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| skip_finalize_s | OT_STRING       | no              | Indicates if    |
| olution_call    |                 |                 | call to NLP::Fi |
|                 |                 |                 | nalizeSolution  |
|                 |                 |                 | after           |
|                 |                 |                 | optimization    |
|                 |                 |                 | should be       |
|                 |                 |                 | suppressed (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| slack_bound_fra | OT_REAL         | 0.010           | Desired minimum |
| c               |                 |                 | relative        |
|                 |                 |                 | distance from   |
|                 |                 |                 | the initial     |
|                 |                 |                 | slack to bound. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| slack_bound_pus | OT_REAL         | 0.010           | Desired minimum |
| h               |                 |                 | absolute        |
|                 |                 |                 | distance from   |
|                 |                 |                 | the initial     |
|                 |                 |                 | slack to bound. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| slack_move      | OT_REAL         | 0.000           | Correction size |
|                 |                 |                 | for very small  |
|                 |                 |                 | slacks. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| soft_resto_pder | OT_REAL         | 1.000           | Required        |
| ror_reduction_f |                 |                 | reduction in    |
| actor           |                 |                 | primal-dual     |
|                 |                 |                 | error in the    |
|                 |                 |                 | soft            |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| start_with_rest | OT_STRING       | no              | Tells algorithm |
| o               |                 |                 | to switch to    |
|                 |                 |                 | restoration     |
|                 |                 |                 | phase in first  |
|                 |                 |                 | iteration. (see |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| suppress_all_ou | OT_STRING       | no              | Undocumented    |
| tput            |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| tau_min         | OT_REAL         | 0.990           | Lower bound on  |
|                 |                 |                 | fraction-to-    |
|                 |                 |                 | the-boundary    |
|                 |                 |                 | parameter tau.  |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| theta_max_fact  | OT_REAL         | 10000           | Determines      |
|                 |                 |                 | upper bound for |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation in    |
|                 |                 |                 | the filter.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| theta_min       | OT_REAL         | 0.000           | LIFENG WRITES   |
|                 |                 |                 | THIS. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| theta_min_fact  | OT_REAL         | 0.000           | Determines      |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation       |
|                 |                 |                 | threshold in    |
|                 |                 |                 | the switching   |
|                 |                 |                 | rule. (see      |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| tiny_step_tol   | OT_REAL         | 0.000           | Tolerance for   |
|                 |                 |                 | detecting       |
|                 |                 |                 | numerically     |
|                 |                 |                 | insignificant   |
|                 |                 |                 | steps. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| tiny_step_y_tol | OT_REAL         | 0.010           | Tolerance for   |
|                 |                 |                 | quitting        |
|                 |                 |                 | because of      |
|                 |                 |                 | numerically     |
|                 |                 |                 | insignificant   |
|                 |                 |                 | steps. (see     |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| tol             | OT_REAL         | 0.000           | Desired         |
|                 |                 |                 | convergence     |
|                 |                 |                 | tolerance       |
|                 |                 |                 | (relative).     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| var_integer_md  | OT_DICT         | None            | Integer         |
|                 |                 |                 | metadata (a     |
|                 |                 |                 | dictionary with |
|                 |                 |                 | lists of        |
|                 |                 |                 | integers) about |
|                 |                 |                 | variables to be |
|                 |                 |                 | passed to IPOPT |
+-----------------+-----------------+-----------------+-----------------+
| var_numeric_md  | OT_DICT         | None            | Numeric         |
|                 |                 |                 | metadata (a     |
|                 |                 |                 | dictionary with |
|                 |                 |                 | lists of reals) |
|                 |                 |                 | about variables |
|                 |                 |                 | to be passed to |
|                 |                 |                 | IPOPT           |
+-----------------+-----------------+-----------------+-----------------+
| var_string_md   | OT_DICT         | None            | String metadata |
|                 |                 |                 | (a dictionary   |
|                 |                 |                 | with lists of   |
|                 |                 |                 | strings) about  |
|                 |                 |                 | variables to be |
|                 |                 |                 | passed to IPOPT |
+-----------------+-----------------+-----------------+-----------------+
| vartheta        | OT_REAL         | 0.500           | a parameter     |
|                 |                 |                 | used to check   |
|                 |                 |                 | if the fast     |
|                 |                 |                 | direction can   |
|                 |                 |                 | be used asthe   |
|                 |                 |                 | line search     |
|                 |                 |                 | direction (for  |
|                 |                 |                 | Chen-Goldfarb   |
|                 |                 |                 | line search).   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_boun | OT_REAL         | 0.001           | same as         |
| d_frac          |                 |                 | bound_frac for  |
|                 |                 |                 | the regular     |
|                 |                 |                 | initializer.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_boun | OT_REAL         | 0.001           | same as         |
| d_push          |                 |                 | bound_push for  |
|                 |                 |                 | the regular     |
|                 |                 |                 | initializer.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_enti | OT_STRING       | no              | Tells algorithm |
| re_iterate      |                 |                 | whether to use  |
|                 |                 |                 | the GetWarmStar |
|                 |                 |                 | tIterate method |
|                 |                 |                 | in the NLP.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_init | OT_STRING       | no              | Warm-start for  |
| _point          |                 |                 | initial point   |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_mult | OT_REAL         | 0.001           | same as         |
| _bound_push     |                 |                 | mult_bound_push |
|                 |                 |                 | for the regular |
|                 |                 |                 | initializer.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_mult | OT_REAL         | 1000000         | Maximum initial |
| _init_max       |                 |                 | value for the   |
|                 |                 |                 | equality        |
|                 |                 |                 | multipliers.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_same | OT_STRING       | no              | Indicates       |
| _structure      |                 |                 | whether a       |
|                 |                 |                 | problem with a  |
|                 |                 |                 | structure       |
|                 |                 |                 | identical to    |
|                 |                 |                 | the previous    |
|                 |                 |                 | one is to be    |
|                 |                 |                 | solved. (see    |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_slac | OT_REAL         | 0.001           | same as slack_b |
| k_bound_frac    |                 |                 | ound_frac for   |
|                 |                 |                 | the regular     |
|                 |                 |                 | initializer.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_slac | OT_REAL         | 0.001           | same as slack_b |
| k_bound_push    |                 |                 | ound_push for   |
|                 |                 |                 | the regular     |
|                 |                 |                 | initializer.    |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| warm_start_targ | OT_REAL         | 0               | Unsupported!    |
| et_mu           |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| watchdog_shorte | OT_INTEGER      | 10              | Number of       |
| ned_iter_trigge |                 |                 | shortened       |
| r               |                 |                 | iterations that |
|                 |                 |                 | trigger the     |
|                 |                 |                 | watchdog. (see  |
|                 |                 |                 | IPOPT           |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| watchdog_trial_ | OT_INTEGER      | 3               | Maximum number  |
| iter_max        |                 |                 | of watchdog     |
|                 |                 |                 | iterations.     |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+
| wsmp_iterative  | OT_STRING       | no              | Switches to     |
|                 |                 |                 | iterative       |
|                 |                 |                 | solver in WSMP. |
|                 |                 |                 | (see IPOPT      |
|                 |                 |                 | documentation)  |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+-------------+
|     Id      |
+=============+
| eval_f      |
+-------------+
| eval_g      |
+-------------+
| eval_grad_f |
+-------------+
| eval_h      |
+-------------+
| eval_jac_g  |
+-------------+

>List of available stats

+--------------------+
|         Id         |
+====================+
| con_integer_md     |
+--------------------+
| con_numeric_md     |
+--------------------+
| con_string_md      |
+--------------------+
| iter_count         |
+--------------------+
| iteration          |
+--------------------+
| iterations         |
+--------------------+
| n_eval_callback    |
+--------------------+
| n_eval_f           |
+--------------------+
| n_eval_g           |
+--------------------+
| n_eval_grad_f      |
+--------------------+
| n_eval_h           |
+--------------------+
| n_eval_jac_g       |
+--------------------+
| return_status      |
+--------------------+
| t_callback_fun     |
+--------------------+
| t_callback_prepare |
+--------------------+
| t_eval_f           |
+--------------------+
| t_eval_g           |
+--------------------+
| t_eval_grad_f      |
+--------------------+
| t_eval_h           |
+--------------------+
| t_eval_jac_g       |
+--------------------+
| t_mainloop         |
+--------------------+
| var_integer_md     |
+--------------------+
| var_numeric_md     |
+--------------------+
| var_string_md      |
+--------------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

knitro
------



KNITRO interface

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| BarRule         | OT_INTEGER      | 0               | Barrier Rule    |
+-----------------+-----------------+-----------------+-----------------+
| Debug           | OT_INTEGER      | 0               | Debug level     |
+-----------------+-----------------+-----------------+-----------------+
| Delta           | OT_REAL         | 1               | Initial region  |
|                 |                 |                 | scaling factor  |
+-----------------+-----------------+-----------------+-----------------+
| FeasModeTol     | OT_REAL         | 0.000           | Feasible mode   |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| FeasTol         | OT_REAL         | 0.000           | Feasible        |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| FeasTolAbs      | OT_REAL         | 0               | Absolute        |
|                 |                 |                 | feasible        |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| Feasible        | OT_BOOLEAN      | 1               | Allow           |
|                 |                 |                 | infeasible      |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| GradOpt         | OT_INTEGER      | 1               | Gradient        |
|                 |                 |                 | calculation     |
|                 |                 |                 | method          |
+-----------------+-----------------+-----------------+-----------------+
| HessOpt         | OT_INTEGER      | 1               | Hessian         |
|                 |                 |                 | calculation     |
|                 |                 |                 | method          |
+-----------------+-----------------+-----------------+-----------------+
| HonorBnds       | OT_BOOLEAN      | 0               | Enforce bounds  |
+-----------------+-----------------+-----------------+-----------------+
| InitPt          | OT_BOOLEAN      | 0               | Use initial     |
|                 |                 |                 | point strategy  |
+-----------------+-----------------+-----------------+-----------------+
| LmSize          | OT_INTEGER      | 10              | Memory pairsize |
|                 |                 |                 | limit           |
+-----------------+-----------------+-----------------+-----------------+
| LpSolver        | OT_BOOLEAN      | 0               | Use LpSolver    |
+-----------------+-----------------+-----------------+-----------------+
| MaxCgIt         | OT_INTEGER      | 0               | Maximum         |
|                 |                 |                 | conjugate       |
|                 |                 |                 | gradient        |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| MaxIt           | OT_INTEGER      | 10000           | Iteration limit |
+-----------------+-----------------+-----------------+-----------------+
| Mu              | OT_REAL         | 0.100           | Initial barrier |
|                 |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| Multistart      | OT_BOOLEAN      | 0               | Use multistart  |
+-----------------+-----------------+-----------------+-----------------+
| NewPoint        | OT_BOOLEAN      | 0               | Select new-     |
|                 |                 |                 | point feature   |
+-----------------+-----------------+-----------------+-----------------+
| ObjRange        | OT_REAL         | 1.000e+20       | Maximum         |
|                 |                 |                 | objective value |
+-----------------+-----------------+-----------------+-----------------+
| OptTol          | OT_REAL         | 0.000           | Relative        |
|                 |                 |                 | optimality      |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| OptTolAbs       | OT_REAL         | 0               | Absolute        |
|                 |                 |                 | optimality      |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| OutLev          | OT_INTEGER      | 2               | Log output      |
|                 |                 |                 | level           |
+-----------------+-----------------+-----------------+-----------------+
| Pivot           | OT_REAL         | 0.000           | Initial pivot   |
|                 |                 |                 | threshold       |
+-----------------+-----------------+-----------------+-----------------+
| Scale           | OT_BOOLEAN      | 1               | Perform scaling |
+-----------------+-----------------+-----------------+-----------------+
| ShiftInit       | OT_BOOLEAN      | 1               | Interior-point  |
|                 |                 |                 | shifting        |
|                 |                 |                 | initial point   |
+-----------------+-----------------+-----------------+-----------------+
| Soc             | OT_INTEGER      | 1               | Second order    |
|                 |                 |                 | correction      |
+-----------------+-----------------+-----------------+-----------------+
| XTol            | OT_REAL         | 0.000           | Relative        |
|                 |                 |                 | solution change |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| contype         | OT_INTEGERVECTO |                 |                 |
|                 | R               |                 |                 |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+-------------+
|     Id      |
+=============+
| eval_f      |
+-------------+
| eval_g      |
+-------------+
| eval_grad_f |
+-------------+
| eval_h      |
+-------------+
| eval_jac_g  |
+-------------+

>List of available stats

+---------------+
|      Id       |
+===============+
| return_status |
+---------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

snopt
-----



SNOPT interface

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| Backup basis    | OT_INTEGER      | None            | 0 * output      |
| file            |                 |                 | extra basis map |
+-----------------+-----------------+-----------------+-----------------+
| Central         | OT_REAL         | None            | 6.7e-5 * (      |
| difference      |                 |                 | Function        |
| interval        |                 |                 | precision)^1/3  |
+-----------------+-----------------+-----------------+-----------------+
| Check frequency | OT_INTEGER      | None            | 60 * test row   |
|                 |                 |                 | residuals kAx - |
|                 |                 |                 | sk              |
+-----------------+-----------------+-----------------+-----------------+
| Crash option    | OT_INTEGER      | None            | 3 * first basis |
|                 |                 |                 | is essentially  |
|                 |                 |                 | triangular      |
+-----------------+-----------------+-----------------+-----------------+
| Crash tolerance | OT_REAL         | None            | 0.100           |
+-----------------+-----------------+-----------------+-----------------+
| Debug level     | OT_INTEGER      | None            | 0 * for         |
|                 |                 |                 | developers      |
+-----------------+-----------------+-----------------+-----------------+
| Derivative      | OT_INTEGER      | None            | 3               |
| level           |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| Difference      | OT_REAL         | None            | 5.5e-7 * (      |
| interval        |                 |                 | Function        |
|                 |                 |                 | precision)^1/2  |
+-----------------+-----------------+-----------------+-----------------+
| Dump file       | OT_INTEGER      | None            | 0 * output Load |
|                 |                 |                 | data            |
+-----------------+-----------------+-----------------+-----------------+
| Elastic weight  | OT_REAL         | None            | 1.0e+4 * used   |
|                 |                 |                 | only during     |
|                 |                 |                 | elastic mode    |
+-----------------+-----------------+-----------------+-----------------+
| Expand          | OT_INTEGER      | None            | 10000 * for     |
| frequency       |                 |                 | anti-cycling    |
|                 |                 |                 | procedure       |
+-----------------+-----------------+-----------------+-----------------+
| Factorization   | OT_INTEGER      | None            | 50 * 100 for    |
| frequency       |                 |                 | LPs             |
+-----------------+-----------------+-----------------+-----------------+
| Function        | OT_REAL         | None            | 3.0e-13 * e^0.8 |
| precision       |                 |                 | (almost full    |
|                 |                 |                 | accuracy)       |
+-----------------+-----------------+-----------------+-----------------+
| Hessian         | OT_STRING       | None            | full memory *   |
|                 |                 |                 | default if n1   |
|                 |                 |                 | 75  limited     |
|                 |                 |                 | memory *        |
|                 |                 |                 | default if n1 > |
|                 |                 |                 | 75              |
+-----------------+-----------------+-----------------+-----------------+
| Hessian flush   | OT_INTEGER      | None            | 999999 * no     |
|                 |                 |                 | flushing        |
+-----------------+-----------------+-----------------+-----------------+
| Hessian         | OT_INTEGER      | None            | 999999 * for    |
| frequency       |                 |                 | full Hessian    |
|                 |                 |                 | (never reset)   |
+-----------------+-----------------+-----------------+-----------------+
| Hessian updates | OT_INTEGER      | None            | 10 * for        |
|                 |                 |                 | limited memory  |
|                 |                 |                 | Hessian         |
+-----------------+-----------------+-----------------+-----------------+
| Insert file     | OT_INTEGER      | None            | 0 * input in    |
|                 |                 |                 | industry format |
+-----------------+-----------------+-----------------+-----------------+
| Iterations      | OT_INTEGER      | None            | 10000 * or 20m  |
| limit           |                 |                 | if that is more |
+-----------------+-----------------+-----------------+-----------------+
| LU              | OT_STRING       | None            | LU partial      |
|                 |                 |                 | pivoting *      |
|                 |                 |                 | default         |
|                 |                 |                 | threshold       |
|                 |                 |                 | pivoting        |
|                 |                 |                 | strategy  LU    |
|                 |                 |                 | rook pivoting * |
|                 |                 |                 | threshold rook  |
|                 |                 |                 | pivoting  LU    |
|                 |                 |                 | complete        |
|                 |                 |                 | pivoting *      |
|                 |                 |                 | threshold       |
|                 |                 |                 | complete        |
|                 |                 |                 | pivoting        |
+-----------------+-----------------+-----------------+-----------------+
| LU factor       | OT_REAL         | None            | 3.99 * for NP   |
| tolerance       |                 |                 | (100.0 for LP)  |
+-----------------+-----------------+-----------------+-----------------+
| LU singularity  | OT_REAL         | None            | 0.000           |
| tolerance       |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| LU update       | OT_REAL         | None            | 3.99 * for NP ( |
| tolerance       |                 |                 | 10.0 for LP)    |
+-----------------+-----------------+-----------------+-----------------+
| Linesearch      | OT_REAL         | None            | 0.9 * smaller   |
| tolerance       |                 |                 | for more        |
|                 |                 |                 | accurate search |
+-----------------+-----------------+-----------------+-----------------+
| Load file       | OT_INTEGER      | None            | 0 * input names |
|                 |                 |                 | and values      |
+-----------------+-----------------+-----------------+-----------------+
| Major           | OT_REAL         | None            | 1.0e-6 * target |
| feasibility     |                 |                 | nonlinear       |
| tolerance       |                 |                 | constraint      |
|                 |                 |                 | violation       |
+-----------------+-----------------+-----------------+-----------------+
| Major           | OT_INTEGER      | None            | 1000 * or m if  |
| iterations      |                 |                 | that is more    |
| limit           |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| Major           | OT_REAL         | None            | 1.0e-6 * target |
| optimality      |                 |                 | complementarity |
| tolerance       |                 |                 | gap             |
+-----------------+-----------------+-----------------+-----------------+
| Major print     | OT_INTEGER      | None            | 1 * 1-line      |
| level           |                 |                 | major iteration |
|                 |                 |                 | log             |
+-----------------+-----------------+-----------------+-----------------+
| Major step      | OT_REAL         | None            | 2               |
| limit           |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| Minor           | OT_REAL         | None            | 1.0e-6 * for    |
| feasibility     |                 |                 | satisfying the  |
| tolerance       |                 |                 | QP bounds       |
+-----------------+-----------------+-----------------+-----------------+
| Minor           | OT_INTEGER      | None            | 500 * or 3m if  |
| iterations      |                 |                 | that is more    |
| limit           |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| Minor print     | OT_INTEGER      | None            | 1 * 1-line      |
| level           |                 |                 | minor iteration |
|                 |                 |                 | log             |
+-----------------+-----------------+-----------------+-----------------+
| New basis file  | OT_INTEGER      | None            | 0 * output      |
|                 |                 |                 | basis map       |
+-----------------+-----------------+-----------------+-----------------+
| New superbasics | OT_INTEGER      | None            | 99 * controls   |
| limit           |                 |                 | early           |
|                 |                 |                 | termination of  |
|                 |                 |                 | QPs             |
+-----------------+-----------------+-----------------+-----------------+
| Old basis file  | OT_INTEGER      | None            | 0 * input basis |
|                 |                 |                 | map             |
+-----------------+-----------------+-----------------+-----------------+
| Partial price   | OT_INTEGER      | None            | 1 * 10 for      |
|                 |                 |                 | large LPs       |
+-----------------+-----------------+-----------------+-----------------+
| Penalty         | OT_REAL         | None            | 0.0 * initial   |
| parameter       |                 |                 | penalty         |
|                 |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| Pivot tolerance | OT_REAL         | None            | 3.7e-11 * e^2/3 |
+-----------------+-----------------+-----------------+-----------------+
| Print frequency | OT_INTEGER      | None            | 100 * minor     |
|                 |                 |                 | iterations log  |
|                 |                 |                 | on Print file   |
+-----------------+-----------------+-----------------+-----------------+
| Proximal point  | OT_INTEGER      | None            | 1 * satisfies   |
| method          |                 |                 | linear          |
|                 |                 |                 | constraints     |
|                 |                 |                 | near x0         |
+-----------------+-----------------+-----------------+-----------------+
| Punch file      | OT_INTEGER      | None            | 0 * output      |
|                 |                 |                 | Insert data     |
+-----------------+-----------------+-----------------+-----------------+
| QPSolver        | OT_STRING       | None            | Cholesky *      |
|                 |                 |                 | default         |
+-----------------+-----------------+-----------------+-----------------+
| Reduced Hessian | OT_INTEGER      | None            | 2000 * or       |
| dimension       |                 |                 | Superbasics     |
|                 |                 |                 | limit if that   |
|                 |                 |                 | is less         |
+-----------------+-----------------+-----------------+-----------------+
| Save frequency  | OT_INTEGER      | None            | 100 * save      |
|                 |                 |                 | basis map       |
+-----------------+-----------------+-----------------+-----------------+
| Scale option    | OT_INTEGER      | None            | 1 * linear      |
|                 |                 |                 | constraints and |
|                 |                 |                 | variables       |
+-----------------+-----------------+-----------------+-----------------+
| Scale tolerance | OT_REAL         | None            | 0.900           |
+-----------------+-----------------+-----------------+-----------------+
| Solution        | OT_STRING       | None            | Yes * on the    |
|                 |                 |                 | Print file      |
+-----------------+-----------------+-----------------+-----------------+
| Solution file   | OT_INTEGER      | None            | 0 * different   |
|                 |                 |                 | from printed    |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| Sticky          | OT_STRING       | None            | No * Yes makes  |
| parameters      |                 |                 | parameter       |
|                 |                 |                 | values persist  |
+-----------------+-----------------+-----------------+-----------------+
| Summary         | OT_INTEGER      | None            | 100 * minor     |
| frequency       |                 |                 | iterations log  |
|                 |                 |                 | on Summary file |
+-----------------+-----------------+-----------------+-----------------+
| Superbasics     | OT_INTEGER      | None            | n1 + 1 * n1 =   |
| limit           |                 |                 | number of       |
|                 |                 |                 | nonlinear       |
|                 |                 |                 | variables       |
+-----------------+-----------------+-----------------+-----------------+
| System          | OT_STRING       | None            | No * Yes prints |
| information     |                 |                 | more system     |
|                 |                 |                 | information     |
+-----------------+-----------------+-----------------+-----------------+
| Timing level    | OT_INTEGER      | None            | 3 * print cpu   |
|                 |                 |                 | times           |
+-----------------+-----------------+-----------------+-----------------+
| Unbounded       | OT_REAL         | None            | 1.000e+15       |
| objective       |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| Unbounded step  | OT_REAL         | None            | 1.000e+18       |
| size            |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| Verify level    | OT_INTEGER      | None            | 0 * cheap check |
|                 |                 |                 | on gradients    |
+-----------------+-----------------+-----------------+-----------------+
| Violation limit | OT_REAL         | None            | 10.0 * unscaled |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation limit |
+-----------------+-----------------+-----------------+-----------------+
| detect_linear   | OT_BOOLEAN      | True            | Make an effort  |
|                 |                 |                 | to treat linear |
|                 |                 |                 | constraints and |
|                 |                 |                 | linear          |
|                 |                 |                 | variables       |
|                 |                 |                 | specially.      |
+-----------------+-----------------+-----------------+-----------------+
| print file      | OT_STRING       | None            | n/a             |
+-----------------+-----------------+-----------------+-----------------+
| print_time      | OT_BOOLEAN      | True            | print           |
|                 |                 |                 | information     |
|                 |                 |                 | about execution |
|                 |                 |                 | time            |
+-----------------+-----------------+-----------------+-----------------+
| specs file      | OT_STRING       | None            | n/a             |
+-----------------+-----------------+-----------------+-----------------+
| start           | OT_STRING       | Cold            |                 |
+-----------------+-----------------+-----------------+-----------------+
| summary         | OT_BOOLEAN      | True            | n/a             |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+-----------+
|    Id     |
+===========+
| eval_nlp  |
+-----------+
| setup_nlp |
+-----------+

>List of available stats

+----------------+
|       Id       |
+================+
| iter_count     |
+----------------+
| iterations     |
+----------------+
| n_callback_fun |
+----------------+
| n_eval_grad_f  |
+----------------+
| n_eval_jac_g   |
+----------------+
| return_status  |
+----------------+
| t_callback_fun |
+----------------+
| t_eval_grad_f  |
+----------------+
| t_eval_jac_g   |
+----------------+
| t_mainloop     |
+----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

worhp
-----



WORHP interface

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| AcceptTolFeas   | OT_REAL         | 0.001           | Tolerance for   |
|                 |                 |                 | acceptable      |
|                 |                 |                 | feasibility     |
+-----------------+-----------------+-----------------+-----------------+
| AcceptTolOpti   | OT_REAL         | 0.001           | Tolerance for   |
|                 |                 |                 | acceptable      |
|                 |                 |                 | optimality      |
+-----------------+-----------------+-----------------+-----------------+
| AlphaMinConst   | OT_BOOLEAN      | False           | Use a constant  |
|                 |                 |                 | lower bound on  |
|                 |                 |                 | Armijo stepsize |
|                 |                 |                 | in Filter       |
+-----------------+-----------------+-----------------+-----------------+
| Ares            | OT_INTEGERVECTO | [42, 41, 42,    | Armijo recovery |
|                 | R               | 43, 44, 41, 50] | strategies.     |
|                 |                 |                 | Vector of size  |
|                 |                 |                 | 7               |
+-----------------+-----------------+-----------------+-----------------+
| ArmijoBeta      | OT_REAL         | 0.712           | Trial stepsize  |
|                 |                 |                 | decrease factor |
|                 |                 |                 | for Armijo rule |
+-----------------+-----------------+-----------------+-----------------+
| ArmijoMaxAlpha  | OT_REAL         | 1               | Initial alpha   |
|                 |                 |                 | for Armijo rule |
+-----------------+-----------------+-----------------+-----------------+
| ArmijoMinAlpha  | OT_REAL         | 0.000           | Lower bound on  |
|                 |                 |                 | alpha for       |
|                 |                 |                 | Armijo rule     |
+-----------------+-----------------+-----------------+-----------------+
| ArmijoMinAlphaR | OT_REAL         | 0.000           | Lower bound on  |
| ec              |                 |                 | alpha for       |
|                 |                 |                 | Armijo rule     |
|                 |                 |                 | during recovery |
+-----------------+-----------------+-----------------+-----------------+
| ArmijoSigma     | OT_REAL         | 0.005           | Scale factor    |
|                 |                 |                 | for linearised  |
|                 |                 |                 | descent check   |
|                 |                 |                 | in Armijo rule  |
+-----------------+-----------------+-----------------+-----------------+
| AutoQPRecovery  | OT_BOOLEAN      | True            | Enable          |
|                 |                 |                 | automatic QP    |
|                 |                 |                 | recovery        |
+-----------------+-----------------+-----------------+-----------------+
| BFGSmaxblockSiz | OT_INTEGER      | 300             | Block size      |
| e               |                 |                 | parameter used  |
|                 |                 |                 | by certain BFGS |
|                 |                 |                 | methods         |
+-----------------+-----------------+-----------------+-----------------+
| BFGSmethod      | OT_INTEGER      | 0               | Choose BFGS     |
|                 |                 |                 | method (0:      |
|                 |                 |                 | dense, 1-3:     |
|                 |                 |                 | block, 100+:    |
|                 |                 |                 | sparse)         |
+-----------------+-----------------+-----------------+-----------------+
| BFGSminblockSiz | OT_INTEGER      | 300             | Block size      |
| e               |                 |                 | parameter used  |
|                 |                 |                 | by certain BFGS |
|                 |                 |                 | methods         |
+-----------------+-----------------+-----------------+-----------------+
| BFGSrestart     | OT_INTEGER      | 50              | Restart BFGS    |
|                 |                 |                 | update after    |
|                 |                 |                 | this many       |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| BettsFactor     | OT_REAL         | 2.100           | Update factor   |
|                 |                 |                 | for Betts'      |
|                 |                 |                 | Hessian         |
|                 |                 |                 | regularisation  |
+-----------------+-----------------+-----------------+-----------------+
| BettsPoint      | OT_REAL         | 1               | Smallest        |
|                 |                 |                 | eigenvalue of   |
|                 |                 |                 | the regularised |
|                 |                 |                 | Hessian         |
+-----------------+-----------------+-----------------+-----------------+
| BoundTolFac     | OT_REAL         | 1000            | Factor in       |
|                 |                 |                 | determining     |
|                 |                 |                 | active          |
|                 |                 |                 | constraints by  |
|                 |                 |                 | KKT             |
+-----------------+-----------------+-----------------+-----------------+
| CheckFJ         | OT_REAL         | 1.000e+12       | Upper bound     |
|                 |                 |                 | used by Fritz-  |
|                 |                 |                 | John heuristic  |
+-----------------+-----------------+-----------------+-----------------+
| CheckStructureD | OT_BOOLEAN      | True            | Enable          |
| F               |                 |                 | structural      |
|                 |                 |                 | checking of DF  |
+-----------------+-----------------+-----------------+-----------------+
| CheckStructureD | OT_BOOLEAN      | True            | Enable          |
| G               |                 |                 | structural      |
|                 |                 |                 | checking of DG  |
+-----------------+-----------------+-----------------+-----------------+
| CheckStructureH | OT_BOOLEAN      | True            | Enable          |
| M               |                 |                 | structural      |
|                 |                 |                 | checking of HM  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepBettsSum | OT_REAL         | 0.500           | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepConStop  | OT_REAL         | 0.000           | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepConvio   | OT_REAL         | 1               | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepMaxIter  | OT_INTEGER      | 50              | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepMethod   | OT_INTEGER      | 0               | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepMode     | OT_INTEGER      | 1               | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepPFactor  | OT_REAL         | 1               | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepPMax     | OT_REAL         | 1000000         | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| CorStepRecovery | OT_BOOLEAN      | False           | (experimental)  |
| DX              |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+
| CurvBCond       | OT_REAL         | 0.020           | Block BFGS      |
|                 |                 |                 | curvature       |
|                 |                 |                 | condition bound |
+-----------------+-----------------+-----------------+-----------------+
| CurvBFac        | OT_REAL         | 0.300           | Block BFGS      |
|                 |                 |                 | curvature       |
|                 |                 |                 | condition       |
|                 |                 |                 | regularisation  |
|                 |                 |                 | factor          |
+-----------------+-----------------+-----------------+-----------------+
| CurvCond        | OT_REAL         | 0.020           | BFGS Curvature  |
|                 |                 |                 | condition bound |
+-----------------+-----------------+-----------------+-----------------+
| CurvFac         | OT_REAL         | 0.300           | BFGS curvature  |
|                 |                 |                 | condition       |
|                 |                 |                 | regularisation  |
|                 |                 |                 | factor          |
+-----------------+-----------------+-----------------+-----------------+
| DebugMarker05   | OT_INTEGER      | 42              | Debug marker.   |
|                 |                 |                 | Used to find    |
|                 |                 |                 | memory alignmen |
|                 |                 |                 | t/padding       |
|                 |                 |                 | issues          |
+-----------------+-----------------+-----------------+-----------------+
| DebugMarker06   | OT_INTEGER      | 42              | Debug marker.   |
|                 |                 |                 | Used to find    |
|                 |                 |                 | memory alignmen |
|                 |                 |                 | t/padding       |
|                 |                 |                 | issues          |
+-----------------+-----------------+-----------------+-----------------+
| FGtogether      | OT_BOOLEAN      | False           | F and G cannot  |
|                 |                 |                 | be evaluated    |
|                 |                 |                 | separately      |
+-----------------+-----------------+-----------------+-----------------+
| FJandND         | OT_BOOLEAN      | False           | Enable Fritz-   |
|                 |                 |                 | John and non-   |
|                 |                 |                 | differentiable  |
|                 |                 |                 | check           |
|                 |                 |                 | heuristics      |
+-----------------+-----------------+-----------------+-----------------+
| FeasibleDual    | OT_BOOLEAN      | False           | Activate dual   |
|                 |                 |                 | feasibility     |
|                 |                 |                 | mode            |
+-----------------+-----------------+-----------------+-----------------+
| FeasibleInit    | OT_BOOLEAN      | False           | Activate        |
|                 |                 |                 | initial         |
|                 |                 |                 | feasibility     |
|                 |                 |                 | mode            |
+-----------------+-----------------+-----------------+-----------------+
| FeasibleInitTol | OT_REAL         | 0.001           | Feasibility     |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | no-objective    |
|                 |                 |                 | feasible mode   |
+-----------------+-----------------+-----------------+-----------------+
| FeasibleOnly    | OT_BOOLEAN      | False           | Activate        |
|                 |                 |                 | feasible-only   |
|                 |                 |                 | mode            |
+-----------------+-----------------+-----------------+-----------------+
| FidifEps        | OT_REAL         | 0.000           | Finite          |
|                 |                 |                 | difference      |
|                 |                 |                 | perturbation    |
+-----------------+-----------------+-----------------+-----------------+
| FidifHM         | OT_BOOLEAN      | False           | Approximate     |
|                 |                 |                 | Hessian by      |
|                 |                 |                 | finite          |
|                 |                 |                 | differences     |
|                 |                 |                 | (otherwise      |
|                 |                 |                 | BFGS)           |
+-----------------+-----------------+-----------------+-----------------+
| FilterBisecAlph | OT_BOOLEAN      | True            | Filter          |
| a               |                 |                 | heuristic to    |
|                 |                 |                 | save Armijo     |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| FilterGammaCV   | OT_REAL         | 0.000           | Constraint      |
|                 |                 |                 | violation       |
|                 |                 |                 | decrease factor |
|                 |                 |                 | in Filter       |
|                 |                 |                 | acceptance      |
|                 |                 |                 | check           |
+-----------------+-----------------+-----------------+-----------------+
| FilterGammaF    | OT_REAL         | 0.000           | Objective       |
|                 |                 |                 | decrease factor |
|                 |                 |                 | in Filter       |
|                 |                 |                 | acceptance      |
|                 |                 |                 | check           |
+-----------------+-----------------+-----------------+-----------------+
| FilterIntersecA | OT_BOOLEAN      | True            | Filter          |
| lpha            |                 |                 | heuristic to    |
|                 |                 |                 | save Armijo     |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| FirstDifCentral | OT_BOOLEAN      | True            | Use central     |
|                 |                 |                 | finite          |
|                 |                 |                 | difference      |
|                 |                 |                 | quotient for    |
|                 |                 |                 | first           |
|                 |                 |                 | derivatives     |
+-----------------+-----------------+-----------------+-----------------+
| FocusOnFeas     | OT_BOOLEAN      | True            | Enable Focus-   |
|                 |                 |                 | on-Feasibility  |
|                 |                 |                 | mode            |
+-----------------+-----------------+-----------------+-----------------+
| FocusOnFeasFact | OT_REAL         | 1.360           | Factor in       |
| or              |                 |                 | Focus-on-       |
|                 |                 |                 | Feasibility     |
|                 |                 |                 | mode            |
+-----------------+-----------------+-----------------+-----------------+
| GammaAlpha      | OT_REAL         | 0.050           | Safety factor   |
|                 |                 |                 | for alphamin    |
|                 |                 |                 | calculation by  |
|                 |                 |                 | Filter          |
+-----------------+-----------------+-----------------+-----------------+
| GroupMethod     | OT_INTEGER      | 1               | Select method   |
|                 |                 |                 | to determine    |
|                 |                 |                 | graph colouring |
|                 |                 |                 | groups          |
+-----------------+-----------------+-----------------+-----------------+
| IgnoreFilterCri | OT_BOOLEAN      | False           | Activate        |
| t               |                 |                 | accelerating    |
|                 |                 |                 | heuristics for  |
|                 |                 |                 | Filter          |
+-----------------+-----------------+-----------------+-----------------+
| IncBettsTau     | OT_REAL         | 2               | Increase factor |
|                 |                 |                 | for Betts'      |
|                 |                 |                 | update          |
|                 |                 |                 | dampening term  |
+-----------------+-----------------+-----------------+-----------------+
| IncBettsTauMore | OT_REAL         | 100             | Larger increase |
|                 |                 |                 | factor for      |
|                 |                 |                 | Betts' update   |
|                 |                 |                 | dampening term  |
+-----------------+-----------------+-----------------+-----------------+
| IncreaseIWS     | OT_REAL         | 1               | Increase factor |
|                 |                 |                 | for estimated   |
|                 |                 |                 | integer         |
|                 |                 |                 | workspace       |
|                 |                 |                 | requirement     |
+-----------------+-----------------+-----------------+-----------------+
| IncreaseRWS     | OT_REAL         | 1               | Increase factor |
|                 |                 |                 | for estimated   |
|                 |                 |                 | real workspace  |
|                 |                 |                 | requirement     |
+-----------------+-----------------+-----------------+-----------------+
| Infty           | OT_REAL         | 1.000e+20       | Upper bound for |
|                 |                 |                 | numbers to be   |
|                 |                 |                 | regarded as     |
|                 |                 |                 | finite          |
+-----------------+-----------------+-----------------+-----------------+
| InftyUnbounded  | OT_REAL         | 1.000e+20       | Tolerance for   |
|                 |                 |                 | unboundedness   |
|                 |                 |                 | detection       |
|                 |                 |                 | heuristic       |
+-----------------+-----------------+-----------------+-----------------+
| InitialLMest    | OT_BOOLEAN      | True            | Enable initial  |
|                 |                 |                 | Lagrange        |
|                 |                 |                 | multiplier      |
|                 |                 |                 | estimate        |
+-----------------+-----------------+-----------------+-----------------+
| KeepAcceptableS | OT_BOOLEAN      | True            | Save acceptable |
| ol              |                 |                 | solutions as    |
|                 |                 |                 | fallback        |
+-----------------+-----------------+-----------------+-----------------+
| LMestQPipComTol | OT_REAL         | 0.003           | IP              |
|                 |                 |                 | complementarity |
|                 |                 |                 | tolerance in    |
|                 |                 |                 | initial         |
|                 |                 |                 | multiplier      |
|                 |                 |                 | estimate        |
+-----------------+-----------------+-----------------+-----------------+
| LMestQPipResTol | OT_REAL         | 1               | IP residual     |
|                 |                 |                 | tolerance in    |
|                 |                 |                 | initial         |
|                 |                 |                 | multiplier      |
|                 |                 |                 | estimate        |
+-----------------+-----------------+-----------------+-----------------+
| LinMult         | OT_BOOLEAN      | False           | Control         |
|                 |                 |                 | Lagrange        |
|                 |                 |                 | multiplier      |
|                 |                 |                 | update          |
+-----------------+-----------------+-----------------+-----------------+
| LogLevel        | OT_INTEGER      | 0               | Enable XML      |
|                 |                 |                 | logfiles and    |
|                 |                 |                 | writing         |
|                 |                 |                 | interval        |
+-----------------+-----------------+-----------------+-----------------+
| LogResult       | OT_INTEGER      | 0               | Enable XML      |
|                 |                 |                 | result logging  |
|                 |                 |                 | and detail      |
|                 |                 |                 | level           |
+-----------------+-----------------+-----------------+-----------------+
| LowPassAlphaF   | OT_REAL         | 0.950           | Lowpass-filter  |
|                 |                 |                 | update factor   |
|                 |                 |                 | for objective   |
|                 |                 |                 | values          |
+-----------------+-----------------+-----------------+-----------------+
| LowPassAlphaG   | OT_REAL         | 0.950           | Lowpass-filter  |
|                 |                 |                 | update factor   |
|                 |                 |                 | for constraint  |
|                 |                 |                 | values          |
+-----------------+-----------------+-----------------+-----------------+
| LowPassAlphaMer | OT_REAL         | 0.100           | Lowpass-filter  |
| it              |                 |                 | update factor   |
|                 |                 |                 | for merit       |
|                 |                 |                 | function values |
+-----------------+-----------------+-----------------+-----------------+
| LowPassFilter   | OT_BOOLEAN      | True            | Enable lowpass- |
|                 |                 |                 | filter          |
|                 |                 |                 | termination     |
|                 |                 |                 | criterion       |
+-----------------+-----------------+-----------------+-----------------+
| MA97blas3       | OT_BOOLEAN      | False           | Use BLAS level  |
|                 |                 |                 | 3 (dgemm) in    |
|                 |                 |                 | MA97            |
+-----------------+-----------------+-----------------+-----------------+
| MA97mf          | OT_BOOLEAN      | False           | Use             |
|                 |                 |                 | multifrontal-   |
|                 |                 |                 | style forward   |
|                 |                 |                 | solve of MA97   |
+-----------------+-----------------+-----------------+-----------------+
| MA97nemin       | OT_INTEGER      | 8               | Node            |
|                 |                 |                 | amalgation,     |
|                 |                 |                 | controls        |
|                 |                 |                 | merging in      |
|                 |                 |                 | elimination     |
|                 |                 |                 | tree by MA97    |
+-----------------+-----------------+-----------------+-----------------+
| MA97ordering    | OT_INTEGER      | 5               | Ordering used   |
|                 |                 |                 | by MA97         |
+-----------------+-----------------+-----------------+-----------------+
| MA97print       | OT_INTEGER      | -1              | Print level     |
|                 |                 |                 | used by MA97    |
+-----------------+-----------------+-----------------+-----------------+
| MA97scaling     | OT_INTEGER      | 0               | Scaling used by |
|                 |                 |                 | MA97            |
+-----------------+-----------------+-----------------+-----------------+
| MA97small       | OT_REAL         | 0.000           | Any pivot whose |
|                 |                 |                 | modulus is less |
|                 |                 |                 | than this is    |
|                 |                 |                 | treated as zero |
|                 |                 |                 | by MA97         |
+-----------------+-----------------+-----------------+-----------------+
| MA97u           | OT_REAL         | 0.010           | Relative pivot  |
|                 |                 |                 | tolerance of    |
|                 |                 |                 | MA97            |
+-----------------+-----------------+-----------------+-----------------+
| MatrixCC        | OT_BOOLEAN      | False           | Not to be       |
|                 |                 |                 | included into a |
|                 |                 |                 | parameter file! |
+-----------------+-----------------+-----------------+-----------------+
| MaxCalls        | OT_INTEGER      | 2.147e+09       | Upper bound to  |
|                 |                 |                 | Reverse         |
|                 |                 |                 | Communication   |
|                 |                 |                 | calls           |
+-----------------+-----------------+-----------------+-----------------+
| MaxForce        | OT_INTEGER      | 1000            | Maximum number  |
|                 |                 |                 | of Force        |
|                 |                 |                 | recovery        |
|                 |                 |                 | strategy steps  |
+-----------------+-----------------+-----------------+-----------------+
| MaxGPart        | OT_INTEGER      | 1               | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| MaxIter         | OT_INTEGER      | 500             | Upper bound on  |
|                 |                 |                 | major           |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| MaxLScounter    | OT_INTEGER      | 3               | Control         |
|                 |                 |                 | activation of   |
|                 |                 |                 | Filter          |
|                 |                 |                 | acceleration    |
|                 |                 |                 | heuristics      |
+-----------------+-----------------+-----------------+-----------------+
| MaxNorm         | OT_BOOLEAN      | True            | Select max-norm |
|                 |                 |                 | instead of      |
|                 |                 |                 | 1-norm in       |
|                 |                 |                 | Filter          |
+-----------------+-----------------+-----------------+-----------------+
| MeritFunction   | OT_INTEGER      | 4               | Select merit    |
|                 |                 |                 | function and    |
|                 |                 |                 | penalty update  |
|                 |                 |                 | [0, 3..5]       |
+-----------------+-----------------+-----------------+-----------------+
| MeritGradTol    | OT_REAL         | 0.000           | Threshold of    |
|                 |                 |                 | meritfunction   |
|                 |                 |                 | gradient for    |
|                 |                 |                 | increasing      |
|                 |                 |                 | Hessian         |
|                 |                 |                 | regularisation  |
+-----------------+-----------------+-----------------+-----------------+
| MinBettsTau     | OT_REAL         | 0.000           | Lower bound for |
|                 |                 |                 | Betts' update   |
|                 |                 |                 | dampening term  |
+-----------------+-----------------+-----------------+-----------------+
| MoreRelax       | OT_BOOLEAN      | False           | Introduce one   |
|                 |                 |                 | relaxation      |
|                 |                 |                 | variable for    |
|                 |                 |                 | every           |
|                 |                 |                 | constraint      |
+-----------------+-----------------+-----------------+-----------------+
| NLPmethod       | OT_INTEGER      | 1               | Select (1)      |
|                 |                 |                 | Meritfunction   |
|                 |                 |                 | or (3) Filter   |
|                 |                 |                 | globalisation   |
+-----------------+-----------------+-----------------+-----------------+
| NLPprint        | OT_INTEGER      | 2               | NLP print level |
|                 |                 |                 | [-1..4]         |
+-----------------+-----------------+-----------------+-----------------+
| PairMethod      | OT_INTEGER      | 1               | Select method   |
|                 |                 |                 | to determine    |
|                 |                 |                 | graph colouring |
|                 |                 |                 | pairgroups      |
+-----------------+-----------------+-----------------+-----------------+
| PenUpdEpsBar    | OT_REAL         | 0.900           | Penalty update  |
|                 |                 |                 | parameter       |
|                 |                 |                 | factor for      |
|                 |                 |                 | MeritFunction = |
|                 |                 |                 | 3               |
+-----------------+-----------------+-----------------+-----------------+
| PenUpdEpsKFac   | OT_REAL         | 2               | Penalty update  |
|                 |                 |                 | parameter       |
|                 |                 |                 | factor for      |
|                 |                 |                 | MeritFunction = |
|                 |                 |                 | 4               |
+-----------------+-----------------+-----------------+-----------------+
| PenUpdEpsKSeque | OT_INTEGER      | 2               | Penalty update  |
| nce             |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| PenUpdMaxDeltaK | OT_REAL         | 11              | Max penalty for |
|                 |                 |                 | MeritFunction = |
|                 |                 |                 | 4               |
+-----------------+-----------------+-----------------+-----------------+
| PenUpdMaxFac    | OT_REAL         | 100000000       | Max factor for  |
|                 |                 |                 | increasing      |
|                 |                 |                 | penalty for     |
|                 |                 |                 | MeritFunction = |
|                 |                 |                 | 4               |
+-----------------+-----------------+-----------------+-----------------+
| PenUpdRBar      | OT_REAL         | 2               | Penalty update  |
|                 |                 |                 | parameter for   |
|                 |                 |                 | MeritFunction = |
|                 |                 |                 | 3               |
+-----------------+-----------------+-----------------+-----------------+
| PrecisionF      | OT_REAL         | 0.000           | (currently      |
|                 |                 |                 | unused)         |
|                 |                 |                 | Relative        |
|                 |                 |                 | precision of    |
|                 |                 |                 | objective       |
+-----------------+-----------------+-----------------+-----------------+
| PrecisionG      | OT_REAL         | 0.000           | (currently      |
|                 |                 |                 | unused)         |
|                 |                 |                 | Relative        |
|                 |                 |                 | precision of    |
|                 |                 |                 | constraints     |
+-----------------+-----------------+-----------------+-----------------+
| QPscaleParam    | OT_REAL         | 0               | (currently      |
|                 |                 |                 | unused) Scaling |
|                 |                 |                 | factor for QP   |
+-----------------+-----------------+-----------------+-----------------+
| QuadraticProble | OT_BOOLEAN      | False           | Not to be       |
| m               |                 |                 | included into a |
|                 |                 |                 | parameter file! |
+-----------------+-----------------+-----------------+-----------------+
| ReduceBettsTau  | OT_REAL         | 0.300           | Decrease factor |
|                 |                 |                 | for Betts'      |
|                 |                 |                 | update          |
|                 |                 |                 | dampening term  |
+-----------------+-----------------+-----------------+-----------------+
| RefineFeasibili | OT_INTEGER      | 0               | 0 -             |
| ty              |                 |                 | Deactivated, 1  |
|                 |                 |                 | - After first   |
|                 |                 |                 | feasible        |
|                 |                 |                 | iterate, 2 -    |
|                 |                 |                 | Always on,      |
|                 |                 |                 | Activates       |
|                 |                 |                 | iterative       |
|                 |                 |                 | refinement due  |
|                 |                 |                 | to perturbation |
|                 |                 |                 | in constraints  |
|                 |                 |                 | using           |
|                 |                 |                 | parametric      |
|                 |                 |                 | sensitivities   |
+-----------------+-----------------+-----------------+-----------------+
| RefineMaxHMReg  | OT_REAL         | 1000            | Maximum allowed |
|                 |                 |                 | regularisation  |
|                 |                 |                 | of the hessian  |
|                 |                 |                 | CAUTION         |
|                 |                 |                 | absolute value  |
+-----------------+-----------------+-----------------+-----------------+
| RefineMaxRelax  | OT_REAL         | 0.750           | Maximum allowed |
|                 |                 |                 | relaxation to   |
|                 |                 |                 | apply           |
|                 |                 |                 | feasibility     |
|                 |                 |                 | refinement      |
+-----------------+-----------------+-----------------+-----------------+
| RefineOnlyOnAlp | OT_BOOLEAN      | True            | Activates new   |
| ha              |                 |                 | iterative       |
|                 |                 |                 | refinement of   |
|                 |                 |                 | constraints     |
|                 |                 |                 | only when       |
|                 |                 |                 | Armijo alpha    |
|                 |                 |                 | equals one      |
+-----------------+-----------------+-----------------+-----------------+
| RefineStartTol  | OT_REAL         | 0.000           | Start tolerance |
|                 |                 |                 | for successful  |
|                 |                 |                 | termination of  |
|                 |                 |                 | iterative       |
|                 |                 |                 | refinement due  |
|                 |                 |                 | to perturbation |
|                 |                 |                 | in constraints  |
+-----------------+-----------------+-----------------+-----------------+
| RegStrategy     | OT_INTEGER      | 1               | Select Hessian  |
|                 |                 |                 | regularisation  |
|                 |                 |                 | strategy in     |
|                 |                 |                 | Filter          |
+-----------------+-----------------+-----------------+-----------------+
| ReinitFilter    | OT_BOOLEAN      | False           | Enables Filter- |
|                 |                 |                 | reinitialisatio |
|                 |                 |                 | n accelerating  |
|                 |                 |                 | heuristic       |
+-----------------+-----------------+-----------------+-----------------+
| RelaxMaxDelta   | OT_REAL         | 0.920           | Upper bound for |
|                 |                 |                 | accepting the   |
|                 |                 |                 | constraint      |
|                 |                 |                 | relaxation      |
|                 |                 |                 | variable        |
+-----------------+-----------------+-----------------+-----------------+
| RelaxMaxPen     | OT_REAL         | 50000000        | Upper bound on  |
|                 |                 |                 | the constraint  |
|                 |                 |                 | relaxation      |
|                 |                 |                 | penalty         |
+-----------------+-----------------+-----------------+-----------------+
| RelaxRho        | OT_REAL         | 6               | Update factor   |
|                 |                 |                 | for the         |
|                 |                 |                 | constraint      |
|                 |                 |                 | relaxation      |
|                 |                 |                 | penalty         |
+-----------------+-----------------+-----------------+-----------------+
| RelaxStart      | OT_REAL         | 1               | Initial value   |
|                 |                 |                 | of the          |
|                 |                 |                 | constraint      |
|                 |                 |                 | relaxation      |
|                 |                 |                 | penalty         |
+-----------------+-----------------+-----------------+-----------------+
| RestUntilFeas   | OT_BOOLEAN      | False           | Do restoration  |
|                 |                 |                 | until a         |
|                 |                 |                 | feasible        |
|                 |                 |                 | solution is     |
|                 |                 |                 | found           |
+-----------------+-----------------+-----------------+-----------------+
| ScaleConIter    | OT_BOOLEAN      | False           | Scale           |
|                 |                 |                 | constraints in  |
|                 |                 |                 | every iteration |
+-----------------+-----------------+-----------------+-----------------+
| ScaleFacObj     | OT_REAL         | 10              | Value to scale  |
|                 |                 |                 | large objective |
|                 |                 |                 | functions to    |
+-----------------+-----------------+-----------------+-----------------+
| ScaleFacQP      | OT_REAL         | 10              | Upper bound on  |
|                 |                 |                 | resulting       |
|                 |                 |                 | matrix norm for |
|                 |                 |                 | QP scaling      |
+-----------------+-----------------+-----------------+-----------------+
| ScaledFD        | OT_BOOLEAN      | True            | Use a scaled    |
|                 |                 |                 | perturbation    |
|                 |                 |                 | for finite      |
|                 |                 |                 | differences     |
+-----------------+-----------------+-----------------+-----------------+
| ScaledKKT       | OT_BOOLEAN      | True            | Scale KKT       |
|                 |                 |                 | conditions      |
+-----------------+-----------------+-----------------+-----------------+
| ScaledObj       | OT_BOOLEAN      | True            | Scale the       |
|                 |                 |                 | objective       |
|                 |                 |                 | function        |
+-----------------+-----------------+-----------------+-----------------+
| ScaledQP        | OT_BOOLEAN      | True            | Scale some      |
|                 |                 |                 | matrices handed |
|                 |                 |                 | to the QP       |
+-----------------+-----------------+-----------------+-----------------+
| StartBettsTau   | OT_REAL         | 0.100           | Initial value   |
|                 |                 |                 | for Betts'      |
|                 |                 |                 | update          |
|                 |                 |                 | dampening term  |
+-----------------+-----------------+-----------------+-----------------+
| SteffensenOnRef | OT_BOOLEAN      | False           | Use Steffensen  |
| ine             |                 |                 | Extrapolation   |
|                 |                 |                 | during          |
|                 |                 |                 | Feasibility     |
|                 |                 |                 | Refinement      |
+-----------------+-----------------+-----------------+-----------------+
| SwitchingDelta  | OT_REAL         | 0.010           | Filter          |
|                 |                 |                 | switching       |
|                 |                 |                 | condition       |
|                 |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| SwitchingSCV    | OT_REAL         | 1.100           | Filter          |
|                 |                 |                 | switching       |
|                 |                 |                 | condition       |
|                 |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| SwitchingSF     | OT_REAL         | 2.300           | Filter          |
|                 |                 |                 | switching       |
|                 |                 |                 | condition       |
|                 |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| TakeQPSol       | OT_BOOLEAN      | False           | Evaluate QP     |
|                 |                 |                 | search          |
|                 |                 |                 | direction       |
|                 |                 |                 | regardless of   |
|                 |                 |                 | convergence     |
+-----------------+-----------------+-----------------+-----------------+
| Timeout         | OT_REAL         | 300             | Timeout in      |
|                 |                 |                 | seconds         |
+-----------------+-----------------+-----------------+-----------------+
| TolComp         | OT_REAL         | 0.001           | Complementarity |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| TolFeas         | OT_REAL         | 0.000           | Feasibility     |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| TolOpti         | OT_REAL         | 0.000           | Optimality      |
|                 |                 |                 | tolerance       |
+-----------------+-----------------+-----------------+-----------------+
| TolWeakActive   | OT_REAL         | 1               | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| TooBig          | OT_BOOLEAN      | True            | Enable too-big  |
|                 |                 |                 | termination     |
|                 |                 |                 | heuristics      |
+-----------------+-----------------+-----------------+-----------------+
| TooBigCV        | OT_REAL         | 1.000e+25       | Upper bound on  |
|                 |                 |                 | constraint      |
|                 |                 |                 | violation for   |
|                 |                 |                 | too-big         |
|                 |                 |                 | heuristic       |
+-----------------+-----------------+-----------------+-----------------+
| TooBigKKT       | OT_REAL         | 1.000e+30       | Upper bound on  |
|                 |                 |                 | KKT values for  |
|                 |                 |                 | too-big         |
|                 |                 |                 | heuristic       |
+-----------------+-----------------+-----------------+-----------------+
| UpdateMu        | OT_BOOLEAN      | True            | Activates       |
|                 |                 |                 | update of       |
|                 |                 |                 | lagrange        |
|                 |                 |                 | multipliers     |
|                 |                 |                 | during          |
|                 |                 |                 | correction step |
+-----------------+-----------------+-----------------+-----------------+
| UseZen          | OT_BOOLEAN      | False           | Run Zen module  |
|                 |                 |                 | after           |
|                 |                 |                 | successful      |
|                 |                 |                 | termination     |
+-----------------+-----------------+-----------------+-----------------+
| UserDF          | OT_BOOLEAN      | True            | Objective       |
|                 |                 |                 | gradient values |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| UserDG          | OT_BOOLEAN      | True            | Jacobian values |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| UserHM          | OT_BOOLEAN      | True            | Hessian values  |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| UserHMstructure | OT_INTEGER      | 2               | Enable          |
|                 |                 |                 | automatic       |
|                 |                 |                 | Hessian         |
|                 |                 |                 | structure       |
|                 |                 |                 | generation or   |
|                 |                 |                 | checking        |
+-----------------+-----------------+-----------------+-----------------+
| UserZenDGp      | OT_BOOLEAN      | False           | Hessian values  |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| UserZenDLp      | OT_BOOLEAN      | False           | Gradient values |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| UserZenDLpp     | OT_BOOLEAN      | False           | Hessian values  |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| UserZenDLxp     | OT_BOOLEAN      | False           | Hessian values  |
|                 |                 |                 | supplied by     |
|                 |                 |                 | caller          |
+-----------------+-----------------+-----------------+-----------------+
| WeakActiveSet   | OT_BOOLEAN      | False           | (experimental)  |
+-----------------+-----------------+-----------------+-----------------+
| ZenCheckMaxPert | OT_BOOLEAN      | False           | Check maximum   |
|                 |                 |                 | of secure       |
|                 |                 |                 | perturbation    |
|                 |                 |                 | when updating   |
|                 |                 |                 | solution        |
+-----------------+-----------------+-----------------+-----------------+
| ZenFDnewMethod  | OT_BOOLEAN      | True            |                 |
+-----------------+-----------------+-----------------+-----------------+
| ZenRenewLU      | OT_BOOLEAN      | False           | false: use LU   |
|                 |                 |                 | from last QP    |
|                 |                 |                 | step; true:     |
|                 |                 |                 | renew LU        |
|                 |                 |                 | decomposition.  |
+-----------------+-----------------+-----------------+-----------------+
| eps             | OT_REAL         | 0.000           | Machine epsilon |
+-----------------+-----------------+-----------------+-----------------+
| internalParChan | OT_INTEGER      | 0               | Counter for     |
| ged             |                 |                 | changed         |
|                 |                 |                 | parameters.     |
|                 |                 |                 | Internal use    |
|                 |                 |                 | only.           |
+-----------------+-----------------+-----------------+-----------------+
| print_time      | OT_BOOLEAN      | True            | Print           |
|                 |                 |                 | information     |
|                 |                 |                 | about execution |
|                 |                 |                 | time            |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipBarrier    | OT_REAL         | 7.800           | IP barrier      |
|                 |                 |                 | parameter.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipComTol     | OT_REAL         | 0.000           | IP              |
|                 |                 |                 | complementarity |
|                 |                 |                 | tolerance.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipFracBound  | OT_REAL         | 0.880           | IP fraction-to- |
|                 |                 |                 | the-boundary    |
|                 |                 |                 | parameter.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipLsMethod   | OT_STRING       | None            | Select the      |
|                 |                 |                 | direct linear   |
|                 |                 |                 | solver used by  |
|                 |                 |                 | the IP method.  |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipMinAlpha   | OT_REAL         | 0.000           | IP line search  |
|                 |                 |                 | minimum step    |
|                 |                 |                 | size.           |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipRelaxDiv   | OT_REAL         | 2               | The relaxation  |
|                 |                 |                 | term is divided |
|                 |                 |                 | by this value   |
|                 |                 |                 | if successful.  |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipRelaxMax   | OT_REAL         | 0.000           | Maximum         |
|                 |                 |                 | relaxation      |
|                 |                 |                 | value.          |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipRelaxMin   | OT_REAL         | 0.000           | Mimimum         |
|                 |                 |                 | relaxation      |
|                 |                 |                 | value.          |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipRelaxMult  | OT_REAL         | 10              | The relaxation  |
|                 |                 |                 | term is         |
|                 |                 |                 | multiplied by   |
|                 |                 |                 | this value if   |
|                 |                 |                 | unsuccessful.   |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipResTol     | OT_REAL         | 0.000           | IP residuals    |
|                 |                 |                 | tolerance.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_ipTryRelax   | OT_BOOLEAN      | True            | Enable          |
|                 |                 |                 | relaxation      |
|                 |                 |                 | strategy when   |
|                 |                 |                 | encountering an |
|                 |                 |                 | error.          |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsItMaxIter  | OT_INTEGER      | 1000            | Maximum number  |
|                 |                 |                 | of iterations   |
|                 |                 |                 | of the          |
|                 |                 |                 | iterative       |
|                 |                 |                 | linear solvers. |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsItMethod   | OT_STRING       | None            | Select the      |
|                 |                 |                 | iterative       |
|                 |                 |                 | linear solver.  |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsItPrecondM | OT_STRING       | None            | Select          |
| ethod           |                 |                 | preconditioner  |
|                 |                 |                 | for the         |
|                 |                 |                 | iterative       |
|                 |                 |                 | linear solver.  |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsRefineMaxI | OT_INTEGER      | 10              | Maximum number  |
| ter             |                 |                 | of iterative    |
|                 |                 |                 | refinement      |
|                 |                 |                 | steps of the    |
|                 |                 |                 | direct linear   |
|                 |                 |                 | solvers.        |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsScale      | OT_BOOLEAN      | True            | Enables scaling |
|                 |                 |                 | on linear       |
|                 |                 |                 | solver level.   |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsTol        | OT_REAL         | 0.000           | Tolerance for   |
|                 |                 |                 | the linear      |
|                 |                 |                 | solver.         |
+-----------------+-----------------+-----------------+-----------------+
| qp_lsTrySimple  | OT_BOOLEAN      | False           | Some matrices   |
|                 |                 |                 | can be solved   |
|                 |                 |                 | without calling |
|                 |                 |                 | a linear        |
|                 |                 |                 | equation solver |
|                 |                 |                 | .Currently only |
|                 |                 |                 | diagonal        |
|                 |                 |                 | matrices are    |
|                 |                 |                 | supported.Non-  |
|                 |                 |                 | diagonal        |
|                 |                 |                 | matrices will   |
|                 |                 |                 | besolved with   |
|                 |                 |                 | the chosen      |
|                 |                 |                 | linear equation |
|                 |                 |                 | solver.         |
+-----------------+-----------------+-----------------+-----------------+
| qp_maxIter      | OT_INTEGER      | 80              | Imposes an      |
|                 |                 |                 | upper limit on  |
|                 |                 |                 | the number of   |
|                 |                 |                 | minor solver    |
|                 |                 |                 | iterations,     |
|                 |                 |                 | i.e. for the    |
|                 |                 |                 | quadratic       |
|                 |                 |                 | subproblem      |
|                 |                 |                 | solver.If the   |
|                 |                 |                 | limit is        |
|                 |                 |                 | reached before  |
|                 |                 |                 | convergence,    |
|                 |                 |                 | WORHP will      |
|                 |                 |                 | activate QP     |
|                 |                 |                 | recovery        |
|                 |                 |                 | strategies to   |
|                 |                 |                 | prevent a       |
|                 |                 |                 | solver          |
|                 |                 |                 | breakdown.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_method       | OT_STRING       | None            | Select the      |
|                 |                 |                 | solution method |
|                 |                 |                 | used by the QP  |
|                 |                 |                 | solver.         |
+-----------------+-----------------+-----------------+-----------------+
| qp_nsnBeta      | OT_REAL         | 0.900           | NSN stepsize    |
|                 |                 |                 | decrease        |
|                 |                 |                 | factor.         |
+-----------------+-----------------+-----------------+-----------------+
| qp_nsnGradStep  | OT_BOOLEAN      | True            | Enable gradient |
|                 |                 |                 | steps in the    |
|                 |                 |                 | NSN method.     |
+-----------------+-----------------+-----------------+-----------------+
| qp_nsnKKT       | OT_REAL         | 0.000           | NSN KKT         |
|                 |                 |                 | tolerance.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_nsnLsMethod  | OT_STRING       | None            | Select the      |
|                 |                 |                 | direct linear   |
|                 |                 |                 | solver used by  |
|                 |                 |                 | the NSN method. |
+-----------------+-----------------+-----------------+-----------------+
| qp_nsnMinAlpha  | OT_REAL         | 0.000           | NSN line search |
|                 |                 |                 | minimum step    |
|                 |                 |                 | size.           |
+-----------------+-----------------+-----------------+-----------------+
| qp_nsnSigma     | OT_REAL         | 0.010           | NSN line search |
|                 |                 |                 | slope           |
|                 |                 |                 | parameter.      |
+-----------------+-----------------+-----------------+-----------------+
| qp_printLevel   | OT_STRING       | None            | Controls the    |
|                 |                 |                 | amount of QP    |
|                 |                 |                 | solver output.  |
+-----------------+-----------------+-----------------+-----------------+
| qp_scaleIntern  | OT_BOOLEAN      | False           | Enable scaling  |
|                 |                 |                 | on QP level.    |
+-----------------+-----------------+-----------------+-----------------+
| qp_strict       | OT_BOOLEAN      | True            | Use strict      |
|                 |                 |                 | termination     |
|                 |                 |                 | criteria in IP  |
|                 |                 |                 | method.         |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+-------------+
|     Id      |
+=============+
| eval_f      |
+-------------+
| eval_g      |
+-------------+
| eval_grad_f |
+-------------+
| eval_h      |
+-------------+
| eval_jac_g  |
+-------------+

>List of available stats

+--------------------+
|         Id         |
+====================+
| iter_count         |
+--------------------+
| iteration          |
+--------------------+
| iterations         |
+--------------------+
| n_eval_f           |
+--------------------+
| n_eval_g           |
+--------------------+
| n_eval_grad_f      |
+--------------------+
| n_eval_h           |
+--------------------+
| n_eval_jac_g       |
+--------------------+
| return_code        |
+--------------------+
| return_status      |
+--------------------+
| t_callback_fun     |
+--------------------+
| t_callback_prepare |
+--------------------+
| t_eval_f           |
+--------------------+
| t_eval_g           |
+--------------------+
| t_eval_grad_f      |
+--------------------+
| t_eval_h           |
+--------------------+
| t_eval_jac_g       |
+--------------------+
| t_mainloop         |
+--------------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

scpgen
------



A structure-exploiting sequential quadratic programming (to be come
sequential convex programming) method for nonlinear programming.

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| beta            | OT_REAL         | 0.800           | Line-search     |
|                 |                 |                 | parameter,      |
|                 |                 |                 | restoration     |
|                 |                 |                 | factor of       |
|                 |                 |                 | stepsize        |
+-----------------+-----------------+-----------------+-----------------+
| c1              | OT_REAL         | 0.000           | Armijo          |
|                 |                 |                 | condition,      |
|                 |                 |                 | coefficient of  |
|                 |                 |                 | decrease in     |
|                 |                 |                 | merit           |
+-----------------+-----------------+-----------------+-----------------+
| codegen         | OT_BOOLEAN      | false           | C-code          |
|                 |                 |                 | generation      |
+-----------------+-----------------+-----------------+-----------------+
| hessian_approxi | OT_STRING       | \"exact\"         | gauss-          |
| mation          |                 |                 | newton|exact    |
+-----------------+-----------------+-----------------+-----------------+
| lbfgs_memory    | OT_INTEGER      | 10              | Size of L-BFGS  |
|                 |                 |                 | memory.         |
+-----------------+-----------------+-----------------+-----------------+
| max_iter        | OT_INTEGER      | 50              | Maximum number  |
|                 |                 |                 | of SQP          |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| max_iter_ls     | OT_INTEGER      | 1               | Maximum number  |
|                 |                 |                 | of linesearch   |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| merit_memsize   | OT_INTEGER      | 4               | Size of memory  |
|                 |                 |                 | to store        |
|                 |                 |                 | history of      |
|                 |                 |                 | merit function  |
|                 |                 |                 | values          |
+-----------------+-----------------+-----------------+-----------------+
| merit_start     | OT_REAL         | 0.000           | Lower bound for |
|                 |                 |                 | the merit       |
|                 |                 |                 | function        |
|                 |                 |                 | parameter       |
+-----------------+-----------------+-----------------+-----------------+
| name_x          | OT_STRINGVECTOR | GenericType()   | Names of the    |
|                 |                 |                 | variables.      |
+-----------------+-----------------+-----------------+-----------------+
| print_header    | OT_BOOLEAN      | true            | Print the       |
|                 |                 |                 | header with     |
|                 |                 |                 | problem         |
|                 |                 |                 | statistics      |
+-----------------+-----------------+-----------------+-----------------+
| print_time      | OT_BOOLEAN      | true            | Print           |
|                 |                 |                 | information     |
|                 |                 |                 | about execution |
|                 |                 |                 | time            |
+-----------------+-----------------+-----------------+-----------------+
| print_x         | OT_INTEGERVECTO | GenericType()   | Which variables |
|                 | R               |                 | to print.       |
+-----------------+-----------------+-----------------+-----------------+
| qp_solver       | OT_STRING       | GenericType()   | The QP solver   |
|                 |                 |                 | to be used by   |
|                 |                 |                 | the SQP method  |
+-----------------+-----------------+-----------------+-----------------+
| qp_solver_optio | OT_DICT         | GenericType()   | Options to be   |
| ns              |                 |                 | passed to the   |
|                 |                 |                 | QP solver       |
+-----------------+-----------------+-----------------+-----------------+
| reg_threshold   | OT_REAL         | 0.000           | Threshold for   |
|                 |                 |                 | the             |
|                 |                 |                 | regularization. |
+-----------------+-----------------+-----------------+-----------------+
| regularize      | OT_BOOLEAN      | false           | Automatic       |
|                 |                 |                 | regularization  |
|                 |                 |                 | of Lagrange     |
|                 |                 |                 | Hessian.        |
+-----------------+-----------------+-----------------+-----------------+
| tol_du          | OT_REAL         | 0.000           | Stopping        |
|                 |                 |                 | criterion for   |
|                 |                 |                 | dual            |
|                 |                 |                 | infeasability   |
+-----------------+-----------------+-----------------+-----------------+
| tol_pr          | OT_REAL         | 0.000           | Stopping        |
|                 |                 |                 | criterion for   |
|                 |                 |                 | primal          |
|                 |                 |                 | infeasibility   |
+-----------------+-----------------+-----------------+-----------------+
| tol_pr_step     | OT_REAL         | 0.000           | Stopping        |
|                 |                 |                 | criterion for   |
|                 |                 |                 | the step size   |
+-----------------+-----------------+-----------------+-----------------+
| tol_reg         | OT_REAL         | 0.000           | Stopping        |
|                 |                 |                 | criterion for   |
|                 |                 |                 | regularization  |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+-------------+
|     Id      |
+=============+
| dx          |
+-------------+
| eval_f      |
+-------------+
| eval_g      |
+-------------+
| eval_grad_f |
+-------------+
| eval_h      |
+-------------+
| eval_jac_g  |
+-------------+
| qp          |
+-------------+

>List of available stats

+------------+
|     Id     |
+============+
| iter_count |
+------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

sqpmethod
---------



A textbook SQPMethod

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| beta            | OT_REAL         | 0.800           | Line-search     |
|                 |                 |                 | parameter,      |
|                 |                 |                 | restoration     |
|                 |                 |                 | factor of       |
|                 |                 |                 | stepsize        |
+-----------------+-----------------+-----------------+-----------------+
| c1              | OT_REAL         | 0.000           | Armijo          |
|                 |                 |                 | condition,      |
|                 |                 |                 | coefficient of  |
|                 |                 |                 | decrease in     |
|                 |                 |                 | merit           |
+-----------------+-----------------+-----------------+-----------------+
| hessian_approxi | OT_STRING       | \"exact\"         | limited-        |
| mation          |                 |                 | memory|exact    |
+-----------------+-----------------+-----------------+-----------------+
| lbfgs_memory    | OT_INTEGER      | 10              | Size of L-BFGS  |
|                 |                 |                 | memory.         |
+-----------------+-----------------+-----------------+-----------------+
| max_iter        | OT_INTEGER      | 50              | Maximum number  |
|                 |                 |                 | of SQP          |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| max_iter_ls     | OT_INTEGER      | 3               | Maximum number  |
|                 |                 |                 | of linesearch   |
|                 |                 |                 | iterations      |
+-----------------+-----------------+-----------------+-----------------+
| merit_memory    | OT_INTEGER      | 4               | Size of memory  |
|                 |                 |                 | to store        |
|                 |                 |                 | history of      |
|                 |                 |                 | merit function  |
|                 |                 |                 | values          |
+-----------------+-----------------+-----------------+-----------------+
| min_step_size   | OT_REAL         | 0.000           | The size (inf-  |
|                 |                 |                 | norm) of the    |
|                 |                 |                 | step size       |
|                 |                 |                 | should not      |
|                 |                 |                 | become smaller  |
|                 |                 |                 | than this.      |
+-----------------+-----------------+-----------------+-----------------+
| print_header    | OT_BOOLEAN      | true            | Print the       |
|                 |                 |                 | header with     |
|                 |                 |                 | problem         |
|                 |                 |                 | statistics      |
+-----------------+-----------------+-----------------+-----------------+
| print_time      | OT_BOOLEAN      | true            | Print           |
|                 |                 |                 | information     |
|                 |                 |                 | about execution |
|                 |                 |                 | time            |
+-----------------+-----------------+-----------------+-----------------+
| qp_solver       | OT_STRING       | GenericType()   | The QP solver   |
|                 |                 |                 | to be used by   |
|                 |                 |                 | the SQP method  |
+-----------------+-----------------+-----------------+-----------------+
| qp_solver_optio | OT_DICT         | GenericType()   | Options to be   |
| ns              |                 |                 | passed to the   |
|                 |                 |                 | QP solver       |
+-----------------+-----------------+-----------------+-----------------+
| regularize      | OT_BOOLEAN      | false           | Automatic       |
|                 |                 |                 | regularization  |
|                 |                 |                 | of Lagrange     |
|                 |                 |                 | Hessian.        |
+-----------------+-----------------+-----------------+-----------------+
| tol_du          | OT_REAL         | 0.000           | Stopping        |
|                 |                 |                 | criterion for   |
|                 |                 |                 | dual            |
|                 |                 |                 | infeasability   |
+-----------------+-----------------+-----------------+-----------------+
| tol_pr          | OT_REAL         | 0.000           | Stopping        |
|                 |                 |                 | criterion for   |
|                 |                 |                 | primal          |
|                 |                 |                 | infeasibility   |
+-----------------+-----------------+-----------------+-----------------+

>List of available monitors

+-------------+
|     Id      |
+=============+
| bfgs        |
+-------------+
| dx          |
+-------------+
| eval_f      |
+-------------+
| eval_g      |
+-------------+
| eval_grad_f |
+-------------+
| eval_h      |
+-------------+
| eval_jac_g  |
+-------------+
| qp          |
+-------------+

>List of available stats

+--------------------+
|         Id         |
+====================+
| iter_count         |
+--------------------+
| iteration          |
+--------------------+
| iterations         |
+--------------------+
| n_eval_f           |
+--------------------+
| n_eval_g           |
+--------------------+
| n_eval_grad_f      |
+--------------------+
| n_eval_h           |
+--------------------+
| n_eval_jac_g       |
+--------------------+
| return_status      |
+--------------------+
| t_callback_fun     |
+--------------------+
| t_callback_prepare |
+--------------------+
| t_eval_f           |
+--------------------+
| t_eval_g           |
+--------------------+
| t_eval_grad_f      |
+--------------------+
| t_eval_h           |
+--------------------+
| t_eval_jac_g       |
+--------------------+
| t_mainloop         |
+--------------------+

--------------------------------------------------------------------------------



Joel Andersson
Diagrams
--------



C++ includes: nlp_solver.hpp ";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::NlpSolver::setOptionsFromFile(const
std::string &file) "

Read options from parameter xml.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::NlpSolver::gradF() "

Access the objective gradient function>Input scheme: casadi::GradFInput
(GRADF_NUM_IN = 2) [gradFIn]

+-----------+-------+---------------------+
| Full name | Short |     Description     |
+===========+=======+=====================+
| GRADF_X   | x     | Decision variable . |
+-----------+-------+---------------------+
| GRADF_P   | p     | Fixed parameter .   |
+-----------+-------+---------------------+

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring") casadi::NlpSolver::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::NlpSolver::getReportConstraints() "";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::NlpSolver::hessLag() "

Access the Jacobian of the constraint function.

>Input scheme: casadi::HessLagInput (HESSLAG_NUM_IN = 4) [hessLagIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| HESSLAG_X              | x                      | Decision variable .    |
+------------------------+------------------------+------------------------+
| HESSLAG_P              | p                      | Fixed parameter .      |
+------------------------+------------------------+------------------------+
| HESSLAG_LAM_F          | lam_f                  | Multiplier for f. Just |
|                        |                        | a scalar factor for    |
|                        |                        | the objective that the |
|                        |                        | NLP solver might use   |
|                        |                        | to scale the           |
|                        |                        | objective.             |
+------------------------+------------------------+------------------------+
| HESSLAG_LAM_G          | lam_g                  | Multiplier for g .     |
+------------------------+------------------------+------------------------+

>Output scheme: casadi::HessLagOutput (HESSLAG_NUM_OUT = 5) [hessLagOut]

+----------------+--------+------------------------------------------------+
|   Full name    | Short  |                  Description                   |
+================+========+================================================+
| HESSLAG_HESS   | hess   | Hessian of the Lagrangian .                    |
+----------------+--------+------------------------------------------------+
| HESSLAG_F      | f      | Objective function .                           |
+----------------+--------+------------------------------------------------+
| HESSLAG_G      | g      | Constraint function .                          |
+----------------+--------+------------------------------------------------+
| HESSLAG_GRAD_X | grad_x | Gradient of the Lagrangian with respect to x . |
+----------------+--------+------------------------------------------------+
| HESSLAG_GRAD_P | grad_p | Gradient of the Lagrangian with respect to p . |
+----------------+--------+------------------------------------------------+

";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";


// File: classcasadi_1_1NonZeros.xml
%feature("docstring") casadi::NonZeros< M, K >::NonZeros(M &mat, const K &k)
"

Constructor.

";

%feature("docstring") casadi::NonZeros "

Access to a set of nonzeros.

NonZeros class for Matrix NonZeros is the return type for operator[] of the
Matrix class, it allows access to the value as well as changing the parent
object Joel Andersson

C++ includes: nonzeros.hpp ";


// File: classcasadi_1_1Norm.xml


// File: classcasadi_1_1Norm1.xml


// File: classcasadi_1_1Norm2.xml


// File: classcasadi_1_1NormF.xml


// File: classcasadi_1_1NormInf.xml


// File: classcasadi_1_1OldCollocationIntegrator.xml


// File: classcasadi_1_1OneSX.xml


// File: classcasadi_1_1OptionsFunctionality.xml


/*  Option Functionality  */ %feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring") casadi::OptionsFunctionality::OptionsFunctionality() "

Default constructor.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring") casadi::OptionsFunctionality "

Provides options setting/getting functionality.

Gives a derived class the ability to set and retrieve options in a
convenient way. It also contains error checking, making sure that the option
exists and that the value type is correct.

A derived class should add option names, types and default values to the
corresponding vectors.

Joel Andersson

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+

Diagrams
--------



C++ includes: options_functionality.hpp ";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring") casadi::OptionsFunctionality::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring") casadi::OptionsFunctionality::~OptionsFunctionality "

Destructor.

";


// File: classcasadi_1_1Polynomial.xml
%feature("docstring") casadi::Polynomial "

Helper class for differentiating and integrating polynomials.

Joel Andersson

C++ includes: polynomial.hpp ";

%feature("docstring")  casadi::Polynomial::derivative() const  "

Create a new polynomial for the derivative.

";

%feature("docstring") casadi::Polynomial::Polynomial(real_t scalar=1) "

Construct a constant polynomial.

";

%feature("docstring") casadi::Polynomial::Polynomial(real_t p0, real_t p1) "

Construct a linear polynomial.

";

%feature("docstring") casadi::Polynomial::Polynomial(real_t p0, real_t p1,
real_t p2) "

Construct a quadratic polynomial.

";

%feature("docstring") casadi::Polynomial::Polynomial(real_t p0, real_t p1,
real_t p2, real_t p3) "

Construct a cubic polynomial.

";

%feature("docstring") casadi::Polynomial::Polynomial(const std::vector< T >
&coeff) "

Construct from a vector of polynomial coefficients.

";

%feature("docstring")  casadi::Polynomial::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Polynomial::anti_derivative() const  "

Create a new polynomial for the anti-derivative (primitive function)

";

%feature("docstring")  casadi::PrintableObject< Polynomial
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Polynomial::degree() const  "

Degree of the polynomial.

";

%feature("docstring")  casadi::Polynomial::toScalar() const  "

Get scalar value (error if degree()!=0)

";

%feature("docstring")  casadi::Polynomial::trim() "

Remove excess zeros.

";

%feature("docstring")  casadi::Polynomial::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::PrintableObject< Polynomial
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";


// File: classcasadi_1_1PrintableObject.xml
%feature("docstring")  casadi::PrintableObject< Derived
>::getRepresentation() const  "

Return a string with a representation (for SWIG)

";

%feature("docstring")  repr(const PrintableObject< Derived > &obj) "

Return a string with a representation of the object, cf. repr(Object) in
Python.

";

%feature("docstring")  str(const PrintableObject< Derived > &obj) "

Return a string with a description of the object, cf. str(Object) in Python.

";

%feature("docstring") casadi::PrintableObject "

Base class for objects that have a natural string representation.

Joel Andersson

C++ includes: printable_object.hpp ";

%feature("docstring")  casadi::PrintableObject< Derived >::getDescription()
const  "

Return a string with a description (for SWIG)

";


// File: classcasadi_1_1Project.xml


// File: classcasadi_1_1QpSolver.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::OptionsFunctionality::getOptionNames() const  "

Get a list of all option names.

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring") casadi::QpSolver::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring") casadi::QpSolver::QpSolver() "

Default constructor.

";

%feature("docstring") casadi::QpSolver::QpSolver(const std::string &name,
const std::string &solver, const std::map< std::string, Sparsity > &st,
const Dict &opts=Dict()) "

Constructor (new syntax, includes initialization)

Parameters:
-----------

name:

Name of a solver. It might be one of:

- cplex

- ooqp

- qpoases

- sqic

- nlp

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
QpSolver.doc(\"myextraplugin\")

st:

Problem structure.>Struct scheme: casadi::QPStruct ( = 2) []

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| QP_STRUCT_H            |                        | The square matrix H:   |
|                        |                        | sparse, (n x n). Only  |
|                        |                        | the lower triangular   |
|                        |                        | part is actually used. |
|                        |                        | The matrix is assumed  |
|                        |                        | to be symmetrical.     |
+------------------------+------------------------+------------------------+
| QP_STRUCT_A            |                        | The matrix A: sparse,  |
|                        |                        | (nc x n) - product     |
|                        |                        | with x must be dense.  |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")  casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring") casadi::QpSolver "

QpSolver.

Solves the following strictly convex problem:



::

  min          1/2 x' H x + g' x
   x
  
  subject to
              LBA <= A x <= UBA
              LBX <= x   <= UBX
  
      with :
        H sparse (n x n) positive definite
        g dense  (n x 1)
  
      n: number of decision variables (x)
      nc: number of constraints (A)



If H is not positive-definite, the solver should throw an error.

General information
===================



>Input scheme: casadi::QpSolverInput (QP_SOLVER_NUM_IN = 9) [qpIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| QP_SOLVER_H            | h                      | The square matrix H:   |
|                        |                        | sparse, (n x n). Only  |
|                        |                        | the lower triangular   |
|                        |                        | part is actually used. |
|                        |                        | The matrix is assumed  |
|                        |                        | to be symmetrical.     |
+------------------------+------------------------+------------------------+
| QP_SOLVER_G            | g                      | The vector g: dense,   |
|                        |                        | (n x 1) .              |
+------------------------+------------------------+------------------------+
| QP_SOLVER_A            | a                      | The matrix A: sparse,  |
|                        |                        | (nc x n) - product     |
|                        |                        | with x must be dense.  |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LBA          | lba                    | dense, (nc x 1)        |
+------------------------+------------------------+------------------------+
| QP_SOLVER_UBA          | uba                    | dense, (nc x 1)        |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LBX          | lbx                    | dense, (n x 1)         |
+------------------------+------------------------+------------------------+
| QP_SOLVER_UBX          | ubx                    | dense, (n x 1)         |
+------------------------+------------------------+------------------------+
| QP_SOLVER_X0           | x0                     | dense, (n x 1)         |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LAM_X0       | lam_x0                 | dense                  |
+------------------------+------------------------+------------------------+

>Output scheme: casadi::QpSolverOutput (QP_SOLVER_NUM_OUT = 4) [qpOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| QP_SOLVER_X            | x                      | The primal solution .  |
+------------------------+------------------------+------------------------+
| QP_SOLVER_COST         | cost                   | The optimal cost .     |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LAM_A        | lam_a                  | The dual solution      |
|                        |                        | corresponding to       |
|                        |                        | linear bounds .        |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LAM_X        | lam_x                  | The dual solution      |
|                        |                        | corresponding to       |
|                        |                        | simple bounds .        |
+------------------------+------------------------+------------------------+

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode   c |
|              |              |              | according to | asadi::QpSol |
|              |              |              | a given      | verInternal  |
|              |              |              | recipe (low- |              |
|              |              |              | level)  (lp) |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp |              |
|              |              |              | uts)         |              |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+

List of plugins
===============



- cplex

- ooqp

- qpoases

- sqic

- nlp

Note: some of the plugins in this list might not be available on your
system. Also, there might be extra plugins available to you that are not
listed here. You can obtain their documentation with
QpSolver.doc(\"myextraplugin\")



--------------------------------------------------------------------------------

cplex
-----



Interface to Cplex solver for sparse Quadratic Programs

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| barrier_maxiter | OT_INTEGER      | 2.100e+09       | Maximum number  |
|                 |                 |                 | of barrier      |
|                 |                 |                 | iterations.     |
+-----------------+-----------------+-----------------+-----------------+
| convex          | OT_BOOLEAN      | true            | Indicates if    |
|                 |                 |                 | the QP is       |
|                 |                 |                 | convex or not   |
|                 |                 |                 | (affects only   |
|                 |                 |                 | the barrier     |
|                 |                 |                 | method).        |
+-----------------+-----------------+-----------------+-----------------+
| dep_check       | OT_STRING       | \"off\"           | Detect          |
|                 |                 |                 | redundant       |
|                 |                 |                 | constraints. (a |
|                 |                 |                 | utomatic:-1|off |
|                 |                 |                 | :0|begin:1|end: |
|                 |                 |                 | 2|both:3)       |
+-----------------+-----------------+-----------------+-----------------+
| dump_filename   | OT_STRING       | \"qp.dat\"        | The filename to |
|                 |                 |                 | dump to.        |
+-----------------+-----------------+-----------------+-----------------+
| dump_to_file    | OT_BOOLEAN      | false           | Dumps QP to     |
|                 |                 |                 | file in CPLEX   |
|                 |                 |                 | format.         |
+-----------------+-----------------+-----------------+-----------------+
| qp_method       | OT_STRING       | \"automatic\"     | Determines      |
|                 |                 |                 | which CPLEX     |
|                 |                 |                 | algorithm to    |
|                 |                 |                 | use. (automatic |
|                 |                 |                 | |primal_simplex |
|                 |                 |                 | |dual_simplex|n |
|                 |                 |                 | etwork|barrier| |
|                 |                 |                 | sifting|concurr |
|                 |                 |                 | ent|crossover)  |
+-----------------+-----------------+-----------------+-----------------+
| simplex_maxiter | OT_INTEGER      | 2.100e+09       | Maximum number  |
|                 |                 |                 | of simplex      |
|                 |                 |                 | iterations.     |
+-----------------+-----------------+-----------------+-----------------+
| tol             | OT_REAL         | 0.000           | Tolerance of    |
|                 |                 |                 | solver          |
+-----------------+-----------------+-----------------+-----------------+
| warm_start      | OT_BOOLEAN      | false           | Use warm start  |
|                 |                 |                 | with simplex    |
|                 |                 |                 | methods         |
|                 |                 |                 | (affects only   |
|                 |                 |                 | the simplex     |
|                 |                 |                 | methods).       |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

ooqp
----



Interface to the OOQP Solver for quadratic programming The current
implementation assumes that OOQP is configured with the MA27 sparse linear
solver.

NOTE: when doing multiple calls to evaluate(), check if you need to
reInit();

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| artol           | OT_REAL         | 0.000           | tolerance as    |
|                 |                 |                 | provided with   |
|                 |                 |                 | setArTol to     |
|                 |                 |                 | OOQP            |
+-----------------+-----------------+-----------------+-----------------+
| mutol           | OT_REAL         | 0.000           | tolerance as    |
|                 |                 |                 | provided with   |
|                 |                 |                 | setMuTol to     |
|                 |                 |                 | OOQP            |
+-----------------+-----------------+-----------------+-----------------+
| print_level     | OT_INTEGER      | 0               | Print level.    |
|                 |                 |                 | OOQP listens to |
|                 |                 |                 | print_level 0,  |
|                 |                 |                 | 10 and 100      |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

qpoases
-------



Interface to QPOases Solver for quadratic programming

>List of available options

+-----------------+-----------------+-----------------+-----------------+
|       Id        |      Type       |     Default     |   Description   |
+=================+=================+=================+=================+
| CPUtime         | OT_REAL         | None            | The maximum     |
|                 |                 |                 | allowed CPU     |
|                 |                 |                 | time in seconds |
|                 |                 |                 | for the whole   |
|                 |                 |                 | initialisation  |
|                 |                 |                 | (and the        |
|                 |                 |                 | actually        |
|                 |                 |                 | required one on |
|                 |                 |                 | output).        |
|                 |                 |                 | Disabled if     |
|                 |                 |                 | unset.          |
+-----------------+-----------------+-----------------+-----------------+
| boundRelaxation | OT_REAL         | 10000           | Initial         |
|                 |                 |                 | relaxation of   |
|                 |                 |                 | bounds to start |
|                 |                 |                 | homotopy and    |
|                 |                 |                 | initial value   |
|                 |                 |                 | for far bounds. |
+-----------------+-----------------+-----------------+-----------------+
| boundTolerance  | OT_REAL         | 0.000           | If upper and    |
|                 |                 |                 | lower bounds    |
|                 |                 |                 | differ less     |
|                 |                 |                 | than this       |
|                 |                 |                 | tolerance, they |
|                 |                 |                 | are regarded    |
|                 |                 |                 | equal, i.e. as  |
|                 |                 |                 | equality        |
|                 |                 |                 | constraint.     |
+-----------------+-----------------+-----------------+-----------------+
| enableCholeskyR | OT_INTEGER      | 0               | Specifies the   |
| efactorisation  |                 |                 | frequency of a  |
|                 |                 |                 | full re-        |
|                 |                 |                 | factorisation   |
|                 |                 |                 | of projected    |
|                 |                 |                 | Hessian matrix: |
|                 |                 |                 | 0: turns them   |
|                 |                 |                 | off, 1: uses    |
|                 |                 |                 | them at each    |
|                 |                 |                 | iteration etc.  |
+-----------------+-----------------+-----------------+-----------------+
| enableDriftCorr | OT_INTEGER      | 1               | Specifies the   |
| ection          |                 |                 | frequency of    |
|                 |                 |                 | drift           |
|                 |                 |                 | corrections: 0: |
|                 |                 |                 | turns them off. |
+-----------------+-----------------+-----------------+-----------------+
| enableEqualitie | OT_BOOLEAN      | False           | Specifies       |
| s               |                 |                 | whether         |
|                 |                 |                 | equalities      |
|                 |                 |                 | should be       |
|                 |                 |                 | treated as      |
|                 |                 |                 | always active   |
|                 |                 |                 | (True) or not   |
|                 |                 |                 | (False)         |
+-----------------+-----------------+-----------------+-----------------+
| enableFarBounds | OT_BOOLEAN      | True            | Enables the use |
|                 |                 |                 | of far bounds.  |
+-----------------+-----------------+-----------------+-----------------+
| enableFlippingB | OT_BOOLEAN      | True            | Enables the use |
| ounds           |                 |                 | of flipping     |
|                 |                 |                 | bounds.         |
+-----------------+-----------------+-----------------+-----------------+
| enableFullLITes | OT_BOOLEAN      | False           | Enables         |
| ts              |                 |                 | condition-      |
|                 |                 |                 | hardened (but   |
|                 |                 |                 | more expensive) |
|                 |                 |                 | LI test.        |
+-----------------+-----------------+-----------------+-----------------+
| enableNZCTests  | OT_BOOLEAN      | True            | Enables nonzero |
|                 |                 |                 | curvature       |
|                 |                 |                 | tests.          |
+-----------------+-----------------+-----------------+-----------------+
| enableRamping   | OT_BOOLEAN      | True            | Enables         |
|                 |                 |                 | ramping.        |
+-----------------+-----------------+-----------------+-----------------+
| enableRegularis | OT_BOOLEAN      | False           | Enables         |
| ation           |                 |                 | automatic       |
|                 |                 |                 | Hessian         |
|                 |                 |                 | regularisation. |
+-----------------+-----------------+-----------------+-----------------+
| epsDen          | OT_REAL         | 0.000           | Denominator     |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | ratio tests.    |
+-----------------+-----------------+-----------------+-----------------+
| epsFlipping     | OT_REAL         | 0.000           | Tolerance of    |
|                 |                 |                 | squared         |
|                 |                 |                 | Cholesky        |
|                 |                 |                 | diagonal factor |
|                 |                 |                 | which triggers  |
|                 |                 |                 | flipping bound. |
+-----------------+-----------------+-----------------+-----------------+
| epsIterRef      | OT_REAL         | 0.000           | Early           |
|                 |                 |                 | termination     |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | iterative       |
|                 |                 |                 | refinement.     |
+-----------------+-----------------+-----------------+-----------------+
| epsLITests      | OT_REAL         | 0.000           | Tolerance for   |
|                 |                 |                 | linear          |
|                 |                 |                 | independence    |
|                 |                 |                 | tests.          |
+-----------------+-----------------+-----------------+-----------------+
| epsNZCTests     | OT_REAL         | 0.000           | Tolerance for   |
|                 |                 |                 | nonzero         |
|                 |                 |                 | curvature       |
|                 |                 |                 | tests.          |
+-----------------+-----------------+-----------------+-----------------+
| epsNum          | OT_REAL         | -0.000          | Numerator       |
|                 |                 |                 | tolerance for   |
|                 |                 |                 | ratio tests.    |
+-----------------+-----------------+-----------------+-----------------+
| epsRegularisati | OT_REAL         | 0.000           | Scaling factor  |
| on              |                 |                 | of identity     |
|                 |                 |                 | matrix used for |
|                 |                 |                 | Hessian         |
|                 |                 |                 | regularisation. |
+-----------------+-----------------+-----------------+-----------------+
| finalRamping    | OT_REAL         | 1               | Final value for |
|                 |                 |                 | ramping         |
|                 |                 |                 | strategy.       |
+-----------------+-----------------+-----------------+-----------------+
| growFarBounds   | OT_REAL         | 1000            | Factor to grow  |
|                 |                 |                 | far bounds.     |
+-----------------+-----------------+-----------------+-----------------+
| initialFarBound | OT_REAL         | 1000000         | Initial size    |
| s               |                 |                 | for far bounds. |
+-----------------+-----------------+-----------------+-----------------+
| initialRamping  | OT_REAL         | 0.500           | Start value for |
|                 |                 |                 | ramping         |
|                 |                 |                 | strategy.       |
+-----------------+-----------------+-----------------+-----------------+
| initialStatusBo | OT_STRING       | lower           | Initial status  |
| unds            |                 |                 | of bounds at    |
|                 |                 |                 | first           |
|                 |                 |                 | iteration.      |
+-----------------+-----------------+-----------------+-----------------+
| maxDualJump     | OT_REAL         | 100000000       | Maximum allowed |
|                 |                 |                 | jump in dual    |
|                 |                 |                 | variables in    |
|                 |                 |                 | linear          |
|                 |                 |                 | independence    |
|                 |                 |                 | tests.          |
+-----------------+-----------------+-----------------+-----------------+
| maxPrimalJump   | OT_REAL         | 100000000       | Maximum allowed |
|                 |                 |                 | jump in primal  |
|                 |                 |                 | variables in    |
|                 |                 |                 | nonzero         |
|                 |                 |                 | curvature       |
|                 |                 |                 | tests.          |
+-----------------+-----------------+-----------------+-----------------+
| nWSR            | OT_INTEGER      | None            | The maximum     |
|                 |                 |                 | number of       |
|                 |                 |                 | working set     |
|                 |                 |                 | recalculations  |
|                 |                 |                 | to be performed |
|                 |                 |                 | during the      |
|                 |                 |                 | initial         |
|                 |                 |                 | homotopy.       |
|                 |                 |                 | Default is 5(nx |
|                 |                 |                 | + nc)           |
+-----------------+-----------------+-----------------+-----------------+
| numRefinementSt | OT_INTEGER      | 1               | Maximum number  |
| eps             |                 |                 | of iterative    |
|                 |                 |                 | refinement      |
|                 |                 |                 | steps.          |
+-----------------+-----------------+-----------------+-----------------+
| numRegularisati | OT_INTEGER      | 0               | Maximum number  |
| onSteps         |                 |                 | of successive   |
|                 |                 |                 | regularisation  |
|                 |                 |                 | steps.          |
+-----------------+-----------------+-----------------+-----------------+
| printLevel      | OT_STRING       | medium          | Defines the     |
|                 |                 |                 | amount of text  |
|                 |                 |                 | output during   |
|                 |                 |                 | QP solution,    |
|                 |                 |                 | see Section 5.7 |
+-----------------+-----------------+-----------------+-----------------+
| terminationTole | OT_REAL         | 0.000           | Relative        |
| rance           |                 |                 | termination     |
|                 |                 |                 | tolerance to    |
|                 |                 |                 | stop homotopy.  |
+-----------------+-----------------+-----------------+-----------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

sqic
----



Interface to the SQIC solver for quadratic programming

>List of available options

+----+------+---------+-------------+
| Id | Type | Default | Description |
+====+======+=========+=============+
+----+------+---------+-------------+

--------------------------------------------------------------------------------



--------------------------------------------------------------------------------

nlp
---



Solve QPs using an NlpSolver

>List of available options

+----+------+---------+-------------+
| Id | Type | Default | Description |
+====+======+=========+=============+
+----+------+---------+-------------+

>List of available stats

+------------------+
|        Id        |
+==================+
| nlp_solver_stats |
+------------------+

--------------------------------------------------------------------------------



Joel Andersson
Diagrams
--------



C++ includes: qp_solver.hpp ";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";


// File: classcasadi_1_1QpToImplicit.xml


// File: classcasadi_1_1QpToNlp.xml


// File: classcasadi_1_1RealtypeSX.xml


// File: classcasadi_1_1Reshape.xml


// File: classcasadi_1_1RkIntegrator.xml


// File: classcasadi_1_1Scpgen.xml


// File: classcasadi_1_1SetNonzeros.xml


// File: classcasadi_1_1SetNonzerosSlice.xml


// File: classcasadi_1_1SetNonzerosSlice2.xml


// File: classcasadi_1_1SetNonzerosVector.xml


// File: classcasadi_1_1SharedObject.xml
%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring") casadi::SharedObject "

SharedObject implements a reference counting framework similar for efficient
and easily-maintained memory management.

To use the class, both the SharedObject class (the public class), and the
SharedObjectNode class (the internal class) must be inherited from. It can
be done in two different files and together with memory management, this
approach provides a clear distinction of which methods of the class are to
be considered \"public\", i.e. methods for public use that can be considered
to remain over time with small changes, and the internal memory.

When interfacing a software, which typically includes including some header
file, this is best done only in the file where the internal class is
defined, to avoid polluting the global namespace and other side effects.

The default constructor always means creating a null pointer to an internal
class only. To allocate an internal class (this works only when the internal
class isn't abstract), use the constructor with arguments.

The copy constructor and the assignment operator perform shallow copies
only, to make a deep copy you must use the clone method explicitly. This
will give a shared pointer instance.

In an inheritance hierarchy, you can cast down automatically, e.g.
(SXFunction is a child class of Function): SXFunction derived(...); Function
base = derived;

To cast up, use the shared_cast template function, which works analogously
to dynamic_cast, static_cast, const_cast etc, e.g.: SXFunction derived(...);
Function base = derived; SXFunction derived_from_base =
shared_cast<SXFunction>(base);

A failed shared_cast will result in a null pointer (cf. dynamic_cast)

Joel Andersson

C++ includes: shared_object.hpp ";

%feature("docstring") casadi::SharedObject::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";


// File: classcasadi_1_1ShellCompiler.xml


// File: classcasadi_1_1SimplifiedExternal.xml


// File: classcasadi_1_1Simulator.xml


/*  Simple Getters & Setters  */

/*  Advanced Getters  */

/*  Option Functionality  */ %feature("docstring")
casadi::Function::rootfinder_jac() "

Access Jacobian of the ths function for a rootfinder.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionEnumValue(const std::string &name)
const  " [INTERNAL]  Get the enum value corresponding to th certain option.

";

%feature("docstring")  casadi::OptionsFunctionality::copyOptions(const
OptionsFunctionality &obj, bool skipUnknown=false) "

Copy all options from another object.

";

%feature("docstring")  casadi::Function::fullJacobian() "

Generate a Jacobian function of all the inputs elements with respect to all
the output elements).

";

%feature("docstring")  casadi::Function::index_in(const std::string &name)
const  "

Find the index for a string describing a particular entry of an input
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::getAtomicInput(int k) const  "

Get the (integer) input arguments of an atomic operation.

";

%feature("docstring")  casadi::Function::map(const std::vector< std::vector<
MX > > &arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::vector< MX > &arg,
const std::string &parallelization="serial") "

Evaluate symbolically in parallel (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::map(const std::string &name, int N,
const Dict &options=Dict()) const  "

Create a mapped version of this function.

Suppose the function has a signature of:

::

     f: (a, p) -> ( s )
  



The the mapaccumulated version has the signature:

::

     F: (A, P) -> (S )
  
      with
          a: horzcat([a0, a1, ..., a_(N-1)])
          p: horzcat([p0, p1, ..., p_(N-1)])
          s: horzcat([s0, s1, ..., s_(N-1)])
      and
          s0 <- f(a0, p0)
          s1 <- f(a1, p1)
          ...
          s_(N-1) <- f(a_(N-1), p_(N-1))
  



";

%feature("docstring")  casadi::Function::map(const std::string &name, int n,
const std::vector< bool > &repeat_in, const std::vector< bool > &repeat_out,
const Dict &opts=Dict()) const  "

Generic map.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Function::evaluate() "

Evaluate.

";

%feature("docstring")  casadi::Function::sx_in(int iind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::sz_iw() const  " [INTERNAL]  Get
required length of iw field.

";

%feature("docstring")  casadi::Function::jacSparsity(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, int oind=0, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::jacSparsity(const std::string
&iind, const std::string &oind, bool compact=false, bool symmetric=false) "

Get, if necessary generate, the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::getStat(const std::string &name)
const  "

Get a single statistic obtained at the end of the last evaluate call.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionAllowedIndex(const std::string &name)
const  " [INTERNAL]  Get the index into allowed options of a certain option.

";

%feature("docstring")  casadi::Function::description_in(int ind) const  "

Get input scheme description by index.

";

%feature("docstring")  casadi::Function::nlp_solver_jacg() "

Access the Hessian of the Lagrangian function for an NLP solver.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(int
iind=0) const "

Get an input by index.

Parameters:
-----------

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(const
std::string &iname) const "

Get an input by name.

Parameters:
-----------

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val, int
iind=0) " [INTERNAL]  Get an input by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getInput(T val,
const std::string &iname) " [INTERNAL]  Get an input by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::is_a(const std::string &type, bool
recursive=true) const  "

Check if the function is of a particular type Optionally check if name
matches one of the base classes (default true)

";

%feature("docstring")  casadi::Function::name_in() const  "

Get input scheme.

";

%feature("docstring")  casadi::Function::name_in(int ind) const  "

Get input scheme name by index.

";

%feature("docstring")  casadi::Function::size1_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size1_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring") casadi::Simulator "

Integrator class.

An \"simulator\" integrates an IVP, stopping at a (fixed) number of grid
points and evaluates a set of output functions at these points. The internal
stepsizes of the integrator need not coincide with the gridpoints.

Simulator is an casadi::Function mapping from casadi::IntegratorInput to n.
\\\\

The output function needs to be a mapping from casadi::DAEInput to n. The
default output has n=1 and the output is the (vectorized) differential state
for each time step.

Joel Andersson

>Input scheme: casadi::IntegratorInput (INTEGRATOR_NUM_IN = 6) [integratorIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| INTEGRATOR_X0          | x0                     | Differential state at  |
|                        |                        | the initial time .     |
+------------------------+------------------------+------------------------+
| INTEGRATOR_P           | p                      | Parameters .           |
+------------------------+------------------------+------------------------+
| INTEGRATOR_Z0          | z0                     | Initial guess for the  |
|                        |                        | algebraic variable .   |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RX0         | rx0                    | Backward differential  |
|                        |                        | state at the final     |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RP          | rp                     | Backward parameter     |
|                        |                        | vector .               |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RZ0         | rz0                    | Initial guess for the  |
|                        |                        | backwards algebraic    |
|                        |                        | variable .             |
+------------------------+------------------------+------------------------+

>List of available options

+--------------+--------------+--------------+--------------+--------------+
|      Id      |     Type     |   Default    | Description  |   Used in    |
+==============+==============+==============+==============+==============+
| ad_weight    | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | derivative c |              |
|              |              |              | alculation.W |              |
|              |              |              | hen there is |              |
|              |              |              | an option of |              |
|              |              |              | either using |              |
|              |              |              | forward or   |              |
|              |              |              | reverse mode |              |
|              |              |              | directional  |              |
|              |              |              | derivatives, |              |
|              |              |              | the          |              |
|              |              |              | condition ad |              |
|              |              |              | _weight*nf<= |              |
|              |              |              | (1-ad_weight |              |
|              |              |              | )*na is used |              |
|              |              |              | where nf and |              |
|              |              |              | na are       |              |
|              |              |              | estimates of |              |
|              |              |              | the number   |              |
|              |              |              | of forward/r |              |
|              |              |              | everse mode  |              |
|              |              |              | directional  |              |
|              |              |              | derivatives  |              |
|              |              |              | needed. By   |              |
|              |              |              | default,     |              |
|              |              |              | ad_weight is |              |
|              |              |              | calculated a |              |
|              |              |              | utomatically |              |
|              |              |              | , but this   |              |
|              |              |              | can be       |              |
|              |              |              | overridden   |              |
|              |              |              | by setting   |              |
|              |              |              | this option. |              |
|              |              |              | In           |              |
|              |              |              | particular,  |              |
|              |              |              | 0 means      |              |
|              |              |              | forcing      |              |
|              |              |              | forward mode |              |
|              |              |              | and 1        |              |
|              |              |              | forcing      |              |
|              |              |              | reverse      |              |
|              |              |              | mode. Leave  |              |
|              |              |              | unset for    |              |
|              |              |              | (class       |              |
|              |              |              | specific)    |              |
|              |              |              | heuristics.  |              |
+--------------+--------------+--------------+--------------+--------------+
| ad_weight_sp | OT_REAL      | GenericType( | Weighting    | casadi::Func |
|              |              | )            | factor for   | tionInternal |
|              |              |              | sparsity     |              |
|              |              |              | pattern      |              |
|              |              |              | calculation  |              |
|              |              |              | calculation. |              |
|              |              |              | Overrides    |              |
|              |              |              | default      |              |
|              |              |              | behavior.    |              |
|              |              |              | Set to 0 and |              |
|              |              |              | 1 to force   |              |
|              |              |              | forward and  |              |
|              |              |              | reverse mode |              |
|              |              |              | respectively |              |
|              |              |              | . Cf. option |              |
|              |              |              | \"ad_weight\". |              |
+--------------+--------------+--------------+--------------+--------------+
| compiler     | OT_STRING    | \"clang\"      | Just-in-time | casadi::Func |
|              |              |              | compiler     | tionInternal |
|              |              |              | plugin to be |              |
|              |              |              | used.        |              |
+--------------+--------------+--------------+--------------+--------------+
| defaults_rec | OT_STRINGVEC | GenericType( | Changes      | casadi::Opti |
| ipes         | TOR          | )            | default      | onsFunctiona |
|              |              |              | options      | lityNode     |
|              |              |              | according to |              |
|              |              |              | a given      |              |
|              |              |              | recipe (low- |              |
|              |              |              | level)       |              |
+--------------+--------------+--------------+--------------+--------------+
| gather_stats | OT_BOOLEAN   | false        | Flag to      | casadi::Func |
|              |              |              | indicate     | tionInternal |
|              |              |              | whether      |              |
|              |              |              | statistics   |              |
|              |              |              | must be      |              |
|              |              |              | gathered     |              |
+--------------+--------------+--------------+--------------+--------------+
| input_scheme | OT_STRINGVEC | GenericType( | Custom input | casadi::Func |
|              | TOR          | )            | scheme       | tionInternal |
+--------------+--------------+--------------+--------------+--------------+
| inputs_check | OT_BOOLEAN   | true         | Throw        | casadi::Func |
|              |              |              | exceptions   | tionInternal |
|              |              |              | when the     |              |
|              |              |              | numerical    |              |
|              |              |              | values of    |              |
|              |              |              | the inputs   |              |
|              |              |              | don't make   |              |
|              |              |              | sense        |              |
+--------------+--------------+--------------+--------------+--------------+
| jac_penalty  | OT_REAL      | 2            | When         | casadi::Func |
|              |              |              | requested    | tionInternal |
|              |              |              | for a number |              |
|              |              |              | of forward/r |              |
|              |              |              | everse       |              |
|              |              |              | directions,  |              |
|              |              |              | it may be    |              |
|              |              |              | cheaper to   |              |
|              |              |              | compute      |              |
|              |              |              | first the    |              |
|              |              |              | full         |              |
|              |              |              | jacobian and |              |
|              |              |              | then         |              |
|              |              |              | multiply     |              |
|              |              |              | with seeds,  |              |
|              |              |              | rather than  |              |
|              |              |              | obtain the   |              |
|              |              |              | requested    |              |
|              |              |              | directions   |              |
|              |              |              | in a straigh |              |
|              |              |              | tforward     |              |
|              |              |              | manner.      |              |
|              |              |              | Casadi uses  |              |
|              |              |              | a heuristic  |              |
|              |              |              | to decide    |              |
|              |              |              | which is     |              |
|              |              |              | cheaper. A   |              |
|              |              |              | high value   |              |
|              |              |              | of 'jac_pena |              |
|              |              |              | lty' makes   |              |
|              |              |              | it less      |              |
|              |              |              | likely for   |              |
|              |              |              | the heurstic |              |
|              |              |              | to chose the |              |
|              |              |              | full         |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy.    |              |
|              |              |              | The special  |              |
|              |              |              | value -1     |              |
|              |              |              | indicates    |              |
|              |              |              | never to use |              |
|              |              |              | the full     |              |
|              |              |              | Jacobian     |              |
|              |              |              | strategy     |              |
+--------------+--------------+--------------+--------------+--------------+
| jit          | OT_BOOLEAN   | false        | Use just-in- | casadi::Func |
|              |              |              | time         | tionInternal |
|              |              |              | compiler to  |              |
|              |              |              | speed up the |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| jit_options  | OT_DICT      | GenericType( | Options to   | casadi::Func |
|              |              | )            | be passed to | tionInternal |
|              |              |              | the jit      |              |
|              |              |              | compiler.    |              |
+--------------+--------------+--------------+--------------+--------------+
| monitor      | OT_STRINGVEC | GenericType( | Monitors to  | casadi::Func |
|              | TOR          | )            | be activated | tionInternal |
|              |              |              | (inputs|outp | casadi::Simu |
|              |              |              | uts)  (initi | latorInterna |
|              |              |              | al|step)     | l            |
+--------------+--------------+--------------+--------------+--------------+
| output_schem | OT_STRINGVEC | GenericType( | Custom       | casadi::Func |
| e            | TOR          | )            | output       | tionInternal |
|              |              |              | scheme       |              |
+--------------+--------------+--------------+--------------+--------------+
| regularity_c | OT_BOOLEAN   | true         | Throw        | casadi::Func |
| heck         |              |              | exceptions   | tionInternal |
|              |              |              | when NaN or  |              |
|              |              |              | Inf appears  |              |
|              |              |              | during       |              |
|              |              |              | evaluation   |              |
+--------------+--------------+--------------+--------------+--------------+
| user_data    | OT_VOIDPTR   | GenericType( | A user-      | casadi::Func |
|              |              | )            | defined      | tionInternal |
|              |              |              | field that   |              |
|              |              |              | can be used  |              |
|              |              |              | to identify  |              |
|              |              |              | the function |              |
|              |              |              | or pass      |              |
|              |              |              | additional   |              |
|              |              |              | information  |              |
+--------------+--------------+--------------+--------------+--------------+
| verbose      | OT_BOOLEAN   | false        | Verbose      | casadi::Func |
|              |              |              | evaluation   | tionInternal |
|              |              |              | for          |              |
|              |              |              | debugging    |              |
+--------------+--------------+--------------+--------------+--------------+

>List of available monitors

+---------+---------------------------+
|   Id    |          Used in          |
+=========+===========================+
| initial | casadi::SimulatorInternal |
+---------+---------------------------+
| inputs  | casadi::FunctionInternal  |
+---------+---------------------------+
| outputs | casadi::FunctionInternal  |
+---------+---------------------------+
| step    | casadi::SimulatorInternal |
+---------+---------------------------+

Diagrams
--------



C++ includes: simulator.hpp ";

%feature("docstring")  casadi::Function::getSanitizedName() const  "

get function name with all non alphanumeric characters converted to '_'

";

%feature("docstring")  casadi::Function::tangent(int iind=0, int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
int oind=0) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(int iind, const std::string
&oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::tangent(const std::string &iind,
const std::string &oind) "

Generate a tangent function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the input must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::nlp_solver_nlp() "

Access the NLP for an NLP solver.

";

%feature("docstring")  casadi::Function::getAtomicInputReal(int k) const  "

Get the floating point output argument of an atomic operation.

";

%feature("docstring")  casadi::Function::setJacobian(const Function &jac,
int iind=0, int oind=0, bool compact=false) "

Set the Jacobian function of output oind with respect to input iind NOTE:
Does not take ownership, only weak references to the Jacobians are kept
internally

";

%feature("docstring")  casadi::Function::generate(const std::string &fname,
const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::generate(const Dict &opts=Dict()) "

Export / Generate C code for the function.

";

%feature("docstring")  casadi::Function::getAtomicOutput(int k) const  "

Get the (integer) output argument of an atomic operation.

";

%feature("docstring")  casadi::OptionsFunctionality::dictionary() const  "

Get the dictionary.

";

%feature("docstring")
casadi::OptionsFunctionality::getOptionDescription(const std::string &str)
const  "

Get the description of a certain option.

";

%feature("docstring")  casadi::Function::size_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::callDerivative(const DMatrixVector
&arg, DMatrixVector &output_res, const DMatrixVectorVector &fseed,
DMatrixVectorVector &output_fsens, const DMatrixVectorVector &aseed,
DMatrixVectorVector &output_asens, bool always_inline=false, bool
never_inline=false) " [INTERNAL]  Evaluate the function symbolically or
numerically with directional derivatives The first two arguments are the
nondifferentiated inputs and results of the evaluation, the next two
arguments are a set of forward directional seeds and the resulting forward
directional derivatives, the length of the vector being the number of
forward directions. The next two arguments are a set of adjoint directional
seeds and the resulting adjoint directional derivatives, the length of the
vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const SXVector &arg,
SXVector &output_res, const SXVectorVector &fseed, SXVectorVector
&output_fsens, const SXVectorVector &aseed, SXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::callDerivative(const MXVector &arg,
MXVector &output_res, const MXVectorVector &fseed, MXVectorVector
&output_fsens, const MXVectorVector &aseed, MXVectorVector &output_asens,
bool always_inline=false, bool never_inline=false) " [INTERNAL]  Evaluate
the function symbolically or numerically with directional derivatives The
first two arguments are the nondifferentiated inputs and results of the
evaluation, the next two arguments are a set of forward directional seeds
and the resulting forward directional derivatives, the length of the vector
being the number of forward directions. The next two arguments are a set of
adjoint directional seeds and the resulting adjoint directional derivatives,
the length of the vector being the number of adjoint directions.

";

%feature("docstring")  casadi::Function::size2_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size2_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val, int
iind=0) "

Set an input by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iind:  index within the range [0..n_in()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setInput(T val,
const std::string &iname) "

Set an input by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

iname:  input name. Only allowed when an input scheme is set.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&fseed, std::vector< std::vector< MX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&fseed, std::vector< std::vector< SX > > &output_fsens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::callForward(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &fseed, std::vector< std::vector< DMatrix > >
&output_fsens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, forward mode.

";

%feature("docstring")  casadi::Function::sparsity_in(int ind) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::sparsity_in(const std::string
&iname) const  "

Get sparsity of a given input.

";

%feature("docstring")  casadi::Function::generateLiftingFunctions(Function
&output_vdef_fcn, Function &output_vinit_fcn) "

Extract the functions needed for the Lifted Newton method.

";

%feature("docstring")  casadi::Function::spCanEvaluate(bool fwd) "
[INTERNAL]  Is the class able to propagate seeds through the algorithm?

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::removeMonitor(const std::string
&mon) "

Remove modules to be monitored.

";

%feature("docstring")  casadi::Function::getStats() const  "

Get all statistics obtained at the end of the last evaluate call.

";

%feature("docstring")  casadi::Function::sz_arg() const  " [INTERNAL]  Get
required length of arg field.

";

%feature("docstring")  casadi::Function::size2_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size2_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::getWorkSize() const  "

Get the length of the work vector.

";

%feature("docstring")  casadi::Function::sz_w() const  " [INTERNAL]  Get
required length of w field.

";

%feature("docstring")  casadi::Function::sx_out(int oind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::sx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::kernel_sum(const std::string &name,
const std::pair< int, int > &size, double r, int n, const Dict &opts=Dict())
const  "

kernel_sum Consider a dense matrix V.

KernelSum computes

F(V,X) = sum_i sum_j f ( [i;j], V(i,j), X)

with X: [x;y]

where the summation is taken for all entries (i,j) that are a distance r
away from X.

This function assumes that V is fixed: sensitivities with respect to it are
not computed.

This allows for improved speed of evaluation.

Having V fixed is a common use case: V may be a large bitmap (observation),
onto which a kernel is fitted.

Joris Gillis

";

%feature("docstring")  casadi::Function::default_in(int ind) const  "

Get default input value (NOTE: constant reference)

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Function::gradient(int iind=0, int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
int oind=0) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(int iind, const
std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::gradient(const std::string &iind,
const std::string &oind) "

Generate a gradient function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. Note
that the output must be scalar. In other cases, use the Jacobian instead.

";

%feature("docstring")  casadi::Function::rootfinder_fun() "

Access rhs function for a rootfinder.

";

%feature("docstring")  casadi::Function::nnz_in() const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(int ind) const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::nnz_in(const std::string &iname)
const  "

Get of number of input nonzeros For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionTypeName(const
std::string &str) const  "

Get the type name of a certain option.

";

%feature("docstring")  casadi::Function::sz_res() const  " [INTERNAL]  Get
required length of res field.

";

%feature("docstring")  casadi::Function::nlp_solver_hesslag() "

Access the Jacobian of the constraint function for an NLP solver.

";

%feature("docstring")  casadi::Function::name() const  "

Name of the function.

";

%feature("docstring")  casadi::Function::checkInputs() const  " [INTERNAL]
Check if the numerical values of the supplied bounds make sense.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::Function::jacobian(int iind=0, int oind=0,
bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
int oind=0, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(int iind, const
std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::jacobian(const std::string &iind,
const std::string &oind, bool compact=false, bool symmetric=false) "

Generate a Jacobian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The default behavior of this class is defined by the derived class. If
compact is set to true, only the nonzeros of the input and output
expressions are considered. If symmetric is set to true, the Jacobian being
calculated is known to be symmetric (usually a Hessian), which can be
exploited by the algorithm.

The generated Jacobian has one more output than the calling function
corresponding to the Jacobian and the same number of inputs.

";

%feature("docstring")  casadi::Function::size1_in(int ind) const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::size1_in(const std::string &iname)
const  "

Get input dimension.

";

%feature("docstring")  casadi::Function::setFullJacobian(const Function
&jac) "

Set the Jacobian of all the input nonzeros with respect to all output
nonzeros NOTE: Does not take ownership, only weak references to the Jacobian
are kept internally

";

%feature("docstring")  casadi::Function::sparsity_out(int ind) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::Function::sparsity_out(const std::string
&iname) const  "

Get sparsity of a given output.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionDefault(const
std::string &str) const  "

Get the default of a certain option.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByAllowedIndex(const std::string
&name, int i) " [INTERNAL]  Set a certain option by giving its index into
the allowed values.

";

%feature("docstring")  casadi::Function::spEvaluate(bool fwd) " [INTERNAL]
Propagate the sparsity pattern through a set of directional.

derivatives forward or backward (for usage, see the example
propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::derForward(int nfwd) "

Get a function that calculates nfwd forward derivatives.

Returns a function with n_in + n_out +nfwd*n_in inputs and nfwd*n_out
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nfwd*n_in inputs correspond to forward seeds, one direction at a time The
nfwd*n_out outputs correspond to forward sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring")  casadi::Function::setDerReverse(const Function &fcn,
int nadj) "

Set a function that calculates nadj adjoint derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::integrator_dae() "

Get the DAE for an integrator.

";

%feature("docstring")  casadi::Function::nlp_solver_gradf() "

Access the objective gradient function for an NLP solver

";

%feature("docstring")  casadi::Function::getAtomicOperation(int k) const  "

Get an atomic operation operator index.

";

%feature("docstring")  casadi::Function::getAlgorithmSize() const  "

Get the number of atomic operations.

";

%feature("docstring")
casadi::OptionsFunctionality::printOptions(std::ostream
&stream=casadi::userOut()) const  "

Print options to a stream.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(int
oind=0) const "

Get an output by index.

Parameters:
-----------

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(const
std::string &oname) const "

Get an output by name.

Parameters:
-----------

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
int oind=0) " [INTERNAL]  Get an output by index.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::getOutput(T val,
const std::string &oname) " [INTERNAL]  Get an output by name.

Parameters:
-----------

val:  can be double&, std::vector<double>&, Matrix<double>&, double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")
casadi::OptionsFunctionality::setOptionByEnumValue(const std::string &name,
int v) " [INTERNAL]  Set a certain option by giving an enum value.

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionAllowed(const
std::string &str) const  "

Get the allowed values of a certain option.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< MX >
&arg, const std::vector< MX > &res, const std::vector< std::vector< MX > >
&aseed, std::vector< std::vector< MX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector< SX >
&arg, const std::vector< SX > &res, const std::vector< std::vector< SX > >
&aseed, std::vector< std::vector< SX > > &output_asens, bool
always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::callReverse(const std::vector<
DMatrix > &arg, const std::vector< DMatrix > &res, const std::vector<
std::vector< DMatrix > > &aseed, std::vector< std::vector< DMatrix > >
&output_asens, bool always_inline=false, bool never_inline=false) "

Create call to (cached) derivative function, reverse mode.

";

%feature("docstring")  casadi::Function::numel_out() const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(int ind) const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::numel_out(const std::string &oname)
const  "

Get of number of output elements For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::derReverse(int nadj) "

Get a function that calculates nadj adjoint derivatives.

Returns a function with n_in + n_out +nadj*n_out inputs and nadj*n_in
outputs. The first n_in inputs correspond to nondifferentiated inputs. The
next n_out inputs correspond to nondifferentiated outputs. and the last
nadj*n_out inputs correspond to adjoint seeds, one direction at a time The
nadj*n_in outputs correspond to adjoint sensitivities, one direction at a
time. * (n_in = n_in(), n_out = n_out())

(n_in = n_in(), n_out = n_out())

The functions returned are cached, meaning that if called multiple timed
with the same value, then multiple references to the same function will be
returned.

";

%feature("docstring") casadi::Simulator::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")  casadi::Function::printDimensions(std::ostream
&stream=casadi::userOut()) const  "

Print dimensions of inputs and outputs.

";

%feature("docstring") casadi::Simulator::Simulator() "

Default constructor.

";

%feature("docstring") casadi::Simulator::Simulator(const std::string &name,
const Integrator &integrator, const Function &output_fcn, const Matrix<
double > &grid, const Dict &opts=Dict()) "

Constructor.

Parameters:
-----------

output_fcn:  output function which maps to n outputs. (new syntax, includes
initialization)

>Input scheme: casadi::DAEInput (DAE_NUM_IN = 4) [daeIn]

+-----------+-------+----------------------------+
| Full name | Short |        Description         |
+===========+=======+============================+
| DAE_X     | x     | Differential state .       |
+-----------+-------+----------------------------+
| DAE_Z     | z     | Algebraic state .          |
+-----------+-------+----------------------------+
| DAE_P     | p     | Parameter .                |
+-----------+-------+----------------------------+
| DAE_T     | t     | Explicit time dependence . |
+-----------+-------+----------------------------+

";

%feature("docstring") casadi::Simulator::Simulator(const std::string &name,
const Integrator &integrator, const Matrix< double > &grid, const Dict
&opts=Dict()) "

Output function equal to the state (new syntax, includes initialization)

";

%feature("docstring")  casadi::Function::name_out() const  "

Get output scheme.

";

%feature("docstring")  casadi::Function::name_out(int ind) const  "

Get output scheme name by index.

";

%feature("docstring")  casadi::Function::n_in() const  "

Get the number of function inputs.

";

%feature("docstring")  casadi::Function::mx_out(int ind) const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out(const std::string &oname)
const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::mx_out() const  "

Get symbolic primitives equivalent to the output expressions.

";

%feature("docstring")  casadi::Function::rootfinder_linsol() "

Access linear solver of a rootfinder.

";

%feature("docstring")  casadi::Function::countNodes() const  "

Number of nodes in the algorithm.

";

%feature("docstring")  casadi::Function::free_sx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int N, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::mapaccum(const std::string &name,
int n, const std::vector< bool > &input_accum, const std::vector< int >
&output_accum, bool reverse=false, const Dict &opts=Dict()) const  "

Create a mapaccumulated version of this function.

Suppose the function has a signature of:

::

     f: (x, u) -> (x_next , y )
  



The the mapaccumulated version has the signature:

::

     F: (x0, U) -> (X , Y )
  
      with
          U: horzcat([u0, u1, ..., u_(N-1)])
          X: horzcat([x1, x2, ..., x_N])
          Y: horzcat([y0, y1, ..., y_(N-1)])
  
      and
          x1, y0 <- f(x0, u0)
          x2, y1 <- f(x1, u1)
          ...
          x_N, y_(N-1) <- f(x_(N-1), u_(N-1))
  



";

%feature("docstring")  casadi::Function::derivative(int nfwd, int nadj) "

Get a function that calculates nfwd forward derivatives and nadj adjoint
derivatives Legacy function: Use derForward and derReverse instead.

Returns a function with (1+nfwd)*n_in+nadj*n_out inputs and (1+nfwd)*n_out +
nadj*n_in outputs. The first n_in inputs correspond to nondifferentiated
inputs. The next nfwd*n_in inputs correspond to forward seeds, one direction
at a time and the last nadj*n_out inputs correspond to adjoint seeds, one
direction at a time. The first n_out outputs correspond to nondifferentiated
outputs. The next nfwd*n_out outputs correspond to forward sensitivities,
one direction at a time and the last nadj*n_in outputs corresponds to
adjoint sensitivities, one direction at a time.

(n_in = n_in(), n_out = n_out())

";

%feature("docstring")  casadi::Function::rootfinder(const std::string &name,
const std::string &solver, const Dict &opts=Dict()) const  "

Create a solver for rootfinding problems Takes a function where one of the
inputs is unknown and one of the outputs is a residual function that is
always zero, defines a new function where the the unknown input has been
replaced by a guess for the unknown and the residual output has been
replaced by the calculated value for the input.

For a function [y0, y1, ...,yi, .., yn] = F(x0, x1, ..., xj, ..., xm), where
xj is unknown and yi=0, defines a new function [y0, y1, ...,xj, .., yn] =
G(x0, x1, ..., xj_guess, ..., xm),

xj and yi must have the same dimension and d(yi)/d(xj) must be invertable.

By default, the first input is unknown and the first output is the residual.

Joel Andersson

";

%feature("docstring")  casadi::Function::numel_in() const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(int ind) const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::numel_in(const std::string &iname)
const  "

Get of number of input elements For a particular input or for all for all of
the inputs.

";

%feature("docstring")  casadi::Function::n_out() const  "

Get the number of function outputs.

";

%feature("docstring")  casadi::Function::setDerForward(const Function &fcn,
int nfwd) "

Set a function that calculates nfwd forward derivatives NOTE: Does not take
ownership, only weak references to the derivatives are kept internally.

";

%feature("docstring")  casadi::Function::spInit(bool fwd) " [INTERNAL]
Reset the sparsity propagation.

(for usage, see the example propagating_sparsity.cpp)

";

%feature("docstring")  casadi::Function::qp_solver_debug(const std::string
&filename) const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::Function::qp_solver_debug(std::ostream &file)
const  "

Generate native code in the interfaced language for debugging

";

%feature("docstring")  casadi::OptionsFunctionality::getOptionNames() const
"

Get a list of all option names.

";

%feature("docstring")  casadi::Function::index_out(const std::string &name)
const  "

Find the index for a string describing a particular entry of an output
scheme.

example: schemeEntry(\"x_opt\") -> returns NLP_SOLVER_X if FunctionInternal
adheres to SCHEME_NLPINput

";

%feature("docstring")  casadi::Function::call(const std::vector< DMatrix >
&arg, std::vector< DMatrix > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< SX > &arg,
std::vector< SX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::call(const std::vector< MX > &arg,
std::vector< MX > &output_res, bool always_inline=false, bool
never_inline=false) "

Evaluate the function symbolically or numerically.

";

%feature("docstring")  casadi::Function::free_mx() const  "

Get all the free variables of the function.

";

%feature("docstring")  casadi::Function::size_out(int ind) const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::size_out(const std::string &oname)
const  "

Get output dimension.

";

%feature("docstring")  casadi::Function::addMonitor(const std::string &mon)
"

Add modules to be monitored.

";

%feature("docstring")  casadi::Function::description_out(int ind) const  "

Get output scheme description by index.

";

%feature("docstring")  casadi::Function::type_name() const  "

Get type name.

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
int oind=0) "

Set an output by index.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oind:  index within the range [0..n_out()-1]

";

%feature("docstring")  casadi::IOInterface< Function  >::setOutput(T val,
const std::string &oname) "

Set an output by name.

Parameters:
-----------

val:  can be double, const std::vector<double>&, const Matrix<double>&,
double *

oname:  output name. Only allowed when an output scheme is set.

";

%feature("docstring")  casadi::Function::mapsum(const std::vector< MX >
&arg, const std::string &parallelization="serial") "

Evaluate symbolically in parallel and sum (matrix graph)

Parameters:
-----------

parallelization:  Type of parallelization used: expand|serial|openmp

";

%feature("docstring")  casadi::Function::nnz_out() const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(int ind) const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::nnz_out(const std::string &oname)
const  "

Get of number of output nonzeros For a particular output or for all for all
of the outputs.

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, int oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
int iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::setJacSparsity(const Sparsity &sp,
const std::string &iind, const std::string &oind, bool compact=false) "

Generate the sparsity of a Jacobian block

";

%feature("docstring")  casadi::Function::hessian(int iind=0, int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
int oind=0) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(int iind, const std::string
&oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::hessian(const std::string &iind,
const std::string &oind) "

Generate a Hessian function of output oind with respect to input iind.

Parameters:
-----------

iind:  The index of the input

oind:  The index of the output

The generated Hessian has two more outputs than the calling function
corresponding to the Hessian and the gradients.

";

%feature("docstring")  casadi::Function::mx_in(int ind) const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in(const std::string &iname)
const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::Function::mx_in() const  "

Get symbolic primitives equivalent to the input expressions.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";


// File: classcasadi_1_1Slice.xml
%feature("docstring")  casadi::Slice::isscalar(int len) const  "

Is the slice a scalar.

";

%feature("docstring")  casadi::Slice::getAll(int len, bool ind1=false) const
"

Get a vector of indices.

";

%feature("docstring")  casadi::Slice::getAll(const Slice &outer, int len)
const  "

Get a vector of indices (nested slice)

";

%feature("docstring")  casadi::Slice::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring") casadi::Slice "

Class representing a Slice.

Note that Python or Octave do not need to use this class. They can just use
slicing utility from the host language ( M[0:6] in Python, M(1:7) )

C++ includes: slice.hpp ";

%feature("docstring")  casadi::Slice::toScalar(int len) const  "

Get scalar (if isscalar)

";

%feature("docstring") casadi::Slice::Slice() "

Default constructor - all elements.

";

%feature("docstring") casadi::Slice::Slice(int i, bool ind1=false) "

A single element (explicit to avoid ambiguity with IMatrix overload.

";

%feature("docstring") casadi::Slice::Slice(int start, int stop, int step=1)
"

A slice.

";

%feature("docstring") casadi::Slice::Slice(const std::vector< int > &v, bool
ind1=false) "

Construct from an index vector (requires isSlice(v) to be true)

";

%feature("docstring") casadi::Slice::Slice(const std::vector< int > &v,
Slice &outer) "

Construct nested slices from an index vector (requires isSlice2(v) to be
true)

";

%feature("docstring")  casadi::PrintableObject< Slice  >::getDescription()
const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Slice::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::PrintableObject< Slice
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";


// File: classsnoptProblem.xml
%feature("docstring")  snoptProblem::setParameter(const char *stroptin) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setLog(isnLog snLog, isnLog2 snLog2,
isqLog sqLog) " [INTERNAL] ";

%feature("docstring")  snoptProblem::getIntParameter(const char *stropt, int
&opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setSpecsFile(const char *specname) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setIntParameter(const char *stropt, int
opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::getRealParameter(const char *stropt,
double &opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setPrintFile(const char *prtname) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::getParameter(const char *stroptin, char
*stroptout) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserR(double *ru, int lenru) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setSTOP(isnSTOP snSTOP) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setRealParameter(const char *stropt,
double opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserI(int *iu, int leniu) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setProbName(const char *Prob) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::solve(int starttype) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserspace(int *iu, int leniu, double
*ru, int lenru) " [INTERNAL] ";

%feature("docstring") snoptProblem "[INTERNAL] C++ includes:
snoptProblem.hpp ";


// File: classsnoptProblemA.xml
%feature("docstring")  snoptProblem::getIntParameter(const char *stropt, int
&opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::computeJac() "[INTERNAL] ";

%feature("docstring") snoptProblemA::snoptProblemA() "[INTERNAL] ";

%feature("docstring") snoptProblemA::snoptProblemA(const char *name) "
[INTERNAL] ";

%feature("docstring") snoptProblemA::snoptProblemA(const char *name, const
char *prtfile) " [INTERNAL] ";

%feature("docstring")  snoptProblem::getRealParameter(const char *stropt,
double &opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setSpecsFile(const char *specname) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setRealParameter(const char *stropt,
double opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::setWorkspace() "[INTERNAL] ";

%feature("docstring")  snoptProblemA::setNeG(int neG) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::setNeA(int neA) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setSTOP(isnSTOP snSTOP) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserspace(int *iu, int leniu, double
*ru, int lenru) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setIntParameter(const char *stropt, int
opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::setG(int lenG, int *iGfun, int *jGvar)
" [INTERNAL] ";

%feature("docstring")  snoptProblemA::setF(double *F, double *Flow, double
*Fupp, double *Fmul, int *Fstate) " [INTERNAL] ";

%feature("docstring") snoptProblemA::~snoptProblemA "[INTERNAL] ";

%feature("docstring")  snoptProblem::setPrintFile(const char *prtname) "
[INTERNAL] ";

%feature("docstring")  snoptProblemA::setA(int lenA, int *iAfun, int *jAvar,
double *A) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::solve(int starttype) " [INTERNAL] ";

%feature("docstring") snoptProblemA "[INTERNAL] C++ includes:
snoptProblem.hpp ";

%feature("docstring")  snoptProblemA::setX(double *x, double *xlow, double
*xupp, double *xmul, int *xstate) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::setUserFun(snFunA usrfun) " [INTERNAL]
";

%feature("docstring")  snoptProblem::getParameter(const char *stroptin, char
*stroptout) " [INTERNAL] ";

%feature("docstring")  snoptProblemA::setProblemSize(int n, int neF) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setParameter(const char *stroptin) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setLog(isnLog snLog, isnLog2 snLog2,
isqLog sqLog) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserI(int *iu, int leniu) "
[INTERNAL] ";

%feature("docstring")  snoptProblemA::setObjective(int ObjRow, double
ObjAdd) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserR(double *ru, int lenru) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setProbName(const char *Prob) "
[INTERNAL] ";


// File: classsnoptProblemB.xml
%feature("docstring")  snoptProblem::setPrintFile(const char *prtname) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::getRealParameter(const char *stropt,
double &opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemB::setFuncon(snConB funcon) " [INTERNAL]
";

%feature("docstring")  snoptProblem::setParameter(const char *stroptin) "
[INTERNAL] ";

%feature("docstring")  snoptProblemC::setObjective(int iObj, double ObjAdd)
" [INTERNAL] ";

%feature("docstring")  snoptProblemC::setWorkspace() "[INTERNAL] ";

%feature("docstring")  snoptProblem::setSTOP(isnSTOP snSTOP) " [INTERNAL] ";

%feature("docstring")  snoptProblem::getIntParameter(const char *stropt, int
&opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemB::setFunobj(snObjB funobj) " [INTERNAL]
";

%feature("docstring")  snoptProblem::setUserspace(int *iu, int leniu, double
*ru, int lenru) " [INTERNAL] ";

%feature("docstring") snoptProblemB::snoptProblemB() "[INTERNAL] ";

%feature("docstring") snoptProblemB::snoptProblemB(const char *name) "
[INTERNAL] ";

%feature("docstring") snoptProblemB::snoptProblemB(const char *name, const
char *prtfile) " [INTERNAL] ";

%feature("docstring")  snoptProblem::getParameter(const char *stroptin, char
*stroptout) " [INTERNAL] ";

%feature("docstring")  snoptProblemC::setUserFun(snFunC usrfun) " [INTERNAL]
";

%feature("docstring")  snoptProblem::setIntParameter(const char *stropt, int
opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setLog(isnLog snLog, isnLog2 snLog2,
isqLog sqLog) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserI(int *iu, int leniu) "
[INTERNAL] ";

%feature("docstring")  snoptProblemC::setJ(int ne, double *Jval, int *indJ,
int *locJ) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setProbName(const char *Prob) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setUserR(double *ru, int lenru) "
[INTERNAL] ";

%feature("docstring") snoptProblemB "[INTERNAL] C++ includes:
snoptProblem.hpp ";

%feature("docstring")  snoptProblemC::setProblemSize(int m, int n, int
nnCon, int nnJac, int nnObj) " [INTERNAL] ";

%feature("docstring")  snoptProblemC::setX(double *bl, double *bu, double
*x, double *pi, double *rc, int *hs) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setSpecsFile(const char *specname) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setRealParameter(const char *stropt,
double opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemB::solve(int starttype) " [INTERNAL] ";

%feature("docstring") snoptProblemB::~snoptProblemB "[INTERNAL] ";


// File: classsnoptProblemC.xml
%feature("docstring")  snoptProblem::setPrintFile(const char *prtname) "
[INTERNAL] ";

%feature("docstring") snoptProblemC "[INTERNAL] C++ includes:
snoptProblem.hpp ";

%feature("docstring")  snoptProblem::getRealParameter(const char *stropt,
double &opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setRealParameter(const char *stropt,
double opt) " [INTERNAL] ";

%feature("docstring")  snoptProblemC::solve(int starttype) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setParameter(const char *stroptin) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setUserR(double *ru, int lenru) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::getIntParameter(const char *stropt, int
&opt) " [INTERNAL] ";

%feature("docstring")  snoptProblem::getParameter(const char *stroptin, char
*stroptout) " [INTERNAL] ";

%feature("docstring") snoptProblemC::snoptProblemC() "[INTERNAL] ";

%feature("docstring") snoptProblemC::snoptProblemC(const char *name) "
[INTERNAL] ";

%feature("docstring") snoptProblemC::snoptProblemC(const char *name, const
char *prtfile) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserspace(int *iu, int leniu, double
*ru, int lenru) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setUserI(int *iu, int leniu) "
[INTERNAL] ";

%feature("docstring")  snoptProblemC::setWorkspace() "[INTERNAL] ";

%feature("docstring")  snoptProblemC::setJ(int ne, double *Jval, int *indJ,
int *locJ) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setProbName(const char *Prob) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setSpecsFile(const char *specname) "
[INTERNAL] ";

%feature("docstring")  snoptProblem::setSTOP(isnSTOP snSTOP) " [INTERNAL] ";

%feature("docstring")  snoptProblemC::setX(double *bl, double *bu, double
*x, double *pi, double *rc, int *hs) " [INTERNAL] ";

%feature("docstring")  snoptProblemC::setUserFun(snFunC usrfun) " [INTERNAL]
";

%feature("docstring") snoptProblemC::~snoptProblemC "[INTERNAL] ";

%feature("docstring")  snoptProblemC::setObjective(int iObj, double ObjAdd)
" [INTERNAL] ";

%feature("docstring")  snoptProblem::setLog(isnLog snLog, isnLog2 snLog2,
isqLog sqLog) " [INTERNAL] ";

%feature("docstring")  snoptProblemC::setProblemSize(int m, int n, int
nnCon, int nnJac, int nnObj) " [INTERNAL] ";

%feature("docstring")  snoptProblem::setIntParameter(const char *stropt, int
opt) " [INTERNAL] ";


// File: classcasadi_1_1Solve.xml


// File: classcasadi_1_1SparseStorage.xml
%feature("docstring")  casadi::SparseStorage< DataType >::hasNZ(int rr, int
cc) const  " [INTERNAL]  Returns true if the matrix has a non-zero at
location rr, cc.

";

%feature("docstring")  casadi::SparseStorage< DataType >::elem(int rr, int
cc) " [INTERNAL]  get a reference to an element

";

%feature("docstring")  casadi::SparseStorage< DataType >::clear() "
[INTERNAL] ";

%feature("docstring")  casadi::SparseStorage< DataType >::reserve(int nnz) "
[INTERNAL] ";

%feature("docstring")  casadi::SparseStorage< DataType >::reserve(int nnz,
int ncol) " [INTERNAL] ";

%feature("docstring")  casadi::SparseStorage< DataType >::toScalar() const
" [INTERNAL]  Convert to scalar type.

";

%feature("docstring")  casadi::SparseStorage< DataType >::resize(int nrow,
int ncol) " [INTERNAL] ";

%feature("docstring")  casadi::SparseStorage< DataType >::sparsityRef() "
[INTERNAL]  Access the sparsity, make a copy if there are multiple
references to it.

";

%feature("docstring") casadi::SparseStorage "[INTERNAL] C++ includes:
sparse_storage.hpp ";

%feature("docstring")  casadi::SparseStorage< DataType >::data() "
[INTERNAL]  Access the non-zero elements.

";

%feature("docstring")  casadi::SparseStorage< DataType >::data() const  "
[INTERNAL]  Const access the non-zero elements.

";

%feature("docstring")  casadi::SparseStorage< DataType >::sparsity() const
" [INTERNAL]  Const access the sparsity - reference to data member.

";

%feature("docstring") casadi::SparseStorage< DataType >::SparseStorage(const
Sparsity &sparsity, const DataType &val=DataType(0)) " [INTERNAL]  Sparse
matrix with a given sparsity

";

%feature("docstring") casadi::SparseStorage< DataType >::SparseStorage() "
[INTERNAL]  constructors

empty 0-by-0 matrix constructor

";

%feature("docstring") casadi::SparseStorage< DataType >::SparseStorage(const
SparseStorage< DataType > &m) " [INTERNAL]  Copy constructor.

";


// File: classcasadi_1_1Sparsity.xml


/*  Check if two sparsity patterns are identical  */

/*  Size and element counting  */ %feature("docstring")
casadi::Sparsity::enlargeRows(int nrow, const std::vector< int > &rr, bool
ind1=false) "

Enlarge the matrix along the first dimension (i.e. insert rows)

";

%feature("docstring") casadi::Sparsity "

General sparsity class.

The storage format is a compressed column storage (CCS) format.  In this
format, the structural non-zero elements are stored in column-major order,
starting from the upper left corner of the matrix and ending in the lower
right corner.

In addition to the dimension ( size1(), size2()), (i.e. the number of rows
and the number of columns respectively), there are also two vectors of
integers:

\"colind\" [length size2()+1], which contains the index to the first non-
zero element on or after the corresponding column. All the non-zero elements
of a particular i are thus the elements with index el that fulfills:
colind[i] <= el < colind[i+1].

\"row\" [same length as the number of non-zero elements, nnz()] The rows for
each of the structural non-zeros.

Note that with this format, it is cheap to loop over all the non-zero
elements of a particular column, at constant time per element, but expensive
to jump to access a location (i, j).

If the matrix is dense, i.e. length(row) == size1()*size2(), the format
reduces to standard dense column major format, which allows access to an
arbitrary element in constant time.

Since the object is reference counted (it inherits from SharedObject),
several matrices are allowed to share the same sparsity pattern.

The implementations of some methods of this class has been taken from the
CSparse package and modified to use C++ standard library and CasADi data
structures.

See:   Matrix

Joel Andersson

C++ includes: sparsity.hpp ";

%feature("docstring")  casadi::Sparsity::largest_first() const  "

Order the columns by decreasing degree.

";

%feature("docstring")  casadi::Sparsity::dim() const  "

Get the dimension as a string.

";

%feature("docstring")  casadi::Sparsity::issymmetric() const  "

Is symmetric?

";

%feature("docstring")  casadi::Sparsity::addNZ(int rr, int cc) "

Get the index of a non-zero element Add the element if it does not exist and
copy object if it's not unique.

";

%feature("docstring")  casadi::Sparsity::rowsSequential(bool strictly=true)
const  "

Do the rows appear sequentially on each column.

Parameters:
-----------

strictly:  if true, then do not allow multiple entries

";

%feature("docstring")  casadi::Sparsity::get_diag(std::vector< int >
&output_mapping) const  "

Get the diagonal of the matrix/create a diagonal matrix (mapping will
contain the nonzero mapping) When the input is square, the diagonal elements
are returned. If the input is vector-like, a diagonal matrix is constructed
with it.

";

%feature("docstring")  casadi::Sparsity::isdiag() const  "

Is diagonal?

";

%feature("docstring")  casadi::Sparsity::enlargeColumns(int ncol, const
std::vector< int > &cc, bool ind1=false) "

Enlarge the matrix along the second dimension (i.e. insert columns)

";

%feature("docstring")  casadi::Sparsity::hash() const  " ";

%feature("docstring")  casadi::Sparsity::nnz_upper() const  "

Number of non-zeros in the upper triangular half, i.e. the number of
elements (i, j) with j>=i.

";

%feature("docstring")  casadi::Sparsity::getLowerNZ() const  "

Get nonzeros in lower triangular part.

";

%feature("docstring")  casadi::Sparsity::find(bool ind1=false) const  "

Get the location of all non-zero elements as they would appear in a Dense
matrix A : DenseMatrix 4 x 3 B : SparseMatrix 4 x 3 , 5 structural non-
zeros.

k = A.find() A[k] will contain the elements of A that are non-zero in B

";

%feature("docstring")  casadi::Sparsity::getUpperNZ() const  "

Get nonzeros in upper triangular part.

";

%feature("docstring")  casadi::Sparsity::spy_matlab(const std::string
&mfile) const  "

Generate a script for Matlab or Octave which visualizes the sparsity using
the spy command.

";

%feature("docstring")  casadi::Sparsity::isdense() const  "

Is dense?

";

%feature("docstring")  casadi::Sparsity::isscalar(bool
scalar_and_dense=false) const  "

Is scalar?

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";

%feature("docstring")  casadi::Sparsity::bw_lower() const  "

Lower half-bandwidth.

";

%feature("docstring")  casadi::Sparsity::T() const  "

Transpose the matrix.

";

%feature("docstring")  casadi::Sparsity::nnz_diag() const  "

Number of non-zeros on the diagonal, i.e. the number of elements (i, j) with
j==i.

";

%feature("docstring") casadi::Sparsity::Sparsity(int dummy=0) "

Default constructor.

";

%feature("docstring") casadi::Sparsity::Sparsity(int nrow, int ncol) "

Pattern with all structural zeros.

";

%feature("docstring") casadi::Sparsity::Sparsity(int nrow, int ncol, const
std::vector< int > &colind, const std::vector< int > &row) "

Construct from sparsity pattern vectors given in compressed column storage
format.

";

%feature("docstring")  casadi::Sparsity::isTranspose(const Sparsity &y)
const  "

Check if the sparsity is the transpose of another.

";

%feature("docstring")  casadi::Sparsity::colind(int cc) const  "

Get a reference to the colindex of column cc (see class description)

";

%feature("docstring")  casadi::Sparsity::elimination_tree(bool ata=false)
const  "

Calculate the elimination tree See Direct Methods for Sparse Linear Systems
by Davis (2006). If the parameter ata is false, the algorithm is equivalent
to Matlab's etree(A), except that the indices are zero- based. If ata is
true, the algorithm is equivalent to Matlab's etree(A, 'row').

";

%feature("docstring")  casadi::Sparsity::getCCS(std::vector< int >
&output_colind, std::vector< int > &output_row) const  "

Get the sparsity in compressed column storage (CCS) format.

";

%feature("docstring")  casadi::Sparsity::numel() const  "

The total number of elements, including structural zeros, i.e.
size2()*size1()

See:   nnz()

";

%feature("docstring")  casadi::Sparsity::getCRS(std::vector< int >
&output_rowind, std::vector< int > &output_col) const  "

Get the sparsity in compressed row storage (CRS) format.

";

%feature("docstring")  casadi::Sparsity::isempty(bool both=false) const  "

Check if the sparsity is empty.

A sparsity is considered empty if one of the dimensions is zero (or
optionally both dimensions)

";

%feature("docstring")  casadi::Sparsity::unite(const Sparsity &y) const  "

Union of two sparsity patterns.

";

%feature("docstring")  casadi::Sparsity::nnz_lower() const  "

Number of non-zeros in the lower triangular half, i.e. the number of
elements (i, j) with j<=i.

";

%feature("docstring")  casadi::Sparsity::getTriplet(std::vector< int >
&output_row, std::vector< int > &output_col) const  "

Get the sparsity in sparse triplet format.

";

%feature("docstring")  casadi::Sparsity::appendColumns(const Sparsity &sp) "

Append another sparsity patten horizontally.

";

%feature("docstring")  casadi::Sparsity::issingular() const  "

Check whether the sparsity-pattern indicates structural singularity.

";

%feature("docstring")  casadi::Sparsity::isReshape(const Sparsity &y) const
"

Check if the sparsity is a reshape of another.

";

%feature("docstring")  casadi::Sparsity::removeDuplicates(std::vector< int >
&mapping) "

Remove duplicate entries.

The same indices will be removed from the mapping vector, which must have
the same length as the number of nonzeros

";

%feature("docstring")  casadi::Sparsity::makeDense(std::vector< int >
&mapping) const  "

Make a patten dense.

";

%feature("docstring")  casadi::Sparsity::pattern_inverse() const  "

Take the inverse of a sparsity pattern; flip zeros and non-zeros.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::Sparsity::iscolumn() const  "

Check if the pattern is a column vector (i.e. size2()==1)

";

%feature("docstring")  casadi::Sparsity::dense(int nrow, int ncol=1) "

Create a dense rectangular sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::dense(const std::pair< int, int >
&rc) "

Create a dense rectangular sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::diag(int nrow) "

Create diagonal sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::diag(int nrow, int ncol) "

Create diagonal sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::diag(const std::pair< int, int >
&rc) "

Create diagonal sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::sub(const std::vector< int > &rr,
const std::vector< int > &cc, std::vector< int > &output_mapping, bool
ind1=false) const  "

Get a submatrix.

Returns the sparsity of the submatrix, with a mapping such that submatrix[k]
= originalmatrix[mapping[k]]

";

%feature("docstring")  casadi::Sparsity::sub(const std::vector< int > &rr,
const Sparsity &sp, std::vector< int > &output_mapping, bool ind1=false)
const  "

Get a set of elements.

Returns the sparsity of the corresponding elements, with a mapping such that
submatrix[k] = originalmatrix[mapping[k]]

";

%feature("docstring")  casadi::Sparsity::unit(int n, int el) "

Create the sparsity pattern for a unit vector of length n and a nonzero on
position el.

";

%feature("docstring")  casadi::Sparsity::append(const Sparsity &sp) "

Append another sparsity patten vertically (NOTE: only efficient if vector)

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring")  casadi::Sparsity::depth_first_search(int j, int top,
std::vector< int > &xi, std::vector< int > &pstack, const std::vector< int >
&pinv, std::vector< bool > &marked) const  "

Depth-first search on the adjacency graph of the sparsity See Direct Methods
for Sparse Linear Systems by Davis (2006).

";

%feature("docstring")  casadi::Sparsity::combine(const Sparsity &y, bool
f0x_is_zero, bool fx0_is_zero) const  "

Combine two sparsity patterns Returns the new sparsity pattern as well as a
mapping with the same length as the number of non-zero elements The mapping
matrix contains the arguments for each nonzero, the first bit indicates if
the first argument is nonzero, the second bit indicates if the second
argument is nonzero (note that none of, one of or both of the arguments can
be nonzero)

";

%feature("docstring")  casadi::Sparsity::nnz() const  "

Get the number of (structural) non-zeros.

See:   numel()

";

%feature("docstring")  casadi::Sparsity::intersect(const Sparsity &y) const
"

Intersection of two sparsity patterns Returns the new sparsity pattern as
well as a mapping with the same length as the number of non-zero elements
The value is 1 if the non-zero comes from the first (i.e. this) object, 2 if
it is from the second and 3 (i.e. 1 | 2) if from both.

";

%feature("docstring")  casadi::Sparsity::row(int el) const  "

Get the row of a non-zero element.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::Sparsity::get_colind() const  "

Get the column index for each column Together with the row-vector, one
obtains the sparsity pattern in the column compressed format.

";

%feature("docstring")  casadi::Sparsity::get_row() const  "

Get the row for each non-zero entry Together with the column-vector, this
vector gives the sparsity of the matrix in sparse triplet format, and
together with the colind vector, one obtains the sparsity in column
compressed format.

";

%feature("docstring")  casadi::Sparsity::issquare() const  "

Is square?

";

%feature("docstring")  casadi::Sparsity::transpose(std::vector< int >
&mapping, bool invert_mapping=false) const  "

Transpose the matrix and get the reordering of the non-zero entries.

Parameters:
-----------

mapping:  the non-zeros of the original matrix for each non-zero of the new
matrix

";

%feature("docstring")  casadi::Sparsity::size() const  "

Get the shape.

";

%feature("docstring")  casadi::Sparsity::star_coloring(int ordering=1, int
cutoff=std::numeric_limits< int >::max()) const  "

Perform a star coloring of a symmetric matrix: A greedy distance-2 coloring
algorithm Algorithm 4.1 in What Color Is Your Jacobian? Graph Coloring for
Computing Derivatives A. H. GEBREMEDHIN, F. MANNE, A. POTHEN SIAM Rev.,
47(4), 629705 (2006)

Ordering options: None (0), largest first (1)

";

%feature("docstring")  casadi::Sparsity::hasNZ(int rr, int cc) const  "

Returns true if the pattern has a non-zero at location rr, cc.

";

%feature("docstring")  casadi::Sparsity::print_compact(std::ostream
&stream=casadi::userOut()) const  "

Print a compact description of the sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::sanity_check(bool complete=false)
const  "

Check if the dimensions and colind, row vectors are compatible.

Parameters:
-----------

complete:  set to true to also check elementwise throws an error as possible
result

";

%feature("docstring")  casadi::Sparsity::compressed(const std::vector< int >
&v) "

Create from a single vector containing the pattern in compressed column
storage format: The format: The first two entries are the number of rows
(nrow) and columns (ncol) The next ncol+1 entries are the column offsets
(colind). Note that the last element, colind[ncol], gives the number of
nonzeros The last colind[ncol] entries are the row indices

";

%feature("docstring")  casadi::Sparsity::uni_coloring(const Sparsity
&AT=Sparsity(), int cutoff=std::numeric_limits< int >::max()) const  "

Perform a unidirectional coloring: A greedy distance-2 coloring algorithm
(Algorithm 3.1 in A. H. GEBREMEDHIN, F. MANNE, A. POTHEN)

";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::Sparsity::enlarge(int nrow, int ncol, const
std::vector< int > &rr, const std::vector< int > &cc, bool ind1=false) "

Enlarge matrix Make the matrix larger by inserting empty rows and columns,
keeping the existing non-zeros.

For the matrices A to B A(m, n) length(jj)=m , length(ii)=n B(nrow, ncol)

A=enlarge(m, n, ii, jj) makes sure that

B[jj, ii] == A

";

%feature("docstring")  casadi::Sparsity::compress() const  "

Compress a sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::istriu() const  "

Is upper triangular?

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::Sparsity::isvector() const  "

Check if the pattern is a row or column vector.

";

%feature("docstring")  casadi::Sparsity::getNZ(int rr, int cc) const  "

Get the index of an existing non-zero element return -1 if the element does
not exist.

";

%feature("docstring")  casadi::Sparsity::getNZ(const std::vector< int > &rr,
const std::vector< int > &cc) const  "

Get a set of non-zero element return -1 if the element does not exist.

";

%feature("docstring")  casadi::Sparsity::getNZ(std::vector< int > &INOUT)
const  "

Get the nonzero index for a set of elements The index vector is used both
for input and outputs and must be sorted by increasing nonzero index, i.e.
column-wise. Elements not found in the sparsity pattern are set to -1.

";

%feature("docstring")  casadi::Sparsity::size2() const  "

Get the number of columns.

";

%feature("docstring")  casadi::Sparsity::get_col() const  "

Get the column for each non-zero entry Together with the row-vector, this
vector gives the sparsity of the matrix in sparse triplet format, i.e. the
column and row for each non-zero elements.

";

%feature("docstring")  casadi::Sparsity::size1() const  "

Get the number of rows.

";

%feature("docstring")  casadi::Sparsity::star_coloring2(int ordering=1, int
cutoff=std::numeric_limits< int >::max()) const  "

Perform a star coloring of a symmetric matrix: A new greedy distance-2
coloring algorithm Algorithm 4.1 in NEW ACYCLIC AND STAR COLORING ALGORITHMS
WITH APPLICATION TO COMPUTING HESSIANS A. H. GEBREMEDHIN, A. TARAFDAR, F.
MANNE, A. POTHEN SIAM J. SCI. COMPUT. Vol. 29, No. 3, pp. 10421072 (2007)

Ordering options: None (0), largest first (1)

";

%feature("docstring")  casadi::Sparsity::dulmage_mendelsohn(std::vector< int
> &output_rowperm, std::vector< int > &output_colperm, std::vector< int >
&output_rowblock, std::vector< int > &output_colblock, std::vector< int >
&output_coarse_rowblock, std::vector< int > &output_coarse_colblock, int
seed=0) const  "

Compute the Dulmage-Mendelsohn decomposition See Direct Methods for Sparse
Linear Systems by Davis (2006).

Dulmage-Mendelsohn will try to bring your matrix into lower block-
triangular (LBT) form. It will not care about the distance of off- diagonal
elements to the diagonal: there is no guarantee you will get a block-
diagonal matrix if you supply a randomly permuted block- diagonal matrix.

If your matrix is symmetrical, this method is of limited use; permutation
can make it non-symmetric.

See:   strongly_connected_components

";

%feature("docstring")  casadi::Sparsity::istril() const  "

Is lower triangular?

";

%feature("docstring")  casadi::Sparsity::spy(std::ostream
&stream=casadi::userOut()) const  "

Print a textual representation of sparsity.

";

%feature("docstring") casadi::Sparsity::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring")
casadi::Sparsity::strongly_connected_components(std::vector< int >
&output_index, std::vector< int > &output_offset) const  "

Find the strongly connected components of the bigraph defined by the
sparsity pattern of a square matrix.

See Direct Methods for Sparse Linear Systems by Davis (2006). Returns:
Number of components

Offset for each components (length: 1 + number of components)

Indices for each components, component i has indices index[offset[i]], ...,
index[offset[i+1]]

In the case that the matrix is symmetric, the result has a particular
interpretation: Given a symmetric matrix A and n =
A.strongly_connected_components(p, r)

=> A[p, p] will appear block-diagonal with n blocks and with the indices of
the block boundaries to be found in r.

";

%feature("docstring")  casadi::Sparsity::pmult(const std::vector< int > &p,
bool permute_rows=true, bool permute_columns=true, bool
invert_permutation=false) const  "

Permute rows and/or columns Multiply the sparsity with a permutation matrix
from the left and/or from the right P * A * trans(P), A * trans(P) or A *
trans(P) with P defined by an index vector containing the row for each col.
As an alternative, P can be transposed (inverted).

";

%feature("docstring")  casadi::Sparsity::isrow() const  "

Check if the pattern is a row vector (i.e. size1()==1)

";

%feature("docstring")  casadi::Sparsity::is_equal(const Sparsity &y) const
" ";

%feature("docstring")  casadi::Sparsity::is_equal(int nrow, int ncol, const
std::vector< int > &colind, const std::vector< int > &row) const  " ";

%feature("docstring")  casadi::Sparsity::erase(const std::vector< int > &rr,
const std::vector< int > &cc, bool ind1=false) "

Erase rows and/or columns of a matrix.

";

%feature("docstring")  casadi::Sparsity::erase(const std::vector< int > &rr,
bool ind1=false) "

Erase elements of a matrix.

";

%feature("docstring")  casadi::Sparsity::bw_upper() const  "

Upper half-bandwidth.

";

%feature("docstring")  casadi::Sparsity::scalar(bool dense_scalar=true) "

Create a scalar sparsity pattern.

";

%feature("docstring")  casadi::Sparsity::resize(int nrow, int ncol) "

Resize.

";


// File: classcasadi_1_1SparsityInterface.xml
%feature("docstring")  diagsplit(const MatType &x, const std::vector< int >
&output_offset1, const std::vector< int > &output_offset2) "

split diagonally, retaining square matrices

Parameters:
-----------

output_offset1:  List of all start locations (row) for each group the last
matrix will run to the end.

output_offset2:  List of all start locations (row) for each group the last
matrix will run to the end.

diagcat(diagsplit(x, ...)) = x

";

%feature("docstring")  diagsplit(const MatType &x, const std::vector< int >
&output_offset) "

split diagonally, retaining square matrices

Parameters:
-----------

output_offset:  List of all start locations for each group the last matrix
will run to the end.

diagcat(diagsplit(x, ...)) = x

";

%feature("docstring")  diagsplit(const MatType &x, int incr=1) "

split diagonally, retaining groups of square matrices

Parameters:
-----------

incr:  Size of each matrix

diagsplit(diagsplit(x, ...)) = x

";

%feature("docstring")  diagsplit(const MatType &x, int incr1, int incr2) "

split diagonally, retaining fixed-sized matrices

Parameters:
-----------

incr1:  Row dimension of each matrix

incr2:  Column dimension of each matrix

diagsplit(diagsplit(x, ...)) = x

";

%feature("docstring")  triu(const MatType &a, bool includeDiagonal=true) "

Get the upper triangular part of a matrix.

";

%feature("docstring")  mac(const MatType &X, const MatType &Y, const MatType
&Z) "

Multiply-accumulate operation Matrix product of two matrices (X and Y),
adding the result to a third matrix Z. The result has the same sparsity
pattern as C meaning that other entries of (X*Y) are ignored. The operation
is equivalent to: Z+mul(X,Y).project(Z.sparsity()).

";

%feature("docstring")  transpose(const MatType &X) "

Transpose.

";

%feature("docstring")  tril(const MatType &a, bool includeDiagonal=true) "

Get the lower triangular part of a matrix.

";

%feature("docstring")  offset(const std::vector< MatType > &v, bool
vert=true) "

Helper function, get offsets corresponding to a vector of matrices.

";

%feature("docstring")  vec(const MatType &a) "

make a vector Reshapes/vectorizes the matrix such that the shape becomes
(expr.numel(), 1). Columns are stacked on top of each other. Same as
reshape(expr, expr.numel(), 1)

a c b d  turns into

a b c d

";

%feature("docstring")  horzcat(const std::vector< MatType > &v) "

Concatenate a list of matrices horizontally Alternative terminology:
horizontal stack, hstack, horizontal append, [a b].

horzcat(horzsplit(x, ...)) = x

";

%feature("docstring")  horzcat(const MatType &x, const MatType &y) "

Concatenate horizontally, two matrices.

";

%feature("docstring")  horzcat(const MatType &x, const MatType &y, const
MatType &z) "

Concatenate horizontally, three matrices.

";

%feature("docstring")  horzcat(const MatType &x, const MatType &y, const
MatType &z, const MatType &w) "

Concatenate horizontally, four matrices.

";

%feature("docstring")  vecNZ(const MatType &a) "

Returns a flattened version of the matrix, preserving only nonzeros.

";

%feature("docstring") casadi::SparsityInterface "

Sparsity interface class.

This is a common base class for GenericMatrix (i.e. MX and Matrix<>) and
Sparsity, introducing a uniform syntax and implementing common functionality
using the curiously recurring template pattern (CRTP) idiom. Joel Andersson

C++ includes: sparsity_interface.hpp ";

%feature("docstring")  horzsplit(const MatType &v, const std::vector< int >
&offset) "

split horizontally, retaining groups of columns

Parameters:
-----------

offset:  List of all start columns for each group the last column group will
run to the end.

horzcat(horzsplit(x, ...)) = x

";

%feature("docstring")  horzsplit(const MatType &v, int incr=1) "

split horizontally, retaining fixed-sized groups of columns

Parameters:
-----------

incr:  Size of each group of columns

horzcat(horzsplit(x, ...)) = x

";

%feature("docstring")  veccat(const std::vector< MatType > &x) "

concatenate vertically while vectorizing all arguments with vec

";

%feature("docstring")  blocksplit(const MatType &x, const std::vector< int >
&vert_offset, const std::vector< int > &horz_offset) "

chop up into blocks

Parameters:
-----------

vert_offset:  Defines the boundaries of the block rows

horz_offset:  Defines the boundaries of the block columns

blockcat(blocksplit(x,..., ...)) = x

";

%feature("docstring")  blocksplit(const MatType &x, int vert_incr=1, int
horz_incr=1) "

chop up into blocks

Parameters:
-----------

vert_incr:  Defines the increment for block boundaries in row dimension

horz_incr:  Defines the increment for block boundaries in column dimension

blockcat(blocksplit(x,..., ...)) = x

";

%feature("docstring")  repmat(const MatType &A, int n, int m=1) "

Repeat matrix A n times vertically and m times horizontally.

";

%feature("docstring")  repmat(const MatType &A, const std::pair< int, int >
&rc) "

Repeat matrix A n times vertically and m times horizontally.

";

%feature("docstring")  vertcat(const std::vector< MatType > &v) "

Concatenate a list of matrices vertically Alternative terminology: vertical
stack, vstack, vertical append, [a;b].

vertcat(vertsplit(x, ...)) = x

";

%feature("docstring")  vertcat(const MatType &x, const MatType &y) "

Concatenate vertically, two matrices.

";

%feature("docstring")  vertcat(const MatType &x, const MatType &y, const
MatType &z) "

Concatenate vertically, three matrices.

";

%feature("docstring")  vertcat(const MatType &x, const MatType &y, const
MatType &z, const MatType &w) "

Concatenate vertically, four matrices.

";

%feature("docstring")  sprank(const MatType &A) "

Obtain the structural rank of a sparsity-pattern.

";

%feature("docstring")  kron(const MatType &a, const MatType &b) "

Kronecker tensor product.

Creates a block matrix in which each element (i, j) is a_ij*b

";

%feature("docstring")  reshape(const MatType &a, int nrow, int ncol) "

Returns a reshaped version of the matrix.

";

%feature("docstring")  reshape(const MatType &a, std::pair< int, int > rc) "

Returns a reshaped version of the matrix, dimensions as a vector.

";

%feature("docstring")  reshape(const MatType &a, const Sparsity &sp) "

Reshape the matrix.

";

%feature("docstring")  norm_0_mul(const MatType &x, const MatType &y) "

0-norm (nonzero count) of a Matrix-matrix product

";

%feature("docstring")  diagcat(const std::vector< MatType > &A) "

Construct a matrix with given block on the diagonal.

";

%feature("docstring")  diagcat(const MatType &x, const MatType &y) "

Concatenate along diagonal, two matrices.

";

%feature("docstring")  diagcat(const MatType &x, const MatType &y, const
MatType &z) "

Concatenate along diagonal, three matrices.

";

%feature("docstring")  diagcat(const MatType &x, const MatType &y, const
MatType &z, const MatType &w) "

Concatenate along diagonal, four matrices.

";

%feature("docstring")  vertsplit(const MatType &v, const std::vector< int >
&offset) "

split vertically, retaining groups of rows

*

Parameters:
-----------

output_offset:  List of all start rows for each group the last row group
will run to the end.

vertcat(vertsplit(x, ...)) = x

";

%feature("docstring")  vertsplit(const MatType &v, int incr=1) "

split vertically, retaining fixed-sized groups of rows

Parameters:
-----------

incr:  Size of each group of rows

vertcat(vertsplit(x, ...)) = x



::

  >>> print vertsplit(SX.sym(\"a\",4))
  [SX(a_0), SX(a_1), SX(a_2), SX(a_3)]
  





::

  >>> print vertsplit(SX.sym(\"a\",4),2)
  [SX([a_0, a_1]), SX([a_2, a_3])]
  



If the number of rows is not a multiple of incr, the last entry returned
will have a size smaller than incr.



::

  >>> print vertsplit(DMatrix([0,1,2,3,4]),2)
  [DMatrix([0, 1]), DMatrix([2, 3]), DMatrix(4)]
  



";

%feature("docstring")  mul(const MatType &X, const MatType &Y) "

Matrix product of two matrices.

";

%feature("docstring")  mul(const std::vector< MatType > &args) "

Matrix product of n matrices.

";

%feature("docstring")  blockcat(const std::vector< std::vector< MatType > >
&v) "

Construct a matrix from a list of list of blocks.

";

%feature("docstring")  blockcat(const MatType &A, const MatType &B, const
MatType &C, const MatType &D) "

Construct a matrix from 4 blocks.

";


// File: classcasadi_1_1Split.xml


// File: classcasadi_1_1Sqpmethod.xml


// File: classcasadi_1_1Logger_1_1Stream.xml
%feature("docstring") casadi::Logger::Stream "C++ includes:
casadi_logger.hpp ";

%feature("docstring") casadi::Logger::Stream< Err, PL >::Stream() " ";


// File: classcasadi_1_1Logger_1_1Streambuf.xml
%feature("docstring") casadi::Logger::Streambuf "C++ includes:
casadi_logger.hpp ";

%feature("docstring") casadi::Logger::Streambuf< Err, PL >::Streambuf() " ";


// File: classcasadi_1_1SubAssign.xml


// File: classcasadi_1_1SubIndex.xml
%feature("docstring") casadi::SubIndex "

SubIndex class for Matrix Same as the above class but for single argument
return for operator() Joel Andersson

C++ includes: submatrix.hpp ";

%feature("docstring") casadi::SubIndex< M, I >::SubIndex(M &mat, const I &i)
"

Constructor.

";


// File: classcasadi_1_1SubMatrix.xml
%feature("docstring") casadi::SubMatrix "

SubMatrix class for Matrix SubMatrix is the return type for operator() of
the Matrix class, it allows access to the value as well as changing the
parent object Joel Andersson

C++ includes: submatrix.hpp ";

%feature("docstring") casadi::SubMatrix< M, I, J >::SubMatrix(M &mat, const
I &i, const J &j) "

Constructor.

";


// File: classcasadi_1_1SubRef.xml


// File: classcasadi_1_1SymbolicMX.xml


// File: classcasadi_1_1SymbolicQr.xml


// File: classcasadi_1_1SymbolicSX.xml


// File: classcasadi_1_1Transpose.xml


// File: classcasadi_1_1UnaryMX.xml


// File: classcasadi_1_1UnarySX.xml


// File: classcasadi_1_1Vertcat.xml


// File: classcasadi_1_1Vertsplit.xml


// File: classcasadi_1_1WeakRef.xml
%feature("docstring")  casadi::SharedObject::isNull() const  " [INTERNAL]
Is a null pointer?

";

%feature("docstring") casadi::WeakRef "[INTERNAL]  Weak reference type A
weak reference to a SharedObject.

Joel Andersson

C++ includes: weak_ref.hpp ";

%feature("docstring")  casadi::WeakRef::shared() "[INTERNAL]  Get a shared
(owning) reference.

";

%feature("docstring") casadi::WeakRef::__hash__ "[INTERNAL]  Returns a
number that is unique for a given Node. If the Object does not point to any
node, \"0\" is returned.

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  " [INTERNAL]
Print a description of the object.

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const " [INTERNAL]  Return a string with a description
(for SWIG)

";

%feature("docstring") casadi::WeakRef::WeakRef(int dummy=0) " [INTERNAL]
Default constructor.

";

%feature("docstring") casadi::WeakRef::WeakRef(SharedObject shared) "
[INTERNAL]  Construct from a shared object (also implicit type conversion)

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const " [INTERNAL]  Return a string with a
representation (for SWIG)

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  " [INTERNAL]
Print a representation of the object.

";

%feature("docstring")  casadi::WeakRef::alive() const  " [INTERNAL]  Check
if alive.

";


// File: classcasadi_1_1Wrapper.xml
%feature("docstring")  casadi::Wrapper< Derived >::checkDimensions() "
[INTERNAL]  Check the dimensions of the internal function after
initialization.

";

%feature("docstring")  casadi::Wrapper< Derived >::evaluate() " [INTERNAL]
Evaluate the internal function and make it external.

";

%feature("docstring") casadi::Wrapper "[INTERNAL]  A helper class for a
Function that wrap another Function.

Joris Gillis

C++ includes: wrapper.hpp ";


// File: classcasadi_1_1XmlFile.xml
%feature("docstring") casadi::XmlFile "

XML parser Can be used for parsing XML files into CasADi data structures.

Joel Andersson

C++ includes: xml_file.hpp ";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getDescription() const "

Return a string with a description (for SWIG)

";

%feature("docstring")  casadi::SharedObject::print(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a description of the object.

";

%feature("docstring")  casadi::SharedObject::printPtr(std::ostream
&stream=casadi::userOut()) const  " [INTERNAL]  Print the pointer to the
internal class

";

%feature("docstring")  casadi::PrintableObject< SharedObject
>::getRepresentation() const "

Return a string with a representation (for SWIG)

";

%feature("docstring") casadi::XmlFile::__hash__ "

Returns a number that is unique for a given Node. If the Object does not
point to any node, \"0\" is returned.

";

%feature("docstring") casadi::XmlFile::XmlFile() "";

%feature("docstring") casadi::XmlFile::XmlFile(const std::string &name) " ";

%feature("docstring") casadi::XmlFile::~XmlFile "";

%feature("docstring")  casadi::SharedObject::isNull() const  "

Is a null pointer?

";

%feature("docstring")  casadi::SharedObject::repr(std::ostream
&stream=casadi::userOut(), bool trailing_newline=true) const  "

Print a representation of the object.

";


// File: classcasadi_1_1ZeroByZero.xml


// File: classcasadi_1_1ZeroSX.xml


// File: namespacecasadi.xml
%feature("docstring")  casadi::matrixName< double >() "
Get typename.

";

%feature("docstring")  casadi::complement(const std::vector< int > &v, int
size) "

Returns the list of all i in [0, size[ not found in supplied list.

The supplied vector may contain duplicates and may be non-monotonous The
supplied vector will be checked for bounds The result vector is guaranteed
to be monotonously increasing

";

%feature("docstring")  casadi::inBounds(const std::vector< T > &v, int
upper) "

Check if for each element of v holds: v_i < upper.

";

%feature("docstring")  casadi::inBounds(const std::vector< T > &v, int
lower, int upper) "

Check if for each element of v holds: lower <= v_i < upper.

";

%feature("docstring")  casadi::getSchemeSize(InputOutputScheme scheme) " ";

%feature("docstring")  casadi::swapIndices(const std::vector< std::vector< T
> > &m) "

swap inner and outer indices of list of lists



::

  * [[apple0,apple1,...],[pear0,pear1,...]] ->
  *   [[apple0,pear0],[apple1,pear1],...]
  * 



";

%feature("docstring")  casadi::isNon_increasing(const std::vector< T > &v) "

Check if the vector is non-increasing.

";

%feature("docstring")  casadi::dlaqge_(int *m, int *n, double *a, int *lda,
double *r, double *c, double *colcnd, double *rowcnd, double *amax, char
*equed) " [INTERNAL]  Equilibrate the system.

";

%feature("docstring")  casadi::iszero(double x) " [INTERNAL]  Check if entry
is zero (false negative allowed)

";

%feature("docstring")  casadi::profileWriteEntry(std::ofstream &f, T *a) "
[INTERNAL] ";

%feature("docstring")  casadi::qpOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M()) "

Output arguments of an QP Solver

>Output scheme: casadi::QpSolverOutput (QP_SOLVER_NUM_OUT = 4) [qpOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| QP_SOLVER_X            | x                      | The primal solution .  |
+------------------------+------------------------+------------------------+
| QP_SOLVER_COST         | cost                   | The optimal cost .     |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LAM_A        | lam_a                  | The dual solution      |
|                        |                        | corresponding to       |
|                        |                        | linear bounds .        |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LAM_X        | lam_x                  | The dual solution      |
|                        |                        | corresponding to       |
|                        |                        | simple bounds .        |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::ProfilingType< ProfilingData_SOURCE >() "
[INTERNAL] ";

%feature("docstring")  casadi::daeIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M()) "

Input arguments of an ODE/DAE function

>Input scheme: casadi::DAEInput (DAE_NUM_IN = 4) [daeIn]

+-----------+-------+----------------------------+
| Full name | Short |        Description         |
+===========+=======+============================+
| DAE_X     | x     | Differential state .       |
+-----------+-------+----------------------------+
| DAE_Z     | z     | Algebraic state .          |
+-----------+-------+----------------------------+
| DAE_P     | p     | Parameter .                |
+-----------+-------+----------------------------+
| DAE_T     | t     | Explicit time dependence . |
+-----------+-------+----------------------------+

";

%feature("docstring")  casadi::integratorIn(const std::string &n0="", const
M &x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M(), const std::string &n5="", const M
&x5=M()) "

Input arguments of an integrator

>Input scheme: casadi::IntegratorInput (INTEGRATOR_NUM_IN = 6) [integratorIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| INTEGRATOR_X0          | x0                     | Differential state at  |
|                        |                        | the initial time .     |
+------------------------+------------------------+------------------------+
| INTEGRATOR_P           | p                      | Parameters .           |
+------------------------+------------------------+------------------------+
| INTEGRATOR_Z0          | z0                     | Initial guess for the  |
|                        |                        | algebraic variable .   |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RX0         | rx0                    | Backward differential  |
|                        |                        | state at the final     |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RP          | rp                     | Backward parameter     |
|                        |                        | vector .               |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RZ0         | rz0                    | Initial guess for the  |
|                        |                        | backwards algebraic    |
|                        |                        | variable .             |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::profileWriteSourceLine(std::ofstream &f, T
*a, int line_number, const std::string &sourceline, int opcode) " [INTERNAL]
";

%feature("docstring")  casadi::profileWriteSourceLine(std::ofstream &f, T
*a, int line_number, const std::string &sourceline) " [INTERNAL] ";

%feature("docstring")  casadi::isDecreasing(const std::vector< T > &v) "

Check if the vector is strictly decreasing.

";

%feature("docstring")  casadi::casadi_to_sparse(const real1_t *x, real2_t
*y, const int *sp_y) " [INTERNAL]  Convert dense to sparse.

";

%feature("docstring")  casadi::profileWriteName(std::ofstream &f, T *a,
const std::string &name, ProfilingData_FunctionType type, int
algorithm_size) " [INTERNAL] ";

%feature("docstring")  casadi::ProfilingType< ProfilingData_EXIT >() "
[INTERNAL] ";

%feature("docstring")  casadi::casadi_fill_n(real_t *x, int n, real_t alpha)
" [INTERNAL]  FILL: x <- alpha.

";

%feature("docstring")  casadi::casadi_scal(int n, real_t alpha, real_t *x,
int inc_x) " [INTERNAL]  SCAL: x <- alpha*x.

";

%feature("docstring")  casadi::ProfilingType< ProfilingData_ENTRY >() "
[INTERNAL] ";

%feature("docstring")  casadi::timerPlusEq(diffTime &t, const diffTime diff)
" [INTERNAL] ";

%feature("docstring")  casadi::hash_combine(std::size_t &seed, T v) "
[INTERNAL]  Generate a hash value incrementally (function taken from boost)

";

%feature("docstring")  casadi::hash_combine(std::size_t &seed, const int *v,
int sz) " [INTERNAL]  Generate a hash value incrementally, array.

";

%feature("docstring")  casadi::hash_combine(std::size_t &seed, const
std::vector< int > &v) " [INTERNAL]  Generate a hash value incrementally
(function taken from boost)

";

%feature("docstring")  casadi::casadi_swap(int n, real_t *x, int inc_x,
real_t *y, int inc_y) " [INTERNAL]  SWAP: x <-> y.

";

%feature("docstring")  casadi::getSchemeName(InputOutputScheme scheme) " ";

%feature("docstring")  casadi::profileWriteTime(std::ofstream &f, T *a, int
line_number, double local, double total) " [INTERNAL] ";

%feature("docstring")  casadi::profileWriteTime(std::ofstream &f, T *a, int
line_number, double local) " [INTERNAL] ";

%feature("docstring")  casadi::hasNegative(const std::vector< T > &v) "

Check if the vector has negative entries.

";

%feature("docstring")  casadi::rdaeIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M(), const std::string &n5="", const M
&x5=M(), const std::string &n6="", const M &x6=M()) "

Input arguments of an ODE/DAE backward integration function

>Input scheme: casadi::RDAEInput (RDAE_NUM_IN = 7) [rdaeIn]

+-----------+-------+-------------------------------+
| Full name | Short |          Description          |
+===========+=======+===============================+
| RDAE_RX   | rx    | Backward differential state . |
+-----------+-------+-------------------------------+
| RDAE_RZ   | rz    | Backward algebraic state .    |
+-----------+-------+-------------------------------+
| RDAE_RP   | rp    | Backward parameter vector .   |
+-----------+-------+-------------------------------+
| RDAE_X    | x     | Forward differential state .  |
+-----------+-------+-------------------------------+
| RDAE_Z    | z     | Forward algebraic state .     |
+-----------+-------+-------------------------------+
| RDAE_P    | p     | Parameter vector .            |
+-----------+-------+-------------------------------+
| RDAE_T    | t     | Explicit time dependence .    |
+-----------+-------+-------------------------------+

";

%feature("docstring")  casadi::check_exposed(T t) " [INTERNAL] ";

%feature("docstring")  casadi::getTimerTime(void) "[INTERNAL] ";

%feature("docstring")  casadi::read_matlab(std::istream &stream,
std::vector< T > &v) "

Read vector, matlab style.

";

%feature("docstring")  casadi::read_matlab(std::ifstream &file, std::vector<
std::vector< T > > &v) "

Read matrix, matlab style.

";

%feature("docstring")  casadi::write_matlab(std::ostream &stream, const
std::vector< T > &v) "

Print vector, matlab style.

";

%feature("docstring")  casadi::write_matlab(std::ostream &stream, const
std::vector< std::vector< T > > &v) "

Print matrix, matlab style.

";

%feature("docstring")  casadi::hash_sparsity(int nrow, int ncol, const
std::vector< int > &colind, const std::vector< int > &row) " [INTERNAL]
Hash a sparsity pattern.

";

%feature("docstring")  casadi::hash_sparsity(int nrow, int ncol, const int
*colind, const int *row) " [INTERNAL] ";

%feature("docstring")  casadi::isStrictlyMonotone(const std::vector< T > &v)
"

Check if the vector is strictly monotone.

";

%feature("docstring")  casadi::casadi_to_dense_tr(const real1_t *x, const
int *sp_x, real2_t *yt) " [INTERNAL]  Convert sparse to transposed dense.

";

%feature("docstring")  casadi::IOScheme(InputOutputScheme scheme) " ";

%feature("docstring")  casadi::IOScheme(const std::vector< std::string >
&entries=std::vector< std::string >(), const std::vector< std::string >
&descriptions=std::vector< std::string >()) " ";

%feature("docstring")  casadi::IOScheme(const std::string &arg_s0, const
std::string &arg_s1="", const std::string &arg_s2="", const std::string
&arg_s3="", const std::string &arg_s4="", const std::string &arg_s5="",
const std::string &arg_s6="", const std::string &arg_s7="", const
std::string &arg_s8="", const std::string &arg_s9="", const std::string
&arg_s10="", const std::string &arg_s11="", const std::string &arg_s12="",
const std::string &arg_s13="", const std::string &arg_s14="", const
std::string &arg_s15="", const std::string &arg_s16="", const std::string
&arg_s17="", const std::string &arg_s18="", const std::string &arg_s19="") "
";

%feature("docstring")  casadi::isRegular(const std::vector< T > &v) "

Checks if vector does not contain NaN or Inf.

";

%feature("docstring")  casadi::jacGIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M()) "

Input arguments of an NLP Jacobian function

>Input scheme: casadi::JacGInput (JACG_NUM_IN = 2) [jacGIn]

+-----------+-------+---------------------+
| Full name | Short |     Description     |
+===========+=======+=====================+
| JACG_X    | x     | Decision variable . |
+-----------+-------+---------------------+
| JACG_P    | p     | Fixed parameter .   |
+-----------+-------+---------------------+

";

%feature("docstring")  casadi::rdaeOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M()) "

Output arguments of an ODE/DAE backward integration function

>Output scheme: casadi::RDAEOutput (RDAE_NUM_OUT = 3) [rdaeOut]

+-----------+-------+-------------------------------------------+
| Full name | Short |                Description                |
+===========+=======+===========================================+
| RDAE_ODE  | ode   | Right hand side of ODE. .                 |
+-----------+-------+-------------------------------------------+
| RDAE_ALG  | alg   | Right hand side of algebraic equations. . |
+-----------+-------+-------------------------------------------+
| RDAE_QUAD | quad  | Right hand side of quadratures. .         |
+-----------+-------+-------------------------------------------+

";

%feature("docstring")  casadi::matrixName< int >() "

Get typename.

";

%feature("docstring")  casadi::dgeequ_(int *m, int *n, double *a, int *lda,
double *r, double *c, double *colcnd, double *rowcnd, double *amax, int
*info) " [INTERNAL]  Calculate col and row scaling.

";

%feature("docstring")  casadi::lookupvector(const std::vector< int > &v, int
size) "

Returns a vector for quickly looking up entries of supplied list.

lookupvector[i]!=-1 <=> v contains i v[lookupvector[i]] == i <=> v contains
i

Duplicates are treated by looking up last occurrence

";

%feature("docstring")  casadi::ProfilingType< ProfilingData_IO >() "
[INTERNAL] ";

%feature("docstring")  casadi::dormqr_(char *side, char *trans, int *n, int
*m, int *k, double *a, int *lda, double *tau, double *c, int *ldc, double
*work, int *lwork, int *info) " [INTERNAL]  Multiply right hand side with
Q-transpose (lapack)

";

%feature("docstring")  casadi::getRealTime() "[INTERNAL]  Returns the real
time, in seconds, or -1.0 if an error occurred.

Time is measured since an arbitrary and OS-dependent start time. The
returned real time is only useful for computing an elapsed time between two
calls to this function.

";

%feature("docstring")  casadi::integratorOut(const std::string &n0="", const
M &x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M(), const std::string &n5="", const M
&x5=M()) "

Output arguments of an integrator

>Output scheme: casadi::IntegratorOutput (INTEGRATOR_NUM_OUT = 6) [integratorOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| INTEGRATOR_XF          | xf                     | Differential state at  |
|                        |                        | the final time .       |
+------------------------+------------------------+------------------------+
| INTEGRATOR_QF          | qf                     | Quadrature state at    |
|                        |                        | the final time .       |
+------------------------+------------------------+------------------------+
| INTEGRATOR_ZF          | zf                     | Algebraic variable at  |
|                        |                        | the final time .       |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RXF         | rxf                    | Backward differential  |
|                        |                        | state at the initial   |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RQF         | rqf                    | Backward quadrature    |
|                        |                        | state at the initial   |
|                        |                        | time .                 |
+------------------------+------------------------+------------------------+
| INTEGRATOR_RZF         | rzf                    | Backward algebraic     |
|                        |                        | variable at the        |
|                        |                        | initial time .         |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::ProfilingType< ProfilingData_NAME >() "
[INTERNAL] ";

%feature("docstring")  casadi::operation_checker(unsigned int op) "
[INTERNAL] ";

%feature("docstring")  casadi::hessLagOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M()) "

Output arguments of an NLP Hessian function

>Output scheme: casadi::HessLagOutput (HESSLAG_NUM_OUT = 5) [hessLagOut]

+----------------+--------+------------------------------------------------+
|   Full name    | Short  |                  Description                   |
+================+========+================================================+
| HESSLAG_HESS   | hess   | Hessian of the Lagrangian .                    |
+----------------+--------+------------------------------------------------+
| HESSLAG_F      | f      | Objective function .                           |
+----------------+--------+------------------------------------------------+
| HESSLAG_G      | g      | Constraint function .                          |
+----------------+--------+------------------------------------------------+
| HESSLAG_GRAD_X | grad_x | Gradient of the Lagrangian with respect to x . |
+----------------+--------+------------------------------------------------+
| HESSLAG_GRAD_P | grad_p | Gradient of the Lagrangian with respect to p . |
+----------------+--------+------------------------------------------------+

";

%feature("docstring")  casadi::casadi_mm_sparse_t(const real_t *x, const int
*sp_x, const real_t *y, const int *sp_y, real_t *z, const int *sp_z, real_t
*w) " [INTERNAL]  Sparse matrix-matrix multiplication, first factor
transposed: z <- z + trans(x)*y.

";

%feature("docstring")  casadi::isNonDecreasing(const std::vector< T > &v) "

Check if the vector is non-decreasing.

";

%feature("docstring")  casadi::getSchemeEntryEnum(InputOutputScheme scheme,
const std::string &name) " ";

%feature("docstring")  casadi::profileWriteBare(std::ofstream &f, const T
&s) " [INTERNAL] ";

%feature("docstring")  casadi::casadi_mv_t(const real_t *x, const int *sp_x,
const real_t *y, real_t *z) " [INTERNAL]  Sparse matrix-vector
multiplication, first factor transposed: z <- z + trans(x)*y.

";

%feature("docstring")  casadi::nlpIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M()) "

Input arguments of an NLP function

>Input scheme: casadi::NLPInput (NL_NUM_IN = 2) [nlpIn]

+-----------+-------+---------------------+
| Full name | Short |     Description     |
+===========+=======+=====================+
| NL_X      | x     | Decision variable . |
+-----------+-------+---------------------+
| NL_P      | p     | Fixed parameter .   |
+-----------+-------+---------------------+

";

%feature("docstring")  casadi::isIncreasing(const std::vector< T > &v) "

Check if the vector is strictly increasing.

";

%feature("docstring")  casadi::gradFIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M()) "

Input arguments of an NLP objective gradient function

>Input scheme: casadi::GradFInput (GRADF_NUM_IN = 2) [gradFIn]

+-----------+-------+---------------------+
| Full name | Short |     Description     |
+===========+=======+=====================+
| GRADF_X   | x     | Decision variable . |
+-----------+-------+---------------------+
| GRADF_P   | p     | Fixed parameter .   |
+-----------+-------+---------------------+

";

%feature("docstring")  casadi::simpleIRK(Function f, int N=10, int order=4,
const std::string &scheme="radau", const std::string &solver="newton", const
Dict &solver_options=Dict()) "

Construct an implicit Runge-Kutta integrator using a collocation scheme The
constructed function has three inputs, corresponding to initial state (x0),
parameter (p) and integration time (h) and one output, corresponding to
final state (xf).

Parameters:
-----------

f:  ODE function with two inputs (x and p) and one output (xdot)

N:  Number of integrator steps

order:  Order of interpolating polynomials

scheme:  Collocation scheme, as excepted by collocationPoints function.

";

%feature("docstring")  casadi::ptrVec(std::vector< T > &v) " [INTERNAL]
Convenience function, convert vectors to vectors of pointers.

";

%feature("docstring")  casadi::ptrVec(const std::vector< T > &v) "
[INTERNAL]  Convenience function, convert vectors to vectors of pointers.

";

%feature("docstring")  casadi::ptrVec(std::vector< std::vector< T > > &v) "
[INTERNAL]  Convenience function, convert vectors to vectors of pointers.

";

%feature("docstring")  casadi::ptrVec(const std::vector< std::vector< T > >
&v) " [INTERNAL]  Convenience function, convert vectors to vectors of
pointers.

";

%feature("docstring")  casadi::casadi_axpy(int n, real_t alpha, const real_t
*x, int inc_x, real_t *y, int inc_y) " [INTERNAL]  AXPY: y <- a*x + y.

";

%feature("docstring")  casadi::isMonotone(const std::vector< T > &v) "

Check if the vector is monotone.

";

%feature("docstring")  casadi::jacGOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M()) "

Output arguments of an NLP Jacobian function

>Output scheme: casadi::JacGOutput (JACG_NUM_OUT = 3) [jacGOut]

+-----------+-------+-------------------------------+
| Full name | Short |          Description          |
+===========+=======+===============================+
| JACG_JAC  | jac   | Jacobian of the constraints . |
+-----------+-------+-------------------------------+
| JACG_F    | f     | Objective function .          |
+-----------+-------+-------------------------------+
| JACG_G    | g     | Constraint function .         |
+-----------+-------+-------------------------------+

";

%feature("docstring")  casadi::casadi_iamax(int n, const real_t *x, int
inc_x) " [INTERNAL]  IAMAX: index corresponding to the entry with the
largest absolute value.

";

%feature("docstring")  casadi::getSchemeEntryNames(InputOutputScheme scheme)
" ";

%feature("docstring")  casadi::hessLagIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M()) "

Input arguments of an NLP Hessian function

>Input scheme: casadi::HessLagInput (HESSLAG_NUM_IN = 4) [hessLagIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| HESSLAG_X              | x                      | Decision variable .    |
+------------------------+------------------------+------------------------+
| HESSLAG_P              | p                      | Fixed parameter .      |
+------------------------+------------------------+------------------------+
| HESSLAG_LAM_F          | lam_f                  | Multiplier for f. Just |
|                        |                        | a scalar factor for    |
|                        |                        | the objective that the |
|                        |                        | NLP solver might use   |
|                        |                        | to scale the           |
|                        |                        | objective.             |
+------------------------+------------------------+------------------------+
| HESSLAG_LAM_G          | lam_g                  | Multiplier for g .     |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::daeOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M()) "

Output arguments of an DAE function

>Output scheme: casadi::DAEOutput (DAE_NUM_OUT = 3) [daeOut]

+-----------+-------+--------------------------------------------+
| Full name | Short |                Description                 |
+===========+=======+============================================+
| DAE_ODE   | ode   | Right hand side of the implicit ODE .      |
+-----------+-------+--------------------------------------------+
| DAE_ALG   | alg   | Right hand side of algebraic equations .   |
+-----------+-------+--------------------------------------------+
| DAE_QUAD  | quad  | Right hand side of quadratures equations . |
+-----------+-------+--------------------------------------------+

";

%feature("docstring")  casadi::getSchemeEntryDoc(InputOutputScheme scheme,
int i) " ";

%feature("docstring")  casadi::collocationInterpolators(const std::vector<
double > &tau_root, std::vector< std::vector< double > > &OUTPUT,
std::vector< double > &OUTPUT) "

Obtain collocation interpolating matrices.

Parameters:
-----------

tau_root:  location of collocation points, as obtained from
collocationPoints

C:  interpolating coefficients to obtain derivatives Length: order+1, order
+ 1



::

dX/dt @collPoint(j) ~ Sum_i C[j][i]*X@collPoint(i)



Parameters:
-----------

D:  interpolating coefficients to obtain end state Length: order+1

";

%feature("docstring")  casadi::matrixName() "

Get typename.

";

%feature("docstring")  casadi::casadi_to_sparse_tr(const real1_t *xt,
real2_t *y, const int *sp_y) " [INTERNAL]  Convert transposed dense to
sparse.

";

%feature("docstring")  casadi::casadi_nrm2(int n, const real_t *x, int
inc_x) " [INTERNAL]  NRM2: ||x||_2 -> return.

";

%feature("docstring")  casadi::nlpSolverIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M(), const std::string &n5="", const M
&x5=M(), const std::string &n6="", const M &x6=M(), const std::string
&n7="", const M &x7=M()) "

Input arguments of an NLP Solver

>Input scheme: casadi::NlpSolverInput (NLP_SOLVER_NUM_IN = 8) [nlpSolverIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| NLP_SOLVER_X0          | x0                     | Decision variables,    |
|                        |                        | initial guess (nx x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_P           | p                      | Value of fixed         |
|                        |                        | parameters (np x 1) .  |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LBX         | lbx                    | Decision variables     |
|                        |                        | lower bound (nx x 1),  |
|                        |                        | default -inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_UBX         | ubx                    | Decision variables     |
|                        |                        | upper bound (nx x 1),  |
|                        |                        | default +inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LBG         | lbg                    | Constraints lower      |
|                        |                        | bound (ng x 1),        |
|                        |                        | default -inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_UBG         | ubg                    | Constraints upper      |
|                        |                        | bound (ng x 1),        |
|                        |                        | default +inf .         |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_X0      | lam_x0                 | Lagrange multipliers   |
|                        |                        | for bounds on X,       |
|                        |                        | initial guess (nx x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_G0      | lam_g0                 | Lagrange multipliers   |
|                        |                        | for bounds on G,       |
|                        |                        | initial guess (ng x 1) |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::hash_value(T v) " [INTERNAL]  Hash value of
an integer.

";

%feature("docstring")  casadi::casadi_copy_n(const real_t *x, int n, real_t
*y) " [INTERNAL]  COPY: y <-x.

";

%feature("docstring")  casadi::collocationPoints(int order, const
std::string &scheme="radau") "

Obtain collocation points of specific order and scheme.

Parameters:
-----------

scheme:  'radau' or 'legendre'

";

%feature("docstring")  casadi::getSchemeEntryEnumName(InputOutputScheme
scheme, int i) " ";

%feature("docstring")  casadi::simpleIntegrator(Function f, const
std::string &integrator="cvodes", const Dict &integrator_options=Dict()) "

Simplified wrapper for the Integrator class Constructs an integrator using
the same syntax as simpleRK and simpleIRK. The constructed function has
three inputs, corresponding to initial state (x0), parameter (p) and
integration time (h) and one output, corresponding to final state (xf).

Parameters:
-----------

f:  ODE function with two inputs (x and p) and one output (xdot)

N:  Number of integrator steps

order:  Order of interpolating polynomials

scheme:  Collocation scheme, as excepted by collocationPoints function.

";

%feature("docstring")  casadi::casadi_to_dense(const real1_t *x, const int
*sp_x, real2_t *y) " [INTERNAL]  Convert sparse to dense.

";

%feature("docstring")  casadi::dgetrf_(int *m, int *n, double *a, int *lda,
int *ipiv, int *info) " [INTERNAL]  LU-Factorize dense matrix (lapack)

";

%feature("docstring")  casadi::casadi_project(const real_t *x, const int
*sp_x, real_t *y, const int *sp_y, real_t *w) " [INTERNAL]  Sparse copy: y
<- x, w work vector (length >= number of rows)

";

%feature("docstring")  casadi::profileWriteExit(std::ofstream &f, T *a,
double total) " [INTERNAL] ";

%feature("docstring")  casadi::casadi_inner_prod(int n, const real_t *x,
const real_t *y) " [INTERNAL]  Inner product.

";

%feature("docstring")  casadi::diffTimers(const timer t1, const timer t0) "
[INTERNAL] ";

%feature("docstring")  casadi::nlpSolverOut(const std::string &n0="", const
M &x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M(), const std::string &n5="", const M
&x5=M()) "

Output arguments of an NLP Solver

>Output scheme: casadi::NlpSolverOutput (NLP_SOLVER_NUM_OUT = 6) [nlpSolverOut]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| NLP_SOLVER_X           | x                      | Decision variables at  |
|                        |                        | the optimal solution   |
|                        |                        | (nx x 1) .             |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_F           | f                      | Cost function value at |
|                        |                        | the optimal solution   |
|                        |                        | (1 x 1) .              |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_G           | g                      | Constraints function   |
|                        |                        | at the optimal         |
|                        |                        | solution (ng x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_X       | lam_x                  | Lagrange multipliers   |
|                        |                        | for bounds on X at the |
|                        |                        | solution (nx x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_G       | lam_g                  | Lagrange multipliers   |
|                        |                        | for bounds on G at the |
|                        |                        | solution (ng x 1) .    |
+------------------------+------------------------+------------------------+
| NLP_SOLVER_LAM_P       | lam_p                  | Lagrange multipliers   |
|                        |                        | for bounds on P at the |
|                        |                        | solution (np x 1) .    |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::profileWrite(std::ofstream &f, const T &s) "
[INTERNAL] ";

%feature("docstring")  casadi::dtrsm_(char *side, char *uplo, char *transa,
char *diag, int *m, int *n, double *alpha, double *a, int *lda, double *b,
int *ldb) " [INTERNAL]   Solve upper triangular system (lapack)

";

%feature("docstring")  casadi::casadi_quad_form(const real_t *A, const int
*sp_A, const real_t *x) " [INTERNAL]  Calculates inner_prod(x, mul(A, x))

Calculates inner_prod(x, mul(A, x)) without memory allocation.

";

%feature("docstring")  casadi::linsolIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M()) "

Input arguments of a linear solver

>Input scheme: casadi::LinsolInput (LINSOL_NUM_IN = 2) [linsolIn]

+-----------+-------+------------------------------------------------+
| Full name | Short |                  Description                   |
+===========+=======+================================================+
| LINSOL_A  | A     | The square matrix A: sparse, (n x n). .        |
+-----------+-------+------------------------------------------------+
| LINSOL_B  | B     | The right-hand-side matrix b: dense, (n x m) . |
+-----------+-------+------------------------------------------------+

";

%feature("docstring")  casadi::casadi_mm_sparse(const real_t *x, const int
*sp_x, const real_t *y, const int *sp_y, real_t *z, const int *sp_z, real_t
*w) " [INTERNAL]  Sparse matrix-matrix multiplication: z <- z + x*y.

";

%feature("docstring")  casadi::linsolOut(const std::string &n0="", const M
&x0=M()) "

Output arguments of a linear solver

>Output scheme: casadi::LinsolOutput (LINSOL_NUM_OUT = 1) [linsolOut]

+-----------+-------+----------------------------------------------+
| Full name | Short |                 Description                  |
+===========+=======+==============================================+
| LINSOL_X  | X     | Solution to the linear system of equations . |
+-----------+-------+----------------------------------------------+

";

%feature("docstring")  casadi::diffToDict(const diffTime &diff) " [INTERNAL]
";

%feature("docstring")  casadi::casadi_mv(const real_t *x, const int *sp_x,
const real_t *y, real_t *z) " [INTERNAL]  Sparse matrix-vector
multiplication: z <- z + x*y.

";

%feature("docstring")  casadi::dgetrs_(char *trans, int *n, int *nrhs,
double *a, int *lda, int *ipiv, double *b, int *ldb, int *info) " [INTERNAL]
Solve a system of equation using an LU-factorized matrix (lapack)

";

%feature("docstring")  casadi::ProfilingType() "[INTERNAL] ";

%feature("docstring")  casadi::qpIn(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M(), const std::string &n3="", const M &x3=M(), const
std::string &n4="", const M &x4=M(), const std::string &n5="", const M
&x5=M(), const std::string &n6="", const M &x6=M(), const std::string
&n7="", const M &x7=M(), const std::string &n8="", const M &x8=M()) "

Input arguments of a QP problem

>Input scheme: casadi::QpSolverInput (QP_SOLVER_NUM_IN = 9) [qpIn]

+------------------------+------------------------+------------------------+
|       Full name        |         Short          |      Description       |
+========================+========================+========================+
| QP_SOLVER_H            | h                      | The square matrix H:   |
|                        |                        | sparse, (n x n). Only  |
|                        |                        | the lower triangular   |
|                        |                        | part is actually used. |
|                        |                        | The matrix is assumed  |
|                        |                        | to be symmetrical.     |
+------------------------+------------------------+------------------------+
| QP_SOLVER_G            | g                      | The vector g: dense,   |
|                        |                        | (n x 1) .              |
+------------------------+------------------------+------------------------+
| QP_SOLVER_A            | a                      | The matrix A: sparse,  |
|                        |                        | (nc x n) - product     |
|                        |                        | with x must be dense.  |
|                        |                        | .                      |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LBA          | lba                    | dense, (nc x 1)        |
+------------------------+------------------------+------------------------+
| QP_SOLVER_UBA          | uba                    | dense, (nc x 1)        |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LBX          | lbx                    | dense, (n x 1)         |
+------------------------+------------------------+------------------------+
| QP_SOLVER_UBX          | ubx                    | dense, (n x 1)         |
+------------------------+------------------------+------------------------+
| QP_SOLVER_X0           | x0                     | dense, (n x 1)         |
+------------------------+------------------------+------------------------+
| QP_SOLVER_LAM_X0       | lam_x0                 | dense                  |
+------------------------+------------------------+------------------------+

";

%feature("docstring")  casadi::ProfilingType< ProfilingData_TIMELINE >() "
[INTERNAL] ";

%feature("docstring")  casadi::casadi_trans(const real_t *x, const int
*sp_x, real_t *y, const int *sp_y, int *tmp) " [INTERNAL]  TRANS: y <-
trans(x)

";

%feature("docstring")  casadi::gradFOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M(), const std::string
&n2="", const M &x2=M()) "

Output arguments of an NLP objective gradient function

>Output scheme: casadi::GradFOutput (GRADF_NUM_OUT = 3) [gradFOut]

+------------+-------+-------------------------------+
| Full name  | Short |          Description          |
+============+=======+===============================+
| GRADF_GRAD | grad  | Jacobian of the constraints . |
+------------+-------+-------------------------------+
| GRADF_F    | f     | Objective function .          |
+------------+-------+-------------------------------+
| GRADF_G    | g     | Constraint function .         |
+------------+-------+-------------------------------+

";

%feature("docstring")  casadi::casadi_asum(int n, const real_t *x, int
inc_x) " [INTERNAL]  ASUM: ||x||_1 -> return.

";

%feature("docstring")  casadi::nlpOut(const std::string &n0="", const M
&x0=M(), const std::string &n1="", const M &x1=M()) "

Output arguments of an NLP function

>Output scheme: casadi::NLPOutput (NL_NUM_OUT = 2) [nlpOut]

+-----------+-------+-----------------------+
| Full name | Short |      Description      |
+===========+=======+=======================+
| NL_F      | f     | Objective function .  |
+-----------+-------+-----------------------+
| NL_G      | g     | Constraint function . |
+-----------+-------+-----------------------+

";

%feature("docstring")  casadi::simpleRK(Function f, int N=10, int order=4) "

Construct an explicit Runge-Kutta integrator The constructed function has
three inputs, corresponding to initial state (x0), parameter (p) and
integration time (h) and one output, corresponding to final state (xf).

Parameters:
-----------

f:  ODE function with two inputs (x and p) and one output (xdot)

N:  Number of integrator steps

order:  Order of interpolating polynomials

";

%feature("docstring")  casadi::dgeqrf_(int *m, int *n, double *a, int *lda,
double *tau, double *work, int *lwork, int *info) " [INTERNAL]  QR-factorize
dense matrix (lapack)

";

%feature("docstring")  casadi::ptrToLong(T *a) " [INTERNAL] ";

%feature("docstring")  casadi::profileWriteSourceLineDep(std::ofstream &f, T
*a, int line_number, const std::string &sourceline, int opcode, T2
*dependency) " [INTERNAL] ";

%feature("docstring")  casadi::profileWriteSourceLineDep(std::ofstream &f, T
*a, int line_number, const std::string &sourceline, T2 *dependency) "
[INTERNAL] ";

%feature("docstring")  casadi::userOut() "";

%feature("docstring")  casadi::casadi_norm_inf_mul(const real_t *x, const
int *sp_x, const real_t *y, const int *sp_y, real_t *dwork, int *iwork) "
[INTERNAL]  Inf-norm of a Matrix-matrix product,*

Parameters:
-----------

dwork:  A real work vector that you must allocate Minimum size: y.size1()

iwork:  A integer work vector that you must allocate Minimum size:
y.size1()+x.size2()+1

";

%feature("docstring")  casadi::matrixName< SXElement >() " [INTERNAL] ";

%feature("docstring")  casadi::getSchemeEntryName(InputOutputScheme scheme,
int i) " ";


// File: namespaceIpopt.xml


// File: namespacestd.xml


// File: chapter1.xml


// File: chapter2.xml


// File: chapter3.xml


// File: chapter4.xml


// File: chapter5.xml


// File: chapter6.xml

