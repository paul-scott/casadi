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


#ifndef CASADI_SPARSITY_HPP
#define CASADI_SPARSITY_HPP

#include "../shared_object.hpp"
#include "../casadi_types.hpp"
#include "sparsity_interface.hpp"
#include <vector>
#include <list>
#include <limits>

// Cashing requires a multimap (preferably a hash map)
#ifdef USE_CXX11
// Using C++11 unordered_multimap (hash map)
#include <unordered_map>
#define CACHING_MULTIMAP std::unordered_multimap
#else // USE_CXX11
// Falling back to std::multimap (binary search tree)
#include <map>
#define CACHING_MULTIMAP std::multimap
#endif // USE_CXX11
#include "../weak_ref.hpp"

namespace casadi {

  // Forward declaration
  class SparsityInternal;

  /** \brief General sparsity class
   *
   * The storage format is a compressed column storage (CCS) format.\n
   *
   In this format, the structural non-zero elements are stored in column-major order, starting from
   the upper left corner of the matrix and ending in the lower right corner.

   In addition to the dimension (size1(), size2()), (i.e. the number of rows and the number of
   columns respectively), there are also two vectors of integers:

   1. "colind" [length size2()+1], which contains the index to the first non-zero element on or
   after the corresponding column. All the non-zero elements of a particular i are thus the elements
   with index el that fulfills: colind[i] <= el < colind[i+1].

   2. "row" [same length as the number of non-zero elements, nnz()] The rows for each of the
   structural non-zeros.

   Note that with this format, it is cheap to loop over all the non-zero elements of a particular
   column, at constant time per element, but expensive to jump to access a location (i, j).

   If the matrix is dense, i.e. length(row) == size1()*size2(), the format reduces to standard dense
   column major format, which allows access to an arbitrary element in constant time.

   Since the object is reference counted (it inherits from SharedObject), several matrices are
   allowed to share the same sparsity pattern.

   The implementations of some methods of this class has been taken from the CSparse package and
   modified to use C++ standard library and CasADi data structures.

   * \see Matrix
   *
   * \author Joel Andersson
   * \date 2010
   */
  class CASADI_EXPORT Sparsity : public SharedObject,
                                 public SparsityInterface<Sparsity> {
  public:

    /// Default constructor
    explicit Sparsity(int dummy=0);

    /** \brief Pattern with all structural zeros */
    Sparsity(int nrow, int ncol);

#ifndef SWIG
    /** \brief Create a sparse matrix with all structural zeros */
    explicit Sparsity(const std::pair<int, int>& rc);
#endif // SWIG

    /// Construct from sparsity pattern vectors given in compressed column storage format
    Sparsity(int nrow, int ncol, const std::vector<int>& colind, const std::vector<int>& row);

#ifndef SWIG
    /** \brief  Create from node */
    static Sparsity create(SparsityInternal *node);

    /// Base class
    typedef SparsityInterface<Sparsity> B;

    /// Expose base class functions
    using B::zz_horzsplit;
    using B::zz_diagsplit;
    using B::zz_vertsplit;
#endif

    /** \brief Create a scalar sparsity pattern **/
    ///@{
    static Sparsity scalar(bool dense_scalar=true)
    { return dense_scalar ? dense(1, 1) : Sparsity(1, 1); }
    ///@}

    /** \brief Create a dense rectangular sparsity pattern **/
    ///@{
    static Sparsity dense(int nrow, int ncol=1);
    static Sparsity dense(const std::pair<int, int> &rc) { return dense(rc.first, rc.second);}
    ///@}

#if !defined(SWIG) || !defined(SWIGMATLAB)
    /** \brief [DEPRECATED] Create a sparse (empty) rectangular sparsity pattern
        Use Sparse(nrow, ncol) instead **/
    ///@{
    static Sparsity sparse(int nrow, int ncol=1);
    static Sparsity sparse(const std::pair<int, int> &rc) { return sparse(rc.first, rc.second);}
    ///@}
#endif // !defined(SWIG) || !defined(SWIGMATLAB)

    /** \brief Create the sparsity pattern for a unit vector of length n and a nonzero on
     * position el **/
    ///@{
    static Sparsity unit(int n, int el);
    ///@}

    /** \brief Create a upper triangular square sparsity pattern **/
    static Sparsity upper(int n);

    /** \brief Create a lower triangular square sparsity pattern **/
    static Sparsity lower(int n);

    /** \brief Create diagonal sparsity pattern **/
    ///@{
    static Sparsity diag(int nrow) { return diag(nrow, nrow);}
    static Sparsity diag(int nrow, int ncol);
    static Sparsity diag(const std::pair<int, int> &rc) { return diag(rc.first, rc.second);}
    ///@}

    /** \brief Create a single band in a square sparsity pattern
     *
     * band(n, 0) is equivalent to diag(n) \n
     * band(n, -1) has a band below the diagonal \n
     * \param p indicate
     **/
    static Sparsity band(int n, int p);

    /** \brief Create banded square sparsity pattern
     *
     * banded(n, 0) is equivalent to diag(n) \n
     * banded(n, 1) is tri-diagonal matrix \n
     **/
    static Sparsity banded(int n, int p);

    /** \brief Construct a block sparsity pattern from (row, col) vectors */
    static Sparsity rowcol(const std::vector<int>& row,
                           const std::vector<int>& col,
                           int nrow, int ncol);

    /** \brief Create a sparsity pattern given the nonzeros in sparse triplet form
    **/
    static Sparsity triplet(int nrow, int ncol,
                            const std::vector<int>& row, const std::vector<int>& col,
                            std::vector<int>& mapping, bool invert_mapping=false);

    /** \brief Create a sparsity pattern given the nonzeros in sparse triplet form
        (no nonzero mapping)
        rows_are_sorted==true means that the row entries already in increasing order
        for each col and without any duplicates
    **/
    static Sparsity triplet(int nrow, int ncol, const std::vector<int>& row,
                            const std::vector<int>& col);

    /** Create from a single vector containing the pattern in compressed column storage format:
     * The format:
     * The first two entries are the number of rows (nrow) and columns (ncol)
     * The next ncol+1 entries are the column offsets (colind).
       Note that the last element, colind[ncol], gives the number of nonzeros
     * The last colind[ncol] entries are the row indices
     **/
    ///@{
    static Sparsity compressed(const std::vector<int>& v);
#ifndef SWIG
    static Sparsity compressed(const int* v);
#endif // SWIG
    ///@}

    /// \cond INTERNAL
    /** \brief Check if there is an identical copy of the sparsity pattern in the cache,
     * and if so, make a shallow copy of that one */
    void reCache();

    /** \brief Clear the cache */
    static void clearCache();
    /// \endcond

    /** \brief Check if the dimensions and colind, row vectors are compatible.
     * \param complete  set to true to also check elementwise
     * throws an error as possible result
     */
    void sanityCheck(bool complete=false) const;
    /** Get the diagonal of the matrix/create a diagonal matrix
        (mapping will contain the nonzero mapping)
        When the input is square, the diagonal elements are returned.
        If the input is vector-like, a diagonal matrix is constructed with it.
    */
    Sparsity getDiag(std::vector<int>& SWIG_OUTPUT(mapping)) const;

    /// Compress a sparsity pattern
    std::vector<int> compress() const;

#ifndef SWIG
    /// @{
    /// Access a member function or object
    SparsityInternal* operator->();
    const SparsityInternal* operator->() const;
    /// @}

    /// Reference to internal structure
    /// @{
    SparsityInternal& operator*();
    const SparsityInternal& operator*() const;
    /// @}
#endif // SWIG
    /// \name Check if two sparsity patterns are identical
    /// @{
    bool isEqual(const Sparsity& y) const;
    bool isEqual(int nrow, int ncol, const std::vector<int>& colind,
                 const std::vector<int>& row) const;
#ifndef SWIG
    bool isEqual(int nrow, int ncol, const int* colind, const int* row) const;
#endif // SWIG

    bool operator==(const Sparsity& y) const { return isEqual(y);}
    /// @}

    /// Check if two sparsity patterns are difference
    bool operator!=(const Sparsity& y) const {return !isEqual(y);}

#ifndef SWIG
    /** \brief Implicit or explicit type conversion to C representation
        In the C runtime, sparsity patterns are represented as a "const int*".
        This enables using the C runtime functions using a natural syntax.
    */
    operator const int*() const;
#endif // SWIG

    /// \name Size and element counting
    /// @{

    /// Get the number of rows
    int size1() const;

    /// Get the number of columns
    int size2() const;

    /** \brief The total number of elements, including structural zeros, i.e. size2()*size1()
        \see nnz()  */
    int numel() const;

    /** \brief Check if the sparsity is empty
    *
    * A sparsity is considered empty if one of the dimensions is zero
    * (or optionally both dimensions)
    */
    bool isempty(bool both=false) const;

    /** \brief Get the number of (structural) non-zeros
        \see numel() */
    int nnz() const;

    /** \brief Number of non-zeros in the upper triangular half,
     * i.e. the number of elements (i, j) with j>=i */
    int sizeU() const;

    /** \brief Number of non-zeros in the lower triangular half,
     * i.e. the number of elements (i, j) with j<=i */
    int sizeL() const;

    /** \brief Number of non-zeros on the diagonal, i.e. the number of elements (i, j) with j==i */
    int sizeD() const;

    /** \brief Upper half-bandwidth */
    int bandwidthU() const;

    /** \brief Lower half-bandwidth */
    int bandwidthL() const;

    /** \brief  Get the shape */
    std::pair<int, int> shape() const;
    /// @}

#ifndef SWIG
    /** \brief Get a reference to row-vector,
     * containing rows for all non-zero elements (see class description) */
    const int* row() const;

    /** \brief Get a reference to the colindex of all column element (see class description) */
    const int* colind() const;
#endif

    /** \brief Get the row for each non-zero entry
        Together with the column-vector, this vector gives the sparsity of the matrix in
        sparse triplet format, and together with the colind vector, one obtains the sparsity
        in column compressed format. */
    std::vector<int> getRow() const;

    /** \brief Get the column index for each column
        Together with the row-vector, one obtains the sparsity pattern in the
        column compressed format. */
    std::vector<int> getColind() const;

    /** \brief  Get a reference to the colindex of column cc (see class description) */
    int colind(int cc) const;

    /** \brief Get the row of a non-zero element */
    int row(int el) const;

    /** \brief Get the column for each non-zero entry
        Together with the row-vector, this vector gives the sparsity of the matrix in
        sparse triplet format, i.e. the column and row for each non-zero elements  */
    std::vector<int> getCol() const;

    /// Resize
    void resize(int nrow, int ncol);

    /** \brief Get the index of a non-zero element
        Add the element if it does not exist and copy object if it's not unique */
    int addNZ(int rr, int cc);

    /** \brief Get the index of an existing non-zero element
        return -1 if the element does not exist */
    int getNZ(int rr, int cc) const;

    /// Returns true if the pattern has a non-zero at location rr, cc
    bool hasNZ(int rr, int cc) const;

    /** \brief Get a set of non-zero element
        return -1 if the element does not exist */
    std::vector<int> getNZ(const std::vector<int>& rr, const std::vector<int>& cc) const;

    /** \brief Get the nonzero index for a set of elements
        The index vector is used both for input and outputs and must be sorted by increasing
        nonzero index, i.e. column-wise.
        Elements not found in the sparsity pattern are set to -1.
    */
    void getNZ(std::vector<int>& SWIG_INOUT(indices)) const;

    /// Get nonzeros in lower triangular part
    std::vector<int> getLowerNZ() const;

    /// Get nonzeros in upper triangular part
    std::vector<int> getUpperNZ() const;

    /// Get the sparsity in compressed column storage (CCS) format
    void getCCS(std::vector<int>& SWIG_OUTPUT(colind),
                std::vector<int>& SWIG_OUTPUT(row)) const;

    /// Get the sparsity in compressed row storage (CRS) format
    void getCRS(std::vector<int>& SWIG_OUTPUT(rowind),
                std::vector<int>& SWIG_OUTPUT(col)) const;

    /// Get the sparsity in sparse triplet format
    void getTriplet(std::vector<int>& SWIG_OUTPUT(row),
                    std::vector<int>& SWIG_OUTPUT(col)) const;

    /** \brief Get a submatrix
     *
     * Returns the sparsity of the submatrix, with a mapping such that
     *   submatrix[k] = originalmatrix[mapping[k]]
     */
    Sparsity sub(const std::vector<int>& rr,
                 const std::vector<int>& cc,
                 std::vector<int>& SWIG_OUTPUT(mapping), bool ind1=false) const;

    /** \brief Get a set of elements
     *
     * Returns the sparsity of the corresponding elements, with a mapping such that
     *   submatrix[k] = originalmatrix[mapping[k]]
     */
    Sparsity sub(const std::vector<int>& rr, const Sparsity& sp,
                 std::vector<int>& SWIG_OUTPUT(mapping), bool ind1=false) const;

    /// Transpose the matrix
    Sparsity T() const;

    /** \brief Transpose the matrix and get the reordering of the non-zero entries
    *
    *  \param[out] mapping the non-zeros of the original matrix
    *              for each non-zero of the new matrix
    */
    Sparsity transpose(std::vector<int>& mapping, bool invert_mapping=false) const;

    /// Check if the sparsity is the transpose of another
    bool isTranspose(const Sparsity& y) const;

    /// Check if the sparsity is a reshape of another
    bool isReshape(const Sparsity& y) const;

    /// @{
    /** \brief Combine two sparsity patterns
        Returns the new sparsity pattern as well as a mapping with the same length as
        the number of non-zero elements
        The mapping matrix contains the arguments for each nonzero, the first bit indicates
        if the first argument is nonzero,
        the second bit indicates if the second argument is nonzero (note that none of,
        one of or both of the arguments can be nonzero) */
#ifndef SWIG
    Sparsity patternCombine(const Sparsity& y, bool f0x_is_zero, bool fx0_is_zero,
                            std::vector<unsigned char>& mapping) const;
#endif // SWIG
    Sparsity patternCombine(const Sparsity& y, bool f0x_is_zero, bool fx0_is_zero) const;
    /// @}

    /// @{
    /** \brief Union of two sparsity patterns */
#ifndef SWIG
    Sparsity patternUnion(const Sparsity& y, std::vector<unsigned char>& mapping) const;
#endif // SWIG
    Sparsity patternUnion(const Sparsity& y) const;
    Sparsity operator+(const Sparsity& b) const;
    /// @}

    /// @{
    /** \brief Intersection of two sparsity patterns
        Returns the new sparsity pattern as well as a mapping with the same length as the
        number of non-zero elements
        The value is 1 if the non-zero comes from the first (i.e. this) object, 2 if it is from
        the second and 3 (i.e. 1 | 2) if from both */
#ifndef SWIG
    Sparsity patternIntersection(const Sparsity& y,
                                 std::vector<unsigned char>& mapping) const;
#endif // SWIG
    Sparsity patternIntersection(const Sparsity& y) const;
    Sparsity operator*(const Sparsity& b) const;
    /// @}

    /// @{
    /** \brief Sparsity pattern for a matrix-matrix product
        Returns the sparsity pattern resulting from multiplying the pattern with
        another pattern y from the right.
    */
    Sparsity patternProduct(const Sparsity& y) const;
    /// @}

    /// Take the inverse of a sparsity pattern; flip zeros and non-zeros
    Sparsity patternInverse() const;

#ifndef SWIG
    /** \brief Propagate sparsity using 0-1 logic through a matrix product,
     * no memory allocation: <tt>z = mul(x, y)</tt> with work vector
     * Forward mode.
     */
    static void mul_sparsityF(const bvec_t* x, const Sparsity& x_sp,
                              const bvec_t* y, const Sparsity& y_sp,
                              bvec_t* z, const Sparsity& z_sp,
                              bvec_t* w);

    /** \brief Propagate sparsity using 0-1 logic through a matrix product,
     * no memory allocation: <tt>z = mul(x, y)</tt> with work vector
     * Reverse mode.
     */
    static void mul_sparsityR(bvec_t* x, const Sparsity& x_sp,
                              bvec_t* y, const Sparsity& y_sp,
                              bvec_t* z, const Sparsity& z_sp,
                              bvec_t* w);

    /// \cond INTERNAL
    /// @{
    /** \brief Accessed by SparsityInterface */
    static Sparsity zz_horzcat(const std::vector<Sparsity> & sp);
    static Sparsity zz_vertcat(const std::vector<Sparsity> & sp);
    static Sparsity zz_blockcat(const std::vector< std::vector< Sparsity > > &v);
    static Sparsity zz_diagcat(const std::vector< Sparsity > &v);
    std::vector<Sparsity> zz_horzsplit(const std::vector<int>& output_offset) const;
    std::vector<Sparsity> zz_vertsplit(const std::vector<int>& output_offset) const;
    std::vector<Sparsity> zz_diagsplit(const std::vector<int>& offset1,
                                       const std::vector<int>& offset2) const;
    Sparsity zz_mtimes(const Sparsity& y) const {
      if (isscalar()) {
        return isdense() ? y : Sparsity(y.shape());
      } else if (y.isscalar()) {
        return y.isdense() ? *this : Sparsity(shape());
      } else {
        // Check dimensions
        casadi_assert_message(size2()==y.size1(),
                              "Matrix product with incompatible dimensions. Lhs is "
                              << dimString() << " and rhs is " << y.dimString() << ".");
        return patternProduct(y);
      }
    }
    Sparsity zz_mac(const Sparsity& Y, const Sparsity& Z) const { return Z;}
    Sparsity zz_vecNZ() const;
    Sparsity zz_reshape(int nrow, int ncol) const;
    Sparsity zz_reshape(const Sparsity& sp) const;
    int zz_sprank() const;
    int zz_norm_0_mul(const Sparsity& B) const;
    Sparsity zz_kron(const Sparsity& b) const;
    /// @}
    /// \endcond

#endif //SWIG

    /** \brief Enlarge matrix
        Make the matrix larger by inserting empty rows and columns, keeping the existing non-zeros

        For the matrices A to B
        A(m, n)
        length(jj)=m , length(ii)=n
        B(nrow, ncol)

        A=enlarge(m, n, ii, jj) makes sure that

        B[jj, ii] == A
    */
    void enlarge(int nrow, int ncol,
                 const std::vector<int>& rr, const std::vector<int>& cc, bool ind1=false);

    /** \brief Enlarge the matrix along the first dimension (i.e. insert rows) */
    void enlargeRows(int nrow, const std::vector<int>& rr, bool ind1=false);

    /** \brief Enlarge the matrix along the second dimension (i.e. insert columns) */
    void enlargeColumns(int ncol, const std::vector<int>& cc, bool ind1=false);

    /** \brief Make a patten dense */
    Sparsity makeDense(std::vector<int>& mapping) const;

    /** \brief Erase rows and/or columns of a matrix */
    std::vector<int> erase(const std::vector<int>& rr, const std::vector<int>& cc, bool ind1=false);

    /** \brief Erase elements of a matrix */
    std::vector<int> erase(const std::vector<int>& rr, bool ind1=false);

    /// Append another sparsity patten vertically (NOTE: only efficient if vector)
    void append(const Sparsity& sp);

    /// Append another sparsity patten horizontally
    void appendColumns(const Sparsity& sp);

    /// [DEPRECATED]: Reserve space
    void reserve(int nnz, int ncol) {
      casadi_warning("Sparsity::reserve: Deprecated function. Ignored.");
    }

    /// Is scalar?
    bool isscalar(bool scalar_and_dense=false) const;

    /// Is dense?
    bool isdense() const;

    /** \brief  Check if the pattern is a row vector (i.e. size1()==1) */
    bool isrow() const;

    /** \brief  Check if the pattern is a column vector (i.e. size2()==1) */
    bool iscolumn() const;

    /** \brief  Check if the pattern is a row or column vector */
    bool isvector() const;

    /// Is diagonal?
    bool isdiag() const;

    /// Is square?
    bool issquare() const;

    /// Is symmetric?
    bool issymmetric() const;

    /// Is upper triangular?
    bool istriu() const;

    /// Is lower triangular?
    bool istril() const;

    /// Check whether the sparsity-pattern indicates structural singularity
    bool issingular() const;

#if !defined(SWIG) || !defined(SWIGMATLAB)

    /// \cond INTERNAL
    /// Get upper triangular part
    Sparsity zz_triu(bool includeDiagonal=true) const;

    /// Get lower triangular part
    Sparsity zz_tril(bool includeDiagonal=true) const;
    /// \endcond
#endif // !defined(SWIG) || !defined(SWIGMATLAB)

    /** \brief Do the rows appear sequentially on each column
    *
    * \param[in] strictly if true, then do not allow multiple entries
    */
    bool rowsSequential(bool strictly=true) const;

    /** \brief Remove duplicate entries
    *
    * The same indices will be removed from the \a mapping vector,
    * which must have the same length as the number of nonzeros
    */
    void removeDuplicates(std::vector<int>& mapping);

/// \cond INTERNAL
#ifndef SWIG
    typedef CACHING_MULTIMAP<std::size_t, WeakRef> CachingMap;

    /// Cached sparsity patterns
    static CachingMap& getCache();

    /// (Dense) scalar
    static const Sparsity& getScalar();

    /// (Sparse) scalar
    static const Sparsity& getScalarSparse();

    /// Empty zero-by-zero
    static const Sparsity& getEmpty();

#endif //SWIG
/// \endcond

    /** \brief Calculate the elimination tree
        See Direct Methods for Sparse Linear Systems by Davis (2006).
        If the parameter ata is false, the algorithm is equivalent to Matlab's etree(A), except that
        the indices are zero-based. If ata is true, the algorithm is equivalent to Matlab's
        etree(A, 'row').
    */
    std::vector<int> eliminationTree(bool ata=false) const;

    /** \brief Depth-first search on the adjacency graph of the sparsity
        See Direct Methods for Sparse Linear Systems by Davis (2006).
    */
    int depthFirstSearch(int j, int top, std::vector<int>& xi, std::vector<int>& pstack,
                         const std::vector<int>& pinv, std::vector<bool>& marked) const;

    /** \brief Find the strongly connected components of the bigraph defined by the sparsity pattern
        of a square matrix

        See Direct Methods for Sparse Linear Systems by Davis (2006).
        Returns:
        - Number of components
        - Offset for each components (length: 1 + number of components)
        - Indices for each components, component i has indices
          index[offset[i]], ..., index[offset[i+1]]

        In the case that the matrix is symmetric, the result has a particular interpretation:
        Given a symmetric matrix A and
        n = A.stronglyConnectedComponents(p, r)

        => A[p, p] will appear block-diagonal with n blocks and
        with the indices of the block boundaries to be found in r.

    */
    int stronglyConnectedComponents(std::vector<int>& SWIG_OUTPUT(index),
                                    std::vector<int>& SWIG_OUTPUT(offset)) const;

    /** \brief Compute the Dulmage-Mendelsohn decomposition
        See Direct Methods for Sparse Linear Systems by Davis (2006).

        Dulmage-Mendelsohn will try to bring your matrix into lower block-triangular (LBT) form.
        It will not care about the distance of off-diagonal elements to the diagonal:
        there is no guarantee you will get a block-diagonal matrix if you supply a randomly
        permuted block-diagonal matrix.

        If your matrix is symmetrical, this method is of limited use; permutation can make it
        non-symmetric.

        \sa stronglyConnectedComponents

    */

    int dulmageMendelsohn(
        std::vector<int>& SWIG_OUTPUT(rowperm), std::vector<int>& SWIG_OUTPUT(colperm),
        std::vector<int>& SWIG_OUTPUT(rowblock), std::vector<int>& SWIG_OUTPUT(colblock),
        std::vector<int>& SWIG_OUTPUT(coarse_rowblock),
        std::vector<int>& SWIG_OUTPUT(coarse_colblock),
        int seed=0) const;

    /** \brief Get the location of all non-zero elements as they would appear in a Dense matrix
        A : DenseMatrix  4 x 3
        B : SparseMatrix 4 x 3 , 5 structural non-zeros

        k = A.find()
        A[k] will contain the elements of A that are non-zero in B
    */
    std::vector<int> find(bool ind1=SWIG_IND1) const;

#ifndef SWIG
    /// Get the location of all nonzero elements (inplace version)
    void find(std::vector<int>& loc, bool ind1=false) const;
#endif // SWIG

    /** \brief Perform a unidirectional coloring: A greedy distance-2 coloring algorithm
        (Algorithm 3.1 in A. H. GEBREMEDHIN, F. MANNE, A. POTHEN) */
    Sparsity unidirectionalColoring(const Sparsity& AT=Sparsity(),
                                    int cutoff = std::numeric_limits<int>::max()) const;

    /** \brief Perform a star coloring of a symmetric matrix:
        A greedy distance-2 coloring algorithm
        Algorithm 4.1 in
          What Color Is Your Jacobian? Graph Coloring for Computing Derivatives
          A. H. GEBREMEDHIN, F. MANNE, A. POTHEN
          SIAM Rev., 47(4), 629–705 (2006)

        Ordering options: None (0), largest first (1)
    */
    Sparsity starColoring(int ordering = 1, int cutoff = std::numeric_limits<int>::max()) const;

    /** \brief Perform a star coloring of a symmetric matrix:
        A new greedy distance-2 coloring algorithm
        Algorithm 4.1 in
          NEW ACYCLIC AND STAR COLORING ALGORITHMS WITH APPLICATION TO COMPUTING HESSIANS
          A. H. GEBREMEDHIN, A. TARAFDAR, F. MANNE, A. POTHEN
          SIAM J. SCI. COMPUT. Vol. 29, No. 3, pp. 1042–1072 (2007)

        Ordering options: None (0), largest first (1)
    */
    Sparsity starColoring2(int ordering = 1, int cutoff = std::numeric_limits<int>::max()) const;

    /** \brief Order the cols by decreasing degree */
    std::vector<int> largestFirstOrdering() const;

    /** \brief Permute rows and/or columns
        Multiply the sparsity with a permutation matrix from the left and/or from the right
        P * A * trans(P), A * trans(P) or A * trans(P) with P defined by an index vector
        containing the row for each col. As an alternative, P can be transposed (inverted).
    */
    Sparsity pmult(const std::vector<int>& p, bool permute_rows=true, bool permute_cols=true,
                   bool invert_permutation=false) const;

    /// Get the dimension as a string
    std::string dimString() const;

    /** \brief Print a textual representation of sparsity
     */
    void spy(std::ostream &stream=casadi::userOut()) const;

    /** \brief Generate a script for Matlab or Octave which visualizes
     * the sparsity using the spy command  */
    void spyMatlab(const std::string& mfile) const;

    /** \brief Print a compact description of the sparsity pattern */
    void printCompact(std::ostream &stream=casadi::userOut()) const;

    // Hash the sparsity pattern
    std::size_t hash() const;

    /// Check if a particular cast is allowed
    static bool testCast(const SharedObjectNode* ptr);

#ifndef SWIG
    /** \brief Assign the nonzero entries of one sparsity pattern to the nonzero
     * entries of another sparsity pattern */
    template<typename T>
    void set(T* data, const T* val_data, const Sparsity& val_sp) const;

    /** \brief Add the nonzero entries of one sparsity pattern to the nonzero entries
     * of another sparsity pattern */
    template<typename T>
    void add(T* data, const T* val_data, const Sparsity& val_sp) const;

    /** \brief Bitwise or of the nonzero entries of one sparsity pattern and the nonzero
     * entries of another sparsity pattern */
    template<typename T>
    void bor(T* data, const T* val_data, const Sparsity& val_sp) const;


  private:
    /// Construct a sparsity pattern from vectors, reuse cached pattern if possible
    void assignCached(int nrow, int ncol, const std::vector<int>& colind,
                      const std::vector<int>& row);

    /// Construct a sparsity pattern from vectors, reuse cached pattern if possible
    void assignCached(int nrow, int ncol, const int* colind, const int* row);

#endif //SWIG
  };

