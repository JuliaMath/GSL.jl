#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_double.h ######################################################


@doc md"""
    matrix_alloc(n1, n2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_alloc (const size_t n1, const size_t n2)`

GSL documentation:

### `gsl_matrix * gsl_matrix_alloc (size_t n1, size_t n2)`

> This function creates a matrix of size `n1` rows by `n2` columns,
> returning a pointer to a newly initialized matrix struct. A new block
> is allocated for the elements of the matrix, and stored in the `block`
> component of the matrix struct. The block is "owned" by the matrix,
> and will be deallocated when the matrix is deallocated. Requesting
> zero for `n1` or `n2` is valid and returns a non-null result.

"""
function matrix_alloc(n1, n2)
    ccall((:gsl_matrix_alloc, libgsl), Ptr{gsl_matrix}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_calloc(n1, n2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_calloc (const size_t n1, const size_t n2)`

GSL documentation:

### `gsl_matrix * gsl_matrix_calloc (size_t n1, size_t n2)`

> This function allocates memory for a matrix of size `n1` rows by `n2`
> columns and initializes all the elements of the matrix to zero.

"""
function matrix_calloc(n1, n2)
    ccall((:gsl_matrix_calloc, libgsl), Ptr{gsl_matrix}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_alloc_from_block (gsl_block * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_alloc_from_block, libgsl), Ptr{gsl_matrix}, (Ref{gsl_block}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_alloc_from_matrix (gsl_matrix * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_alloc_from_matrix, libgsl), Ptr{gsl_matrix}, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_vector_alloc_row_from_matrix (gsl_matrix * m, const size_t i)`
"""
function vector_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_alloc_row_from_matrix, libgsl), Ptr{gsl_vector}, (Ref{gsl_matrix}, Csize_t), m, i)
end

@doc md"""
    vector_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_vector_alloc_col_from_matrix (gsl_matrix * m, const size_t j)`
"""
function vector_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_alloc_col_from_matrix, libgsl), Ptr{gsl_vector}, (Ref{gsl_matrix}, Csize_t), m, j)
end

@doc md"""
    matrix_free(m) -> Cvoid

C signature:
`void gsl_matrix_free (gsl_matrix * m)`

GSL documentation:

### `void gsl_matrix_free (gsl_matrix * m)`

> This function frees a previously allocated matrix `m`. If the matrix
> was created using `gsl_matrix_alloc` then the block underlying the
> matrix will also be deallocated. If the matrix has been created from
> another object then the memory is still owned by that object and will
> not be deallocated.

"""
function matrix_free(m)
    ccall((:gsl_matrix_free, libgsl), Cvoid, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_submatrix(m, i, j, n1, n2) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_submatrix (gsl_matrix * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`

GSL documentation:

### `gsl_matrix_view gsl_matrix_submatrix (gsl_matrix * m, size_t k1, size_t k2, size_t n1, size_t n2)`

> gsl\_matrix\_const\_view gsl\_matrix\_const\_submatrix (const
> gsl\_matrix \* m, size\_t k1, size\_t k2, size\_t n1, size\_t n2)

> These functions return a matrix view of a submatrix of the matrix `m`.
> The upper-left element of the submatrix is the element (`k1`, `k2`) of
> the original matrix. The submatrix has `n1` rows and `n2` columns. The
> physical number of columns in memory given by `tda` is unchanged.
> Mathematically, the $(i,j)$-th element of the new matrix is given by:
>
>     m'(i,j) = m->data[(k1*m->tda + k2) + i*m->tda + j]
>
> where the index `i` runs from 0 to `n1 - 1` and the index `j` runs
> from 0 to `n2 - 1`.
>
> The `data` pointer of the returned matrix struct is set to null if the
> combined parameters (`i`, `j`, `n1`, `n2`, `tda`) overrun the ends of
> the original matrix.
>
> The new matrix view is only a view of the block underlying the
> existing matrix, `m`. The block containing the elements of `m` is not
> owned by the new matrix view. When the view goes out of scope the
> original matrix `m` and its block will continue to exist. The original
> memory can only be deallocated by freeing the original matrix. Of
> course, the original matrix should not be deallocated while the view
> is still in use.
>
> The function `gsl_matrix_const_submatrix` is equivalent to
> `gsl_matrix_submatrix` but can be used for matrices which are declared
> `const`.

"""
function matrix_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_submatrix, libgsl), _gsl_matrix_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_row(m, i) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_row (gsl_matrix * m, const size_t i)`

GSL documentation:

### `gsl_vector_view gsl_matrix_row (gsl_matrix * m, size_t i)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_row (const gsl\_matrix \*
> m, size\_t i)

> These functions return a vector view of the `i`-th row of the matrix
> `m`. The `data` pointer of the new vector is set to null if `i` is out
> of range.
>
> The function `gsl_matrix_const_row` is equivalent to `gsl_matrix_row`
> but can be used for matrices which are declared `const`.

"""
function matrix_row(m, i)
    ccall((:gsl_matrix_row, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, i)
end

@doc md"""
    matrix_column(m, j) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_column (gsl_matrix * m, const size_t j)`

GSL documentation:

### `gsl_vector_view gsl_matrix_column (gsl_matrix * m, size_t j)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_column (const gsl\_matrix
> \* m, size\_t j)

> These functions return a vector view of the `j`-th column of the
> matrix `m`. The `data` pointer of the new vector is set to null if `j`
> is out of range.
>
> The function `gsl_matrix_const_column` is equivalent to
> `gsl_matrix_column` but can be used for matrices which are declared
> `const`.

"""
function matrix_column(m, j)
    ccall((:gsl_matrix_column, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, j)
end

@doc md"""
    matrix_diagonal(m) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_diagonal (gsl_matrix * m)`

GSL documentation:

### `gsl_vector_view gsl_matrix_diagonal (gsl_matrix * m)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_diagonal (const
> gsl\_matrix \* m)

> These functions return a vector view of the diagonal of the matrix
> `m`. The matrix `m` is not required to be square. For a rectangular
> matrix the length of the diagonal is the same as the smaller dimension
> of the matrix.
>
> The function `gsl_matrix_const_diagonal` is equivalent to
> `gsl_matrix_diagonal` but can be used for matrices which are declared
> `const`.

"""
function matrix_diagonal(m)
    ccall((:gsl_matrix_diagonal, libgsl), _gsl_vector_view, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_subdiagonal(m, k) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_subdiagonal (gsl_matrix * m, const size_t k)`

GSL documentation:

### `gsl_vector_view gsl_matrix_subdiagonal (gsl_matrix * m, size_t k)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_subdiagonal (const
> gsl\_matrix \* m, size\_t k)

> These functions return a vector view of the `k`-th subdiagonal of the
> matrix `m`. The matrix `m` is not required to be square. The diagonal
> of the matrix corresponds to $k = 0$.
>
> The function `gsl_matrix_const_subdiagonal` is equivalent to
> `gsl_matrix_subdiagonal` but can be used for matrices which are
> declared `const`.

"""
function matrix_subdiagonal(m, k)
    ccall((:gsl_matrix_subdiagonal, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

@doc md"""
    matrix_superdiagonal(m, k) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_superdiagonal (gsl_matrix * m, const size_t k)`

GSL documentation:

### `gsl_vector_view gsl_matrix_superdiagonal (gsl_matrix * m, size_t k)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_superdiagonal (const
> gsl\_matrix \* m, size\_t k)

> These functions return a vector view of the `k`-th superdiagonal of
> the matrix `m`. The matrix `m` is not required to be square. The
> diagonal of the matrix corresponds to $k = 0$.
>
> The function `gsl_matrix_const_superdiagonal` is equivalent to
> `gsl_matrix_superdiagonal` but can be used for matrices which are
> declared `const`.

"""
function matrix_superdiagonal(m, k)
    ccall((:gsl_matrix_superdiagonal, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

@doc md"""
    matrix_subrow(m, i, offset, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_subrow (gsl_matrix * m, const size_t i, const size_t offset, const size_t n)`

GSL documentation:

### `gsl_vector_view gsl_matrix_subrow (gsl_matrix * m, size_t i, size_t offset, size_t n)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_subrow (const gsl\_matrix
> \* m, size\_t i, size\_t offset, size\_t n)

> These functions return a vector view of the `i`-th row of the matrix
> `m` beginning at `offset` elements past the first column and
> containing `n` elements. The `data` pointer of the new vector is set
> to null if `i`, `offset`, or `n` are out of range.
>
> The function `gsl_matrix_const_subrow` is equivalent to
> `gsl_matrix_subrow` but can be used for matrices which are declared
> `const`.

"""
function matrix_subrow(m, i, offset, n)
    ccall((:gsl_matrix_subrow, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_subcolumn(m, j, offset, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_subcolumn (gsl_matrix * m, const size_t j, const size_t offset, const size_t n)`

GSL documentation:

### `gsl_vector_view gsl_matrix_subcolumn (gsl_matrix * m, size_t j, size_t offset, size_t n)`

> gsl\_vector\_const\_view gsl\_matrix\_const\_subcolumn (const
> gsl\_matrix \* m, size\_t j, size\_t offset, size\_t n)

> These functions return a vector view of the `j`-th column of the
> matrix `m` beginning at `offset` elements past the first row and
> containing `n` elements. The `data` pointer of the new vector is set
> to null if `j`, `offset`, or `n` are out of range.
>
> The function `gsl_matrix_const_subcolumn` is equivalent to
> `gsl_matrix_subcolumn` but can be used for matrices which are declared
> `const`.

"""
function matrix_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_subcolumn, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_view_array(base, n1, n2) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_array (double * base, const size_t n1, const size_t n2)`

GSL documentation:

### `gsl_matrix_view gsl_matrix_view_array (double * base, size_t n1, size_t n2)`

> gsl\_matrix\_const\_view gsl\_matrix\_const\_view\_array (const double
> \* base, size\_t n1, size\_t n2)

> These functions return a matrix view of the array `base`. The matrix
> has `n1` rows and `n2` columns. The physical number of columns in
> memory is also given by `n2`. Mathematically, the $(i,j)$-th element
> of the new matrix is given by:
>
>     m'(i,j) = base[i*n2 + j]
>
> where the index `i` runs from 0 to `n1 - 1` and the index `j` runs
> from 0 to `n2 - 1`.
>
> The new matrix is only a view of the array `base`. When the view goes
> out of scope the original array `base` will continue to exist. The
> original memory can only be deallocated by freeing the original array.
> Of course, the original array should not be deallocated while the view
> is still in use.
>
> The function `gsl_matrix_const_view_array` is equivalent to
> `gsl_matrix_view_array` but can be used for matrices which are
> declared `const`.

"""
function matrix_view_array(base, n1, n2)
    ccall((:gsl_matrix_view_array, libgsl), _gsl_matrix_view, (Ref{Cdouble}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_array_with_tda (double * base, const size_t n1, const size_t n2, const size_t tda)`

GSL documentation:

### `gsl_matrix_view gsl_matrix_view_array_with_tda (double * base, size_t n1, size_t n2, size_t tda)`

> gsl\_matrix\_const\_view gsl\_matrix\_const\_view\_array\_with\_tda
> (const double \* base, size\_t n1, size\_t n2, size\_t tda)

> These functions return a matrix view of the array `base` with a
> physical number of columns `tda` which may differ from the
> corresponding dimension of the matrix. The matrix has `n1` rows and
> `n2` columns, and the physical number of columns in memory is given by
> `tda`. Mathematically, the $(i,j)$-th element of the new matrix is
> given by:
>
>     m'(i,j) = base[i*tda + j]
>
> where the index `i` runs from 0 to `n1 - 1` and the index `j` runs
> from 0 to `n2 - 1`.
>
> The new matrix is only a view of the array `base`. When the view goes
> out of scope the original array `base` will continue to exist. The
> original memory can only be deallocated by freeing the original array.
> Of course, the original array should not be deallocated while the view
> is still in use.
>
> The function `gsl_matrix_const_view_array_with_tda` is equivalent to
> `gsl_matrix_view_array_with_tda` but can be used for matrices which
> are declared `const`.

"""
function matrix_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_view_array_with_tda, libgsl), _gsl_matrix_view, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_view_vector(v, n1, n2) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_vector (gsl_vector * v, const size_t n1, const size_t n2)`

GSL documentation:

### `gsl_matrix_view gsl_matrix_view_vector (gsl_vector * v, size_t n1, size_t n2)`

> gsl\_matrix\_const\_view gsl\_matrix\_const\_view\_vector (const
> gsl\_vector \* v, size\_t n1, size\_t n2)

> These functions return a matrix view of the vector `v`. The matrix has
> `n1` rows and `n2` columns. The vector must have unit stride. The
> physical number of columns in memory is also given by `n2`.
> Mathematically, the $(i,j)$-th element of the new matrix is given by:
>
>     m'(i,j) = v->data[i*n2 + j]
>
> where the index `i` runs from 0 to `n1 - 1` and the index `j` runs
> from 0 to `n2 - 1`.
>
> The new matrix is only a view of the vector `v`. When the view goes
> out of scope the original vector `v` will continue to exist. The
> original memory can only be deallocated by freeing the original
> vector. Of course, the original vector should not be deallocated while
> the view is still in use.
>
> The function `gsl_matrix_const_view_vector` is equivalent to
> `gsl_matrix_view_vector` but can be used for matrices which are
> declared `const`.

"""
function matrix_view_vector(v, n1, n2)
    ccall((:gsl_matrix_view_vector, libgsl), _gsl_matrix_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_vector_with_tda (gsl_vector * v, const size_t n1, const size_t n2, const size_t tda)`

GSL documentation:

### `gsl_matrix_view gsl_matrix_view_vector_with_tda (gsl_vector * v, size_t n1, size_t n2, size_t tda)`

> gsl\_matrix\_const\_view gsl\_matrix\_const\_view\_vector\_with\_tda
> (const gsl\_vector \* v, size\_t n1, size\_t n2, size\_t tda)

> These functions return a matrix view of the vector `v` with a physical
> number of columns `tda` which may differ from the corresponding matrix
> dimension. The vector must have unit stride. The matrix has `n1` rows
> and `n2` columns, and the physical number of columns in memory is
> given by `tda`. Mathematically, the $(i,j)$-th element of the new
> matrix is given by:
>
>     m'(i,j) = v->data[i*tda + j]
>
> where the index `i` runs from 0 to `n1 - 1` and the index `j` runs
> from 0 to `n2 - 1`.
>
> The new matrix is only a view of the vector `v`. When the view goes
> out of scope the original vector `v` will continue to exist. The
> original memory can only be deallocated by freeing the original
> vector. Of course, the original vector should not be deallocated while
> the view is still in use.
>
> The function `gsl_matrix_const_view_vector_with_tda` is equivalent to
> `gsl_matrix_view_vector_with_tda` but can be used for matrices which
> are declared `const`.

"""
function matrix_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_view_vector_with_tda, libgsl), _gsl_matrix_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_submatrix (const gsl_matrix * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_const_submatrix, libgsl), _gsl_matrix_const_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_const_row(m, i) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_row (const gsl_matrix * m, const size_t i)`
"""
function matrix_const_row(m, i)
    ccall((:gsl_matrix_const_row, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, i)
end

@doc md"""
    matrix_const_column(m, j) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_column (const gsl_matrix * m, const size_t j)`
"""
function matrix_const_column(m, j)
    ccall((:gsl_matrix_const_column, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, j)
end

@doc md"""
    matrix_const_diagonal(m) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_diagonal (const gsl_matrix * m)`
"""
function matrix_const_diagonal(m)
    ccall((:gsl_matrix_const_diagonal, libgsl), _gsl_vector_const_view, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_const_subdiagonal(m, k) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_subdiagonal (const gsl_matrix * m, const size_t k)`
"""
function matrix_const_subdiagonal(m, k)
    ccall((:gsl_matrix_const_subdiagonal, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

@doc md"""
    matrix_const_superdiagonal(m, k) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_superdiagonal (const gsl_matrix * m, const size_t k)`
"""
function matrix_const_superdiagonal(m, k)
    ccall((:gsl_matrix_const_superdiagonal, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

@doc md"""
    matrix_const_subrow(m, i, offset, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_subrow (const gsl_matrix * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_const_subrow, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_const_subcolumn(m, j, offset, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_subcolumn (const gsl_matrix * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_const_subcolumn, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_const_view_array(base, n1, n2) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_array (const double * base, const size_t n1, const size_t n2)`
"""
function matrix_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_const_view_array, libgsl), _gsl_matrix_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_array_with_tda (const double * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_const_view_array_with_tda, libgsl), _gsl_matrix_const_view, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_const_view_vector(v, n1, n2) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_vector (const gsl_vector * v, const size_t n1, const size_t n2)`
"""
function matrix_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_const_view_vector, libgsl), _gsl_matrix_const_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_vector_with_tda (const gsl_vector * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_const_view_vector_with_tda, libgsl), _gsl_matrix_const_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_set_zero (gsl_matrix * m)`

GSL documentation:

### `void gsl_matrix_set_zero (gsl_matrix * m)`

> This function sets all the elements of the matrix `m` to zero.

"""
function matrix_set_zero(m)
    ccall((:gsl_matrix_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_set_identity (gsl_matrix * m)`

GSL documentation:

### `void gsl_matrix_set_identity (gsl_matrix * m)`

> This function sets the elements of the matrix `m` to the corresponding
> elements of the identity matrix, $m(i,j) = \delta(i,j)$, i.e. a unit
> diagonal with all off-diagonal elements zero. This applies to both
> square and rectangular matrices.

"""
function matrix_set_identity(m)
    ccall((:gsl_matrix_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_set_all (gsl_matrix * m, double x)`

GSL documentation:

### `void gsl_matrix_set_all (gsl_matrix * m, double x)`

> This function sets all the elements of the matrix `m` to the value
> `x`.

"""
function matrix_set_all(m, x)
    ccall((:gsl_matrix_set_all, libgsl), Cvoid, (Ref{gsl_matrix}, Cdouble), m, x)
end

@doc md"""
    matrix_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_fread (FILE * stream, gsl_matrix * m)`

GSL documentation:

### `int gsl_matrix_fread (FILE * stream, gsl_matrix * m)`

> This function reads into the matrix `m` from the open stream `stream`
> in binary format. The matrix `m` must be preallocated with the correct
> dimensions since the function uses the size of `m` to determine how
> many bytes to read. The return value is 0 for success and
> `GSL_EFAILED` if there was a problem reading from the file. The data
> is assumed to have been written in the native binary format on the
> same architecture.

"""
function matrix_fread(stream, m)
    ccall((:gsl_matrix_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}), stream, m)
end

@doc md"""
    matrix_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_fwrite (FILE * stream, const gsl_matrix * m)`

GSL documentation:

### `int gsl_matrix_fwrite (FILE * stream, const gsl_matrix * m)`

> This function writes the elements of the matrix `m` to the stream
> `stream` in binary format. The return value is 0 for success and
> `GSL_EFAILED` if there was a problem writing to the file. Since the
> data is written in the native binary format it may not be portable
> between different architectures.

"""
function matrix_fwrite(stream, m)
    ccall((:gsl_matrix_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}), stream, m)
end

@doc md"""
    matrix_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_fscanf (FILE * stream, gsl_matrix * m)`

GSL documentation:

### `int gsl_matrix_fscanf (FILE * stream, gsl_matrix * m)`

> This function reads formatted data from the stream `stream` into the
> matrix `m`. The matrix `m` must be preallocated with the correct
> dimensions since the function uses the size of `m` to determine how
> many numbers to read. The function returns 0 for success and
> `GSL_EFAILED` if there was a problem reading from the file.

"""
function matrix_fscanf(stream, m)
    ccall((:gsl_matrix_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}), stream, m)
end

@doc md"""
    matrix_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_fprintf (FILE * stream, const gsl_matrix * m, const char * format)`

GSL documentation:

### `int gsl_matrix_fprintf (FILE * stream, const gsl_matrix * m, const char * format)`

> This function writes the elements of the matrix `m` line-by-line to
> the stream `stream` using the format specifier `format`, which should
> be one of the `%g`, `%e` or `%f` formats for floating point numbers
> and `%d` for integers. The function returns 0 for success and
> `GSL_EFAILED` if there was a problem writing to the file.

"""
function matrix_fprintf(stream, m, format)
    ccall((:gsl_matrix_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_memcpy(gsl_matrix * dest, const gsl_matrix * src)`

GSL documentation:

### `int gsl_matrix_memcpy (gsl_matrix * dest, const gsl_matrix * src)`

> This function copies the elements of the matrix `src` into the matrix
> `dest`. The two matrices must have the same size.

"""
function matrix_memcpy(dest, src)
    ccall((:gsl_matrix_memcpy, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), dest, src)
end

@doc md"""
    matrix_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_swap(gsl_matrix * m1, gsl_matrix * m2)`

GSL documentation:

### `int gsl_matrix_swap (gsl_matrix * m1, gsl_matrix * m2)`

> This function exchanges the elements of the matrices `m1` and `m2` by
> copying. The two matrices must have the same size.

"""
function matrix_swap(m1, m2)
    ccall((:gsl_matrix_swap, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), m1, m2)
end

@doc md"""
    matrix_tricpy(Uplo, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_tricpy(CBLAS_UPLO_t Uplo, CBLAS_DIAG_t Diag, gsl_matrix * dest, const gsl_matrix * src)`
"""
function matrix_tricpy(Uplo, Diag, dest, src)
    ccall((:gsl_matrix_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix}, Ref{gsl_matrix}), Uplo, Diag, dest, src)
end

@doc md"""
    matrix_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_swap_rows(gsl_matrix * m, const size_t i, const size_t j)`

GSL documentation:

### `int gsl_matrix_swap_rows (gsl_matrix * m, size_t i, size_t j)`

> This function exchanges the `i`-th and `j`-th rows of the matrix `m`
> in-place.

"""
function matrix_swap_rows(m, i, j)
    ccall((:gsl_matrix_swap_rows, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_swap_columns(gsl_matrix * m, const size_t i, const size_t j)`

GSL documentation:

### `int gsl_matrix_swap_columns (gsl_matrix * m, size_t i, size_t j)`

> This function exchanges the `i`-th and `j`-th columns of the matrix
> `m` in-place.

"""
function matrix_swap_columns(m, i, j)
    ccall((:gsl_matrix_swap_columns, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_swap_rowcol(gsl_matrix * m, const size_t i, const size_t j)`

GSL documentation:

### `int gsl_matrix_swap_rowcol (gsl_matrix * m, size_t i, size_t j)`

> This function exchanges the `i`-th row and `j`-th column of the matrix
> `m` in-place. The matrix must be square for this operation to be
> possible.

"""
function matrix_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_transpose(m) -> Cint

C signature:
`int gsl_matrix_transpose (gsl_matrix * m)`

GSL documentation:

### `int gsl_matrix_transpose (gsl_matrix * m)`

> This function replaces the matrix `m` by its transpose by copying the
> elements of the matrix in-place. The matrix must be square for this
> operation to be possible.

"""
function matrix_transpose(m)
    ccall((:gsl_matrix_transpose, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_transpose_memcpy (gsl_matrix * dest, const gsl_matrix * src)`

GSL documentation:

### `int gsl_matrix_transpose_memcpy (gsl_matrix * dest, const gsl_matrix * src)`

> This function makes the matrix `dest` the transpose of the matrix
> `src` by copying the elements of `src` into `dest`. This function
> works for all matrices provided that the dimensions of the matrix
> `dest` match the transposed dimensions of the matrix `src`.

"""
function matrix_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), dest, src)
end

@doc md"""
    matrix_transpose_tricpy(Uplo_src, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_transpose_tricpy (CBLAS_UPLO_t Uplo_src, CBLAS_DIAG_t Diag, gsl_matrix * dest, const gsl_matrix * src)`
"""
function matrix_transpose_tricpy(Uplo_src, Diag, dest, src)
    ccall((:gsl_matrix_transpose_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix}, Ref{gsl_matrix}), Uplo_src, Diag, dest, src)
end

@doc md"""
    matrix_max(m) -> Cdouble

C signature:
`double gsl_matrix_max (const gsl_matrix * m)`

GSL documentation:

### `double gsl_matrix_max (const gsl_matrix * m)`

> This function returns the maximum value in the matrix `m`.

"""
function matrix_max(m)
    ccall((:gsl_matrix_max, libgsl), Cdouble, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_min(m) -> Cdouble

C signature:
`double gsl_matrix_min (const gsl_matrix * m)`

GSL documentation:

### `double gsl_matrix_min (const gsl_matrix * m)`

> This function returns the minimum value in the matrix `m`.

"""
function matrix_min(m)
    ccall((:gsl_matrix_min, libgsl), Cdouble, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_minmax (const gsl_matrix * m, double * min_out, double * max_out)`

GSL documentation:

### `void gsl_matrix_minmax (const gsl_matrix * m, double * min_out, double * max_out)`

> This function returns the minimum and maximum values in the matrix
> `m`, storing them in `min_out` and `max_out`.

"""
function matrix_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_minmax, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}), m, min_out, max_out)
end

@doc md"""
    matrix_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_max_index (const gsl_matrix * m, size_t * imax, size_t *jmax)`

GSL documentation:

### `void gsl_matrix_max_index (const gsl_matrix * m, size_t * imax, size_t * jmax)`

> This function returns the indices of the maximum value in the matrix
> `m`, storing them in `imax` and `jmax`. When there are several equal
> maximum elements then the first element found is returned, searching
> in row-major order.

"""
function matrix_max_index(m, imax, jmax)
    ccall((:gsl_matrix_max_index, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_min_index (const gsl_matrix * m, size_t * imin, size_t *jmin)`

GSL documentation:

### `void gsl_matrix_min_index (const gsl_matrix * m, size_t * imin, size_t * jmin)`

> This function returns the indices of the minimum value in the matrix
> `m`, storing them in `imin` and `jmin`. When there are several equal
> minimum elements then the first element found is returned, searching
> in row-major order.

"""
function matrix_min_index(m, imin, jmin)
    ccall((:gsl_matrix_min_index, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_minmax_index (const gsl_matrix * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`

GSL documentation:

### `void gsl_matrix_minmax_index (const gsl_matrix * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`

> This function returns the indices of the minimum and maximum values in
> the matrix `m`, storing them in (`imin`, `jmin`) and (`imax`, `jmax`).
> When there are several equal minimum or maximum elements then the
> first elements found are returned, searching in row-major order.

"""
function matrix_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_equal(a, b) -> Cint

C signature:
`int gsl_matrix_equal (const gsl_matrix * a, const gsl_matrix * b)`

GSL documentation:

### `int gsl_matrix_equal (const gsl_matrix * a, const gsl_matrix * b)`

> This function returns 1 if the matrices `a` and `b` are equal (by
> comparison of element values) and 0 otherwise.

"""
function matrix_equal(a, b)
    ccall((:gsl_matrix_equal, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

@doc md"""
    matrix_isnull(m) -> Cint

C signature:
`int gsl_matrix_isnull (const gsl_matrix * m)`

GSL documentation:

### `int gsl_matrix_isnull (const gsl_matrix * m)`

> int gsl\_matrix\_ispos (const gsl\_matrix \* m) int gsl\_matrix\_isneg
> (const gsl\_matrix \* m) int gsl\_matrix\_isnonneg (const gsl\_matrix
> \* m)

> These functions return 1 if all the elements of the matrix `m` are
> zero, strictly positive, strictly negative, or non-negative
> respectively, and 0 otherwise. To test whether a matrix is
> positive-definite, use the
> `Cholesky decomposition <sec_cholesky-decomposition>`.

"""
function matrix_isnull(m)
    ccall((:gsl_matrix_isnull, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_ispos(m) -> Cint

C signature:
`int gsl_matrix_ispos (const gsl_matrix * m)`
"""
function matrix_ispos(m)
    ccall((:gsl_matrix_ispos, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_isneg(m) -> Cint

C signature:
`int gsl_matrix_isneg (const gsl_matrix * m)`
"""
function matrix_isneg(m)
    ccall((:gsl_matrix_isneg, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_isnonneg (const gsl_matrix * m)`
"""
function matrix_isnonneg(m)
    ccall((:gsl_matrix_isnonneg, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

@doc md"""
    matrix_add(a, b) -> Cint

C signature:
`int gsl_matrix_add (gsl_matrix * a, const gsl_matrix * b)`

GSL documentation:

### `int gsl_matrix_add (gsl_matrix * a, const gsl_matrix * b)`

> This function adds the elements of matrix `b` to the elements of
> matrix `a`. The result $a(i,j) \leftarrow a(i,j) + b(i,j)$ is stored
> in `a` and `b` remains unchanged. The two matrices must have the same
> dimensions.

"""
function matrix_add(a, b)
    ccall((:gsl_matrix_add, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

@doc md"""
    matrix_sub(a, b) -> Cint

C signature:
`int gsl_matrix_sub (gsl_matrix * a, const gsl_matrix * b)`

GSL documentation:

### `int gsl_matrix_sub (gsl_matrix * a, const gsl_matrix * b)`

> This function subtracts the elements of matrix `b` from the elements
> of matrix `a`. The result $a(i,j) \leftarrow a(i,j) - b(i,j)$ is
> stored in `a` and `b` remains unchanged. The two matrices must have
> the same dimensions.

"""
function matrix_sub(a, b)
    ccall((:gsl_matrix_sub, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

@doc md"""
    matrix_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_mul_elements (gsl_matrix * a, const gsl_matrix * b)`

GSL documentation:

### `int gsl_matrix_mul_elements (gsl_matrix * a, const gsl_matrix * b)`

> This function multiplies the elements of matrix `a` by the elements of
> matrix `b`. The result $a(i,j) \leftarrow a(i,j) * b(i,j)$ is stored
> in `a` and `b` remains unchanged. The two matrices must have the same
> dimensions.

"""
function matrix_mul_elements(a, b)
    ccall((:gsl_matrix_mul_elements, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

@doc md"""
    matrix_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_div_elements (gsl_matrix * a, const gsl_matrix * b)`

GSL documentation:

### `int gsl_matrix_div_elements (gsl_matrix * a, const gsl_matrix * b)`

> This function divides the elements of matrix `a` by the elements of
> matrix `b`. The result $a(i,j) \leftarrow a(i,j) / b(i,j)$ is stored
> in `a` and `b` remains unchanged. The two matrices must have the same
> dimensions.

"""
function matrix_div_elements(a, b)
    ccall((:gsl_matrix_div_elements, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

@doc md"""
    matrix_scale(a, x) -> Cint

C signature:
`int gsl_matrix_scale (gsl_matrix * a, const double x)`

GSL documentation:

### `int gsl_matrix_scale (gsl_matrix * a, const double x)`

> This function multiplies the elements of matrix `a` by the constant
> factor `x`. The result $a(i,j) \leftarrow x a(i,j)$ is stored in `a`.

"""
function matrix_scale(a, x)
    ccall((:gsl_matrix_scale, libgsl), Cint, (Ref{gsl_matrix}, Cdouble), a, x)
end

@doc md"""
    matrix_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_add_constant (gsl_matrix * a, const double x)`

GSL documentation:

### `int gsl_matrix_add_constant (gsl_matrix * a, const double x)`

> This function adds the constant value `x` to the elements of the
> matrix `a`. The result $a(i,j) \leftarrow a(i,j) + x$ is stored in
> `a`.

"""
function matrix_add_constant(a, x)
    ccall((:gsl_matrix_add_constant, libgsl), Cint, (Ref{gsl_matrix}, Cdouble), a, x)
end

@doc md"""
    matrix_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_add_diagonal (gsl_matrix * a, const double x)`
"""
function matrix_add_diagonal(a, x)
    ccall((:gsl_matrix_add_diagonal, libgsl), Cint, (Ref{gsl_matrix}, Cdouble), a, x)
end

@doc md"""
    matrix_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_get_row(gsl_vector * v, const gsl_matrix * m, const size_t i)`

GSL documentation:

### `int gsl_matrix_get_row (gsl_vector * v, const gsl_matrix * m, size_t i)`

> This function copies the elements of the `i`-th row of the matrix `m`
> into the vector `v`. The length of the vector must be the same as the
> length of the row.

"""
function matrix_get_row(v, m, i)
    ccall((:gsl_matrix_get_row, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Csize_t), v, m, i)
end

@doc md"""
    matrix_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_get_col(gsl_vector * v, const gsl_matrix * m, const size_t j)`

GSL documentation:

### `int gsl_matrix_get_col (gsl_vector * v, const gsl_matrix * m, size_t j)`

> This function copies the elements of the `j`-th column of the matrix
> `m` into the vector `v`. The length of the vector must be the same as
> the length of the column.

"""
function matrix_get_col(v, m, j)
    ccall((:gsl_matrix_get_col, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Csize_t), v, m, j)
end

@doc md"""
    matrix_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_set_row(gsl_matrix * m, const size_t i, const gsl_vector * v)`

GSL documentation:

### `int gsl_matrix_set_row (gsl_matrix * m, size_t i, const gsl_vector * v)`

> This function copies the elements of the vector `v` into the `i`-th
> row of the matrix `m`. The length of the vector must be the same as
> the length of the row.

"""
function matrix_set_row(m, i, v)
    ccall((:gsl_matrix_set_row, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Ref{gsl_vector}), m, i, v)
end

@doc md"""
    matrix_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_set_col(gsl_matrix * m, const size_t j, const gsl_vector * v)`

GSL documentation:

### `int gsl_matrix_set_col (gsl_matrix * m, size_t j, const gsl_vector * v)`

> This function copies the elements of the vector `v` into the `j`-th
> column of the matrix `m`. The length of the vector must be the same as
> the length of the column.

"""
function matrix_set_col(m, j, v)
    ccall((:gsl_matrix_set_col, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Ref{gsl_vector}), m, j, v)
end

@doc md"""
    matrix_get(m, i, j) -> Cdouble

C signature:
`double gsl_matrix_get(const gsl_matrix * m, const size_t i, const size_t j)`

GSL documentation:

### `double gsl_matrix_get (const gsl_matrix * m, const size_t i, const size_t j)`

> This function returns the $(i,j)$-th element of a matrix `m`. If `i`
> or `j` lie outside the allowed range of 0 to `n1 - 1` and 0 to
> `n2 - 1` then the error handler is invoked and 0 is returned.

"""
function matrix_get(m, i, j)
    ccall((:gsl_matrix_get, libgsl), Cdouble, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_set(gsl_matrix * m, const size_t i, const size_t j, const double x)`

GSL documentation:

### `void gsl_matrix_set (gsl_matrix * m, const size_t i, const size_t j, double x)`

> This function sets the value of the $(i,j)$-th element of a matrix `m`
> to `x`. If `i` or `j` lies outside the allowed range of 0 to `n1 - 1`
> and 0 to `n2 - 1` then the error handler is invoked.

"""
function matrix_set(m, i, j, x)
    ccall((:gsl_matrix_set, libgsl), Cvoid, (Ref{gsl_matrix}, Csize_t, Csize_t, Cdouble), m, i, j, x)
end

@doc md"""
    matrix_ptr(m, i, j) -> Ptr{Cdouble}

C signature:
`double * gsl_matrix_ptr(gsl_matrix * m, const size_t i, const size_t j)`

GSL documentation:

### `double * gsl_matrix_ptr (gsl_matrix * m, size_t i, size_t j)`

> const double \* gsl\_matrix\_const\_ptr (const gsl\_matrix \* m,
> size\_t i, size\_t j)

> These functions return a pointer to the $(i,j)$-th element of a matrix
> `m`. If `i` or `j` lie outside the allowed range of 0 to `n1 - 1` and
> 0 to `n2 - 1` then the error handler is invoked and a null pointer is
> returned.

"""
function matrix_ptr(m, i, j)
    ccall((:gsl_matrix_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_const_ptr(m, i, j) -> Ptr{Cdouble}

C signature:
`const double * gsl_matrix_const_ptr(const gsl_matrix * m, const size_t i, const size_t j)`
"""
function matrix_const_ptr(m, i, j)
    ccall((:gsl_matrix_const_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

