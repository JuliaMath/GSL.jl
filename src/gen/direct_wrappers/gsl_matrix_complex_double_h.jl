#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_complex_double.h ##############################################


@doc md"""
    matrix_complex_alloc(n1, n2) -> Ptr{gsl_matrix_complex}

C signature:
`gsl_matrix_complex * gsl_matrix_complex_alloc (const size_t n1, const size_t n2)`
"""
function matrix_complex_alloc(n1, n2)
    ccall((:gsl_matrix_complex_alloc, libgsl), Ptr{gsl_matrix_complex}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_complex_calloc(n1, n2) -> Ptr{gsl_matrix_complex}

C signature:
`gsl_matrix_complex * gsl_matrix_complex_calloc (const size_t n1, const size_t n2)`
"""
function matrix_complex_calloc(n1, n2)
    ccall((:gsl_matrix_complex_calloc, libgsl), Ptr{gsl_matrix_complex}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_complex_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_complex}

C signature:
`gsl_matrix_complex * gsl_matrix_complex_alloc_from_block (gsl_block_complex * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_complex_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_complex_alloc_from_block, libgsl), Ptr{gsl_matrix_complex}, (Ref{gsl_block_complex}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_complex_alloc_from_matrix(b, k1, k2, n1, n2) -> Ptr{gsl_matrix_complex}

C signature:
`gsl_matrix_complex * gsl_matrix_complex_alloc_from_matrix (gsl_matrix_complex * b, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_complex_alloc_from_matrix(b, k1, k2, n1, n2)
    ccall((:gsl_matrix_complex_alloc_from_matrix, libgsl), Ptr{gsl_matrix_complex}, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t, Csize_t), b, k1, k2, n1, n2)
end

@doc md"""
    vector_complex_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_complex}

C signature:
`gsl_vector_complex * gsl_vector_complex_alloc_row_from_matrix (gsl_matrix_complex * m, const size_t i)`
"""
function vector_complex_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_complex_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_complex}, (Ref{gsl_matrix_complex}, Csize_t), m, i)
end

@doc md"""
    vector_complex_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_complex}

C signature:
`gsl_vector_complex * gsl_vector_complex_alloc_col_from_matrix (gsl_matrix_complex * m, const size_t j)`
"""
function vector_complex_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_complex_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_complex}, (Ref{gsl_matrix_complex}, Csize_t), m, j)
end

@doc md"""
    matrix_complex_free(m) -> Cvoid

C signature:
`void gsl_matrix_complex_free (gsl_matrix_complex * m)`
"""
function matrix_complex_free(m)
    ccall((:gsl_matrix_complex_free, libgsl), Cvoid, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_submatrix(m, i, j, n1, n2) -> _gsl_matrix_complex_view

C signature:
`_gsl_matrix_complex_view gsl_matrix_complex_submatrix (gsl_matrix_complex * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_complex_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_complex_submatrix, libgsl), _gsl_matrix_complex_view, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_complex_row(m, i) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_row (gsl_matrix_complex * m, const size_t i)`
"""
function matrix_complex_row(m, i)
    ccall((:gsl_matrix_complex_row, libgsl), _gsl_vector_complex_view, (Ref{gsl_matrix_complex}, Csize_t), m, i)
end

@doc md"""
    matrix_complex_column(m, j) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_column (gsl_matrix_complex * m, const size_t j)`
"""
function matrix_complex_column(m, j)
    ccall((:gsl_matrix_complex_column, libgsl), _gsl_vector_complex_view, (Ref{gsl_matrix_complex}, Csize_t), m, j)
end