  /// \cond INTERNAL
  /** \brief Hash value of an integer */
  template<typename T>
  inline size_t hash_value(T v) { return size_t(v);}

  /** \brief Generate a hash value incrementally (function taken from boost) */
  template<typename T>
  inline void hash_combine(std::size_t& seed, T v) {
    seed ^= hash_value(v) + 0x9e3779b9 + (seed << 6) + (seed >> 2);
  }

  /** \brief Generate a hash value incrementally, array */
  inline void hash_combine(std::size_t& seed, const int* v, int sz) {
    for (int i=0; i<sz; ++i) hash_combine(seed, v[i]);
  }

  /** \brief Generate a hash value incrementally (function taken from boost) */
  inline void hash_combine(std::size_t& seed, const std::vector<int>& v) {
    hash_combine(seed, getPtr(v), v.size());
  }

  /** \brief Hash a sparsity pattern */
  CASADI_EXPORT std::size_t hash_sparsity(int nrow, int ncol,
                                          const std::vector<int>& colind,
                                          const std::vector<int>& row);

  CASADI_EXPORT std::size_t hash_sparsity(int nrow, int ncol,
                                          const int* colind,
                                          const int* row);
  /// \endcond

#ifndef SWIG
  // Template instantiations
  template<typename DataType>
  void Sparsity::set(DataType* data, const DataType* val_data, const Sparsity& val_sp) const {
    // Get dimensions of this
    const int sz = nnz();
    const int sz1 = size1();
    const int sz2 = size2();

    // Get dimensions of assigning matrix
    const int val_sz = val_sp.nnz();
    const int val_sz1 = val_sp.size1();
    const int val_sz2 = val_sp.size2();
    const int val_nel = val_sz1*val_sz2;

    // Check if sparsity matches
    if (val_sp==*this) {
      std::copy(val_data, val_data+sz, data);
    } else if (this->isempty()) {
      // Quick return
      return;
    } else if (val_sp.isempty()) {
      // Quick return
      return;
    } else if (val_nel==1) { // if scalar
      std::fill(data, data+sz, val_sz==0 ? DataType(0) : val_data[0]);
    } else if (sz2==val_sz2 && sz1==val_sz1) {
      // Matching dimensions
      // Sparsity
      const int* c = row();
      const int* rind = colind();
      const int* v_c = val_sp.row();
      const int* v_rind = val_sp.colind();

      // For all columns
      for (int i=0; i<sz2; ++i) {

        // Nonzero of the assigning matrix
        int v_el = v_rind[i];

        // First nonzero of the following column
        int v_el_end = v_rind[i+1];

        // Next row of the assigning matrix
        int v_j = v_el<v_el_end ? v_c[v_el] : sz1;

        // Assign all nonzeros
        for (int el=rind[i]; el!=rind[i+1]; ++el) {

          //  Get row
          int j=c[el];

          // Forward the assigning nonzero
          while (v_j<j) {
            v_el++;
            v_j = v_el<v_el_end ? v_c[v_el] : sz1;
          }

          // Assign nonzero
          if (v_j==j) {
            data[el] = val_data[v_el++];
            v_j = v_el<v_el_end ? v_c[v_el] : sz1;
          } else {
            data[el] = 0;
          }
        }
      }
    } else if (sz1==val_sz2 && sz2==val_sz1 && sz2 == 1) {
      // Assign transposed (this is column)
      const int* v_cind = val_sp.colind();
      const int* r = row();
      for (int el=0; el<sz; ++el) {
        int rr=r[el];
        data[el] = v_cind[rr]==v_cind[rr+1] ? 0 : val_data[v_cind[rr]];
      }
    } else if (sz1==val_sz2 && sz2==val_sz1 && sz1 == 1) {
      // Assign transposed (this is row)
      for (int el=0; el<sz; ++el) data[el] = 0;
      const int* cind = colind();
      const int* v_r = val_sp.row();
      for (int el=0; el<val_sz; ++el) {
        int rr=v_r[el];
        if (cind[rr]!=cind[rr+1]) {
          data[cind[rr]] = val_data[el];
        }
      }
    } else {
      // Make sure that dimension matches
      casadi_error("Sparsity::set<DataType>: shape mismatch. lhs is matrix of shape "
                   << dimString() << ", while rhs is shape " << val_sp.dimString() << ".");
    }
  }

  template<typename DataType>
  void Sparsity::add(DataType* data, const DataType* val_data, const Sparsity& val_sp) const {
    // Get dimensions of this
    const int sz = nnz();
    const int sz1 = size1();
    const int sz2 = size2();
    const int nel = sz1*sz2;

    // Get dimensions of assigning matrix
    const int val_sz = val_sp.nnz();
    const int val_sz1 = val_sp.size1();
    const int val_sz2 = val_sp.size2();
    const int val_nel = val_sz1*val_sz2;

    // Check if sparsity matches
    if (val_sp==*this) {
      for (int k=0; k<sz; ++k) {
        data[k] += val_data[k];
      }
    } else if (this->isempty()) {
      // Quick return
      return;
    } else if (val_sp.isempty()) {
      // Quick return
      return;
    }  else if (val_nel==1) { // if scalar
      if (val_sz!=0) {
        for (int k=0; k<sz; ++k) {
          data[k] += val_data[0];
        }
      }
    } else {
      // Quick return if empty
      if (nel==0 && val_nel==0) return;

      // Make sure that dimension matches
      casadi_assert_message(sz2==val_sz2 && sz1==val_sz1,
                            "Sparsity::add<DataType>: shape mismatch. lhs is matrix of shape "
                            << dimString() << ", while rhs is shape "
                            << val_sp.dimString() << ".");

      // Sparsity
      const int* c = row();
      const int* rind = colind();
      const int* v_c = val_sp.row();
      const int* v_rind = val_sp.colind();

      // For all cols
      for (int i=0; i<sz2; ++i) {

        // Nonzero of the assigning matrix
        int v_el = v_rind[i];

        // First nonzero of the following column
        int v_el_end = v_rind[i+1];

        // Next row of the assigning matrix
        int v_j = v_el<v_el_end ? v_c[v_el] : sz1;

        // Assign all nonzeros
        for (int el=rind[i]; el!=rind[i+1]; ++el) {

          //  Get row
          int j=c[el];

          // Forward the assigning nonzero
          while (v_j<j) {
            v_el++;
            v_j = v_el<v_el_end ? v_c[v_el] : sz1;
          }

          // Assign nonzero
          if (v_j==j) {
            data[el] += val_data[v_el++];
            v_j = v_el<v_el_end ? v_c[v_el] : sz1;
          }
        }
      }
    }
  }