@doc md"""
    matrix_complex_diagonal(m) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_diagonal (gsl_matrix_complex * m)`
"""
function matrix_complex_diagonal(m)
    ccall((:gsl_matrix_complex_diagonal, libgsl), _gsl_vector_complex_view, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_subdiagonal(m, k) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_subdiagonal (gsl_matrix_complex * m, const size_t k)`
"""
function matrix_complex_subdiagonal(m, k)
    ccall((:gsl_matrix_complex_subdiagonal, libgsl), _gsl_vector_complex_view, (Ref{gsl_matrix_complex}, Csize_t), m, k)
end

@doc md"""
    matrix_complex_superdiagonal(m, k) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_superdiagonal (gsl_matrix_complex * m, const size_t k)`
"""
function matrix_complex_superdiagonal(m, k)
    ccall((:gsl_matrix_complex_superdiagonal, libgsl), _gsl_vector_complex_view, (Ref{gsl_matrix_complex}, Csize_t), m, k)
end

@doc md"""
    matrix_complex_subrow(m, i, offset, n) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_subrow (gsl_matrix_complex * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_complex_subrow(m, i, offset, n)
    ccall((:gsl_matrix_complex_subrow, libgsl), _gsl_vector_complex_view, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_complex_subcolumn(m, j, offset, n) -> _gsl_vector_complex_view

C signature:
`_gsl_vector_complex_view gsl_matrix_complex_subcolumn (gsl_matrix_complex * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_complex_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_complex_subcolumn, libgsl), _gsl_vector_complex_view, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_complex_view_array(base, n1, n2) -> _gsl_matrix_complex_view

C signature:
`_gsl_matrix_complex_view gsl_matrix_complex_view_array (double * base, const size_t n1, const size_t n2)`
"""
function matrix_complex_view_array(base, n1, n2)
    ccall((:gsl_matrix_complex_view_array, libgsl), _gsl_matrix_complex_view, (Ref{Cdouble}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_complex_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_complex_view

C signature:
`_gsl_matrix_complex_view gsl_matrix_complex_view_array_with_tda (double * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_complex_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_complex_view_array_with_tda, libgsl), _gsl_matrix_complex_view, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_complex_view_vector(v, n1, n2) -> _gsl_matrix_complex_view

C signature:
`_gsl_matrix_complex_view gsl_matrix_complex_view_vector (gsl_vector_complex * v, const size_t n1, const size_t n2)`
"""
function matrix_complex_view_vector(v, n1, n2)
    ccall((:gsl_matrix_complex_view_vector, libgsl), _gsl_matrix_complex_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_complex_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_complex_view

C signature:
`_gsl_matrix_complex_view gsl_matrix_complex_view_vector_with_tda (gsl_vector_complex * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_complex_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_complex_view_vector_with_tda, libgsl), _gsl_matrix_complex_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_complex_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_complex_const_view

C signature:
`_gsl_matrix_complex_const_view gsl_matrix_complex_const_submatrix (const gsl_matrix_complex * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_complex_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_complex_const_submatrix, libgsl), _gsl_matrix_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_complex_const_row(m, i) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_row (const gsl_matrix_complex * m, const size_t i)`
"""
function matrix_complex_const_row(m, i)
    ccall((:gsl_matrix_complex_const_row, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t), m, i)
end

@doc md"""
    matrix_complex_const_column(m, j) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_column (const gsl_matrix_complex * m, const size_t j)`
"""
function matrix_complex_const_column(m, j)
    ccall((:gsl_matrix_complex_const_column, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t), m, j)
end

@doc md"""
    matrix_complex_const_diagonal(m) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_diagonal (const gsl_matrix_complex * m)`
"""
function matrix_complex_const_diagonal(m)
    ccall((:gsl_matrix_complex_const_diagonal, libgsl), _gsl_vector_complex_const_view, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_const_subdiagonal(m, k) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_subdiagonal (const gsl_matrix_complex * m, const size_t k)`
"""
function matrix_complex_const_subdiagonal(m, k)
    ccall((:gsl_matrix_complex_const_subdiagonal, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t), m, k)
end

@doc md"""
    matrix_complex_const_superdiagonal(m, k) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_superdiagonal (const gsl_matrix_complex * m, const size_t k)`
"""
function matrix_complex_const_superdiagonal(m, k)
    ccall((:gsl_matrix_complex_const_superdiagonal, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t), m, k)
end

@doc md"""
    matrix_complex_const_subrow(m, i, offset, n) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_subrow (const gsl_matrix_complex * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_complex_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_complex_const_subrow, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_complex_const_subcolumn(m, j, offset, n) -> _gsl_vector_complex_const_view

C signature:
`_gsl_vector_complex_const_view gsl_matrix_complex_const_subcolumn (const gsl_matrix_complex * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_complex_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_complex_const_subcolumn, libgsl), _gsl_vector_complex_const_view, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_complex_const_view_array(base, n1, n2) -> _gsl_matrix_complex_const_view

C signature:
`_gsl_matrix_complex_const_view gsl_matrix_complex_const_view_array (const double * base, const size_t n1, const size_t n2)`
"""
function matrix_complex_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_complex_const_view_array, libgsl), _gsl_matrix_complex_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_complex_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_complex_const_view

C signature:
`_gsl_matrix_complex_const_view gsl_matrix_complex_const_view_array_with_tda (const double * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_complex_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_complex_const_view_array_with_tda, libgsl), _gsl_matrix_complex_const_view, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_complex_const_view_vector(v, n1, n2) -> _gsl_matrix_complex_const_view

C signature:
`_gsl_matrix_complex_const_view gsl_matrix_complex_const_view_vector (const gsl_vector_complex * v, const size_t n1, const size_t n2)`
"""
function matrix_complex_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_complex_const_view_vector, libgsl), _gsl_matrix_complex_const_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_complex_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_complex_const_view

C signature:
`_gsl_matrix_complex_const_view gsl_matrix_complex_const_view_vector_with_tda (const gsl_vector_complex * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_complex_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_complex_const_view_vector_with_tda, libgsl), _gsl_matrix_complex_const_view, (Ref{gsl_vector_complex}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_complex_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_complex_set_zero (gsl_matrix_complex * m)`
"""
function matrix_complex_set_zero(m)
    ccall((:gsl_matrix_complex_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_complex_set_identity (gsl_matrix_complex * m)`
"""
function matrix_complex_set_identity(m)
    ccall((:gsl_matrix_complex_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_complex_set_all (gsl_matrix_complex * m, gsl_complex x)`
"""
function matrix_complex_set_all(m, x)
    ccall((:gsl_matrix_complex_set_all, libgsl), Cvoid, (Ref{gsl_matrix_complex}, gsl_complex), m, x)
end

@doc md"""
    matrix_complex_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_complex_fread (FILE * stream, gsl_matrix_complex * m)`
"""
function matrix_complex_fread(stream, m)
    ccall((:gsl_matrix_complex_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_complex}), stream, m)
end

@doc md"""
    matrix_complex_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_complex_fwrite (FILE * stream, const gsl_matrix_complex * m)`
"""
function matrix_complex_fwrite(stream, m)
    ccall((:gsl_matrix_complex_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_complex}), stream, m)
end

@doc md"""
    matrix_complex_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_complex_fscanf (FILE * stream, gsl_matrix_complex * m)`
"""
function matrix_complex_fscanf(stream, m)
    ccall((:gsl_matrix_complex_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_complex}), stream, m)
end

@doc md"""
    matrix_complex_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_complex_fprintf (FILE * stream, const gsl_matrix_complex * m, const char * format)`
"""
function matrix_complex_fprintf(stream, m, format)
    ccall((:gsl_matrix_complex_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_complex}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_complex_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_complex_memcpy(gsl_matrix_complex * dest, const gsl_matrix_complex * src)`
"""
function matrix_complex_memcpy(dest, src)
    ccall((:gsl_matrix_complex_memcpy, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), dest, src)
end

@doc md"""
    matrix_complex_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_complex_swap(gsl_matrix_complex * m1, gsl_matrix_complex * m2)`
"""
function matrix_complex_swap(m1, m2)
    ccall((:gsl_matrix_complex_swap, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), m1, m2)
end

@doc md"""
    matrix_complex_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_complex_tricpy(const char uplo_src, const int copy_diag, gsl_matrix_complex * dest, const gsl_matrix_complex * src)`
"""
function matrix_complex_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_complex_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_complex_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_complex_swap_rows(gsl_matrix_complex * m, const size_t i, const size_t j)`
"""
function matrix_complex_swap_rows(m, i, j)
    ccall((:gsl_matrix_complex_swap_rows, libgsl), Cint, (Ref{gsl_matrix_complex}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_complex_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_complex_swap_columns(gsl_matrix_complex * m, const size_t i, const size_t j)`
"""
function matrix_complex_swap_columns(m, i, j)
    ccall((:gsl_matrix_complex_swap_columns, libgsl), Cint, (Ref{gsl_matrix_complex}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_complex_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_complex_swap_rowcol(gsl_matrix_complex * m, const size_t i, const size_t j)`
"""
function matrix_complex_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_complex_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_complex}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_complex_transpose(m) -> Cint

C signature:
`int gsl_matrix_complex_transpose (gsl_matrix_complex * m)`
"""
function matrix_complex_transpose(m)
    ccall((:gsl_matrix_complex_transpose, libgsl), Cint, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_complex_transpose_memcpy (gsl_matrix_complex * dest, const gsl_matrix_complex * src)`
"""
function matrix_complex_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_complex_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), dest, src)
end

@doc md"""
    matrix_complex_transpose_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_complex_transpose_tricpy(const char uplo_src, const int copy_diag, gsl_matrix_complex * dest, const gsl_matrix_complex * src)`
"""
function matrix_complex_transpose_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_complex_transpose_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_complex_equal(a, b) -> Cint

C signature:
`int gsl_matrix_complex_equal (const gsl_matrix_complex * a, const gsl_matrix_complex * b)`
"""
function matrix_complex_equal(a, b)
    ccall((:gsl_matrix_complex_equal, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), a, b)
end

@doc md"""
    matrix_complex_isnull(m) -> Cint

C signature:
`int gsl_matrix_complex_isnull (const gsl_matrix_complex * m)`
"""
function matrix_complex_isnull(m)
    ccall((:gsl_matrix_complex_isnull, libgsl), Cint, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_ispos(m) -> Cint

C signature:
`int gsl_matrix_complex_ispos (const gsl_matrix_complex * m)`
"""
function matrix_complex_ispos(m)
    ccall((:gsl_matrix_complex_ispos, libgsl), Cint, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_isneg(m) -> Cint

C signature:
`int gsl_matrix_complex_isneg (const gsl_matrix_complex * m)`
"""
function matrix_complex_isneg(m)
    ccall((:gsl_matrix_complex_isneg, libgsl), Cint, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_complex_isnonneg (const gsl_matrix_complex * m)`
"""
function matrix_complex_isnonneg(m)
    ccall((:gsl_matrix_complex_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_complex},), m)
end

@doc md"""
    matrix_complex_add(a, b) -> Cint

C signature:
`int gsl_matrix_complex_add (gsl_matrix_complex * a, const gsl_matrix_complex * b)`
"""
function matrix_complex_add(a, b)
    ccall((:gsl_matrix_complex_add, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), a, b)
end

@doc md"""
    matrix_complex_sub(a, b) -> Cint

C signature:
`int gsl_matrix_complex_sub (gsl_matrix_complex * a, const gsl_matrix_complex * b)`
"""
function matrix_complex_sub(a, b)
    ccall((:gsl_matrix_complex_sub, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), a, b)
end

@doc md"""
    matrix_complex_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_complex_mul_elements (gsl_matrix_complex * a, const gsl_matrix_complex * b)`
"""
function matrix_complex_mul_elements(a, b)
    ccall((:gsl_matrix_complex_mul_elements, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), a, b)
end

@doc md"""
    matrix_complex_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_complex_div_elements (gsl_matrix_complex * a, const gsl_matrix_complex * b)`
"""
function matrix_complex_div_elements(a, b)
    ccall((:gsl_matrix_complex_div_elements, libgsl), Cint, (Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), a, b)
end

@doc md"""
    matrix_complex_scale(a, x) -> Cint

C signature:
`int gsl_matrix_complex_scale (gsl_matrix_complex * a, const gsl_complex x)`
"""
function matrix_complex_scale(a, x)
    ccall((:gsl_matrix_complex_scale, libgsl), Cint, (Ref{gsl_matrix_complex}, gsl_complex), a, x)
end

@doc md"""
    matrix_complex_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_complex_add_constant (gsl_matrix_complex * a, const gsl_complex x)`
"""
function matrix_complex_add_constant(a, x)
    ccall((:gsl_matrix_complex_add_constant, libgsl), Cint, (Ref{gsl_matrix_complex}, gsl_complex), a, x)
end

@doc md"""
    matrix_complex_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_complex_add_diagonal (gsl_matrix_complex * a, const gsl_complex x)`
"""
function matrix_complex_add_diagonal(a, x)
    ccall((:gsl_matrix_complex_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_complex}, gsl_complex), a, x)
end

@doc md"""
    matrix_complex_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_complex_get_row(gsl_vector_complex * v, const gsl_matrix_complex * m, const size_t i)`
"""
function matrix_complex_get_row(v, m, i)
    ccall((:gsl_matrix_complex_get_row, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_matrix_complex}, Csize_t), v, m, i)
end

@doc md"""
    matrix_complex_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_complex_get_col(gsl_vector_complex * v, const gsl_matrix_complex * m, const size_t j)`
"""
function matrix_complex_get_col(v, m, j)
    ccall((:gsl_matrix_complex_get_col, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_matrix_complex}, Csize_t), v, m, j)
end

@doc md"""
    matrix_complex_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_complex_set_row(gsl_matrix_complex * m, const size_t i, const gsl_vector_complex * v)`
"""
function matrix_complex_set_row(m, i, v)
    ccall((:gsl_matrix_complex_set_row, libgsl), Cint, (Ref{gsl_matrix_complex}, Csize_t, Ref{gsl_vector_complex}), m, i, v)
end

@doc md"""
    matrix_complex_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_complex_set_col(gsl_matrix_complex * m, const size_t j, const gsl_vector_complex * v)`
"""
function matrix_complex_set_col(m, j, v)
    ccall((:gsl_matrix_complex_set_col, libgsl), Cint, (Ref{gsl_matrix_complex}, Csize_t, Ref{gsl_vector_complex}), m, j, v)
end

@doc md"""
    matrix_complex_get(m, i, j) -> gsl_complex

C signature:
`gsl_complex gsl_matrix_complex_get(const gsl_matrix_complex * m, const size_t i, const size_t j)`
"""
function matrix_complex_get(m, i, j)
    ccall((:gsl_matrix_complex_get, libgsl), gsl_complex, (Ref{gsl_matrix_complex}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_complex_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_complex_set(gsl_matrix_complex * m, const size_t i, const size_t j, const gsl_complex x)`
"""
function matrix_complex_set(m, i, j, x)
    ccall((:gsl_matrix_complex_set, libgsl), Cvoid, (Ref{gsl_matrix_complex}, Csize_t, Csize_t, gsl_complex), m, i, j, x)
end

@doc md"""
    matrix_complex_ptr(m, i, j) -> Ptr{gsl_complex}

C signature:
`gsl_complex * gsl_matrix_complex_ptr(gsl_matrix_complex * m, const size_t i, const size_t j)`
"""
function matrix_complex_ptr(m, i, j)
    ccall((:gsl_matrix_complex_ptr, libgsl), Ptr{gsl_complex}, (Ref{gsl_matrix_complex}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_complex_const_ptr(m, i, j) -> Ptr{gsl_complex}

C signature:
`const gsl_complex * gsl_matrix_complex_const_ptr(const gsl_matrix_complex * m, const size_t i, const size_t j)`
"""
function matrix_complex_const_ptr(m, i, j)
    ccall((:gsl_matrix_complex_const_ptr, libgsl), Ptr{gsl_complex}, (Ref{gsl_matrix_complex}, Csize_t, Csize_t), m, i, j)
end