  template<typename DataType>
  void Sparsity::bor(DataType* data, const DataType* val_data, const Sparsity& val_sp) const {
    // Get dimensions of this
    const int sz = nnz();
    const int sz1 = size1();
    const int sz2 = size2();
    const int nel = sz1*sz2;

    // Get dimensions of assigning matrix
    const int val_sz = val_sp.nnz();
    const int val_sz1 = val_sp.size1();
    const int val_sz2 = val_sp.size2();
    const int val_nel = val_sz1*val_sz2;

    // Check if sparsity matches
    if (val_sp==*this) {
      for (int k=0; k<sz; ++k) {
        data[k] |= val_data[k];
      }
    } else if (this->isempty()) {
      // Quick return
      return;
    } else if (val_sp.isempty()) {
      // Quick return
      return;
    }  else if (val_nel==1) { // if scalar
      if (val_sz!=0) {
        for (int k=0; k<sz; ++k) {
          data[k] |= val_data[0];
        }
      }
    } else {
      // Quick return if empty
      if (nel==0 && val_nel==0) return;

      // Make sure that dimension matches
      casadi_assert_message(sz2==val_sz2 && sz1==val_sz1,
                            "Sparsity::add<DataType>: shape mismatch. lhs is matrix of shape "
                            << dimString() << ", while rhs is shape " << val_sp.dimString() << ".");

      // Sparsity
      const int* c = row();
      const int* rind = colind();
      const int* v_c = val_sp.row();
      const int* v_rind = val_sp.colind();

      // For all columns
      for (int i=0; i<sz2; ++i) {

        // Nonzero of the assigning matrix
        int v_el = v_rind[i];

        // First nonzero of the following column
        int v_el_end = v_rind[i+1];

        // Next row of the assigning matrix
        int v_j = v_el<v_el_end ? v_c[v_el] : sz1;

        // Assign all nonzeros
        for (int el=rind[i]; el!=rind[i+1]; ++el) {

          //  Get row
          int j=c[el];

          // Forward the assigning nonzero
          while (v_j<j) {
            v_el++;
            v_j = v_el<v_el_end ? v_c[v_el] : sz1;
          }

          // Assign nonzero
          if (v_j==j) {
            data[el] |= val_data[v_el++];
            v_j = v_el<v_el_end ? v_c[v_el] : sz1;
          }
        }
      }
    }
  }

#endif //SWIG

  ///@{
  /// Readability typedefs
  typedef std::map<std::string, Sparsity> SparsityDict;
  ///@}

} // namespace casadi

#endif // CASADI_SPARSITY_HPP
