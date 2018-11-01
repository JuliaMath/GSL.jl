#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_double.h ######################################################


"""
    gsl_matrix_alloc(n1, n2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_alloc (const size_t n1, const size_t n2)`
"""
function gsl_matrix_alloc(n1, n2)
    ccall((:gsl_matrix_alloc, libgsl), Ptr{gsl_matrix}, (Csize_t, Csize_t), n1, n2)
end

"""
    gsl_matrix_calloc(n1, n2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_calloc (const size_t n1, const size_t n2)`
"""
function gsl_matrix_calloc(n1, n2)
    ccall((:gsl_matrix_calloc, libgsl), Ptr{gsl_matrix}, (Csize_t, Csize_t), n1, n2)
end

"""
    gsl_matrix_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_alloc_from_block (gsl_block * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function gsl_matrix_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_alloc_from_block, libgsl), Ptr{gsl_matrix}, (Ref{gsl_block}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

"""
    gsl_matrix_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_matrix_alloc_from_matrix (gsl_matrix * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function gsl_matrix_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_alloc_from_matrix, libgsl), Ptr{gsl_matrix}, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

"""
    gsl_vector_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_vector_alloc_row_from_matrix (gsl_matrix * m, const size_t i)`
"""
function gsl_vector_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_alloc_row_from_matrix, libgsl), Ptr{gsl_vector}, (Ref{gsl_matrix}, Csize_t), m, i)
end

"""
    gsl_vector_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_vector_alloc_col_from_matrix (gsl_matrix * m, const size_t j)`
"""
function gsl_vector_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_alloc_col_from_matrix, libgsl), Ptr{gsl_vector}, (Ref{gsl_matrix}, Csize_t), m, j)
end

"""
    gsl_matrix_free(m) -> Cvoid

C signature:
`void gsl_matrix_free (gsl_matrix * m)`
"""
function gsl_matrix_free(m)
    ccall((:gsl_matrix_free, libgsl), Cvoid, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_submatrix(m, i, j, n1, n2) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_submatrix (gsl_matrix * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function gsl_matrix_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_submatrix, libgsl), _gsl_matrix_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

"""
    gsl_matrix_row(m, i) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_row (gsl_matrix * m, const size_t i)`
"""
function gsl_matrix_row(m, i)
    ccall((:gsl_matrix_row, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, i)
end

"""
    gsl_matrix_column(m, j) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_column (gsl_matrix * m, const size_t j)`
"""
function gsl_matrix_column(m, j)
    ccall((:gsl_matrix_column, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, j)
end

"""
    gsl_matrix_diagonal(m) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_diagonal (gsl_matrix * m)`
"""
function gsl_matrix_diagonal(m)
    ccall((:gsl_matrix_diagonal, libgsl), _gsl_vector_view, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_subdiagonal(m, k) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_subdiagonal (gsl_matrix * m, const size_t k)`
"""
function gsl_matrix_subdiagonal(m, k)
    ccall((:gsl_matrix_subdiagonal, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

"""
    gsl_matrix_superdiagonal(m, k) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_superdiagonal (gsl_matrix * m, const size_t k)`
"""
function gsl_matrix_superdiagonal(m, k)
    ccall((:gsl_matrix_superdiagonal, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

"""
    gsl_matrix_subrow(m, i, offset, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_subrow (gsl_matrix * m, const size_t i, const size_t offset, const size_t n)`
"""
function gsl_matrix_subrow(m, i, offset, n)
    ccall((:gsl_matrix_subrow, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

"""
    gsl_matrix_subcolumn(m, j, offset, n) -> _gsl_vector_view

C signature:
`_gsl_vector_view gsl_matrix_subcolumn (gsl_matrix * m, const size_t j, const size_t offset, const size_t n)`
"""
function gsl_matrix_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_subcolumn, libgsl), _gsl_vector_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

"""
    gsl_matrix_view_array(base, n1, n2) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_array (double * base, const size_t n1, const size_t n2)`
"""
function gsl_matrix_view_array(base, n1, n2)
    ccall((:gsl_matrix_view_array, libgsl), _gsl_matrix_view, (Ref{Cdouble}, Csize_t, Csize_t), base, n1, n2)
end

"""
    gsl_matrix_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_array_with_tda (double * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function gsl_matrix_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_view_array_with_tda, libgsl), _gsl_matrix_view, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

"""
    gsl_matrix_view_vector(v, n1, n2) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_vector (gsl_vector * v, const size_t n1, const size_t n2)`
"""
function gsl_matrix_view_vector(v, n1, n2)
    ccall((:gsl_matrix_view_vector, libgsl), _gsl_matrix_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, n1, n2)
end

"""
    gsl_matrix_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_view

C signature:
`_gsl_matrix_view gsl_matrix_view_vector_with_tda (gsl_vector * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function gsl_matrix_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_view_vector_with_tda, libgsl), _gsl_matrix_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

"""
    gsl_matrix_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_submatrix (const gsl_matrix * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function gsl_matrix_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_const_submatrix, libgsl), _gsl_matrix_const_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

"""
    gsl_matrix_const_row(m, i) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_row (const gsl_matrix * m, const size_t i)`
"""
function gsl_matrix_const_row(m, i)
    ccall((:gsl_matrix_const_row, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, i)
end

"""
    gsl_matrix_const_column(m, j) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_column (const gsl_matrix * m, const size_t j)`
"""
function gsl_matrix_const_column(m, j)
    ccall((:gsl_matrix_const_column, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, j)
end

"""
    gsl_matrix_const_diagonal(m) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_diagonal (const gsl_matrix * m)`
"""
function gsl_matrix_const_diagonal(m)
    ccall((:gsl_matrix_const_diagonal, libgsl), _gsl_vector_const_view, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_const_subdiagonal(m, k) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_subdiagonal (const gsl_matrix * m, const size_t k)`
"""
function gsl_matrix_const_subdiagonal(m, k)
    ccall((:gsl_matrix_const_subdiagonal, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

"""
    gsl_matrix_const_superdiagonal(m, k) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_superdiagonal (const gsl_matrix * m, const size_t k)`
"""
function gsl_matrix_const_superdiagonal(m, k)
    ccall((:gsl_matrix_const_superdiagonal, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t), m, k)
end

"""
    gsl_matrix_const_subrow(m, i, offset, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_subrow (const gsl_matrix * m, const size_t i, const size_t offset, const size_t n)`
"""
function gsl_matrix_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_const_subrow, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

"""
    gsl_matrix_const_subcolumn(m, j, offset, n) -> _gsl_vector_const_view

C signature:
`_gsl_vector_const_view gsl_matrix_const_subcolumn (const gsl_matrix * m, const size_t j, const size_t offset, const size_t n)`
"""
function gsl_matrix_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_const_subcolumn, libgsl), _gsl_vector_const_view, (Ref{gsl_matrix}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

"""
    gsl_matrix_const_view_array(base, n1, n2) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_array (const double * base, const size_t n1, const size_t n2)`
"""
function gsl_matrix_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_const_view_array, libgsl), _gsl_matrix_const_view, (Ref{Cdouble}, Csize_t, Csize_t), base, n1, n2)
end

"""
    gsl_matrix_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_array_with_tda (const double * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function gsl_matrix_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_const_view_array_with_tda, libgsl), _gsl_matrix_const_view, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

"""
    gsl_matrix_const_view_vector(v, n1, n2) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_vector (const gsl_vector * v, const size_t n1, const size_t n2)`
"""
function gsl_matrix_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_const_view_vector, libgsl), _gsl_matrix_const_view, (Ref{gsl_vector}, Csize_t, Csize_t), v, n1, n2)
end

"""
    gsl_matrix_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_const_view

C signature:
`_gsl_matrix_const_view gsl_matrix_const_view_vector_with_tda (const gsl_vector * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function gsl_matrix_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_const_view_vector_with_tda, libgsl), _gsl_matrix_const_view, (Ref{gsl_vector}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

"""
    gsl_matrix_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_set_zero (gsl_matrix * m)`
"""
function gsl_matrix_set_zero(m)
    ccall((:gsl_matrix_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_set_identity (gsl_matrix * m)`
"""
function gsl_matrix_set_identity(m)
    ccall((:gsl_matrix_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_set_all (gsl_matrix * m, double x)`
"""
function gsl_matrix_set_all(m, x)
    ccall((:gsl_matrix_set_all, libgsl), Cvoid, (Ref{gsl_matrix}, Cdouble), m, x)
end

"""
    gsl_matrix_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_fread (FILE * stream, gsl_matrix * m)`
"""
function gsl_matrix_fread(stream, m)
    ccall((:gsl_matrix_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}), stream, m)
end

"""
    gsl_matrix_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_fwrite (FILE * stream, const gsl_matrix * m)`
"""
function gsl_matrix_fwrite(stream, m)
    ccall((:gsl_matrix_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}), stream, m)
end

"""
    gsl_matrix_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_fscanf (FILE * stream, gsl_matrix * m)`
"""
function gsl_matrix_fscanf(stream, m)
    ccall((:gsl_matrix_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}), stream, m)
end

"""
    gsl_matrix_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_fprintf (FILE * stream, const gsl_matrix * m, const char * format)`
"""
function gsl_matrix_fprintf(stream, m, format)
    ccall((:gsl_matrix_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix}, Ref{Cchar}), stream, m, format)
end

"""
    gsl_matrix_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_memcpy(gsl_matrix * dest, const gsl_matrix * src)`
"""
function gsl_matrix_memcpy(dest, src)
    ccall((:gsl_matrix_memcpy, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), dest, src)
end

"""
    gsl_matrix_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_swap(gsl_matrix * m1, gsl_matrix * m2)`
"""
function gsl_matrix_swap(m1, m2)
    ccall((:gsl_matrix_swap, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), m1, m2)
end

"""
    gsl_matrix_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_tricpy(const char uplo_src, const int copy_diag, gsl_matrix * dest, const gsl_matrix * src)`
"""
function gsl_matrix_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix}, Ref{gsl_matrix}), uplo_src, copy_diag, dest, src)
end

"""
    gsl_matrix_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_swap_rows(gsl_matrix * m, const size_t i, const size_t j)`
"""
function gsl_matrix_swap_rows(m, i, j)
    ccall((:gsl_matrix_swap_rows, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

"""
    gsl_matrix_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_swap_columns(gsl_matrix * m, const size_t i, const size_t j)`
"""
function gsl_matrix_swap_columns(m, i, j)
    ccall((:gsl_matrix_swap_columns, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

"""
    gsl_matrix_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_swap_rowcol(gsl_matrix * m, const size_t i, const size_t j)`
"""
function gsl_matrix_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

"""
    gsl_matrix_transpose(m) -> Cint

C signature:
`int gsl_matrix_transpose (gsl_matrix * m)`
"""
function gsl_matrix_transpose(m)
    ccall((:gsl_matrix_transpose, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_transpose_memcpy (gsl_matrix * dest, const gsl_matrix * src)`
"""
function gsl_matrix_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), dest, src)
end

"""
    gsl_matrix_transpose_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_transpose_tricpy (const char uplo_src, const int copy_diag, gsl_matrix * dest, const gsl_matrix * src)`
"""
function gsl_matrix_transpose_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_transpose_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix}, Ref{gsl_matrix}), uplo_src, copy_diag, dest, src)
end

"""
    gsl_matrix_max(m) -> Cdouble

C signature:
`double gsl_matrix_max (const gsl_matrix * m)`
"""
function gsl_matrix_max(m)
    ccall((:gsl_matrix_max, libgsl), Cdouble, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_min(m) -> Cdouble

C signature:
`double gsl_matrix_min (const gsl_matrix * m)`
"""
function gsl_matrix_min(m)
    ccall((:gsl_matrix_min, libgsl), Cdouble, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_minmax (const gsl_matrix * m, double * min_out, double * max_out)`
"""
function gsl_matrix_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_minmax, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}), m, min_out, max_out)
end

"""
    gsl_matrix_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_max_index (const gsl_matrix * m, size_t * imax, size_t *jmax)`
"""
function gsl_matrix_max_index(m, imax, jmax)
    ccall((:gsl_matrix_max_index, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

"""
    gsl_matrix_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_min_index (const gsl_matrix * m, size_t * imin, size_t *jmin)`
"""
function gsl_matrix_min_index(m, imin, jmin)
    ccall((:gsl_matrix_min_index, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

"""
    gsl_matrix_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_minmax_index (const gsl_matrix * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function gsl_matrix_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

"""
    gsl_matrix_equal(a, b) -> Cint

C signature:
`int gsl_matrix_equal (const gsl_matrix * a, const gsl_matrix * b)`
"""
function gsl_matrix_equal(a, b)
    ccall((:gsl_matrix_equal, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

"""
    gsl_matrix_isnull(m) -> Cint

C signature:
`int gsl_matrix_isnull (const gsl_matrix * m)`
"""
function gsl_matrix_isnull(m)
    ccall((:gsl_matrix_isnull, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_ispos(m) -> Cint

C signature:
`int gsl_matrix_ispos (const gsl_matrix * m)`
"""
function gsl_matrix_ispos(m)
    ccall((:gsl_matrix_ispos, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_isneg(m) -> Cint

C signature:
`int gsl_matrix_isneg (const gsl_matrix * m)`
"""
function gsl_matrix_isneg(m)
    ccall((:gsl_matrix_isneg, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_isnonneg (const gsl_matrix * m)`
"""
function gsl_matrix_isnonneg(m)
    ccall((:gsl_matrix_isnonneg, libgsl), Cint, (Ptr{gsl_matrix},), m)
end

"""
    gsl_matrix_add(a, b) -> Cint

C signature:
`int gsl_matrix_add (gsl_matrix * a, const gsl_matrix * b)`
"""
function gsl_matrix_add(a, b)
    ccall((:gsl_matrix_add, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

"""
    gsl_matrix_sub(a, b) -> Cint

C signature:
`int gsl_matrix_sub (gsl_matrix * a, const gsl_matrix * b)`
"""
function gsl_matrix_sub(a, b)
    ccall((:gsl_matrix_sub, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

"""
    gsl_matrix_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_mul_elements (gsl_matrix * a, const gsl_matrix * b)`
"""
function gsl_matrix_mul_elements(a, b)
    ccall((:gsl_matrix_mul_elements, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

"""
    gsl_matrix_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_div_elements (gsl_matrix * a, const gsl_matrix * b)`
"""
function gsl_matrix_div_elements(a, b)
    ccall((:gsl_matrix_div_elements, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}), a, b)
end

"""
    gsl_matrix_scale(a, x) -> Cint

C signature:
`int gsl_matrix_scale (gsl_matrix * a, const double x)`
"""
function gsl_matrix_scale(a, x)
    ccall((:gsl_matrix_scale, libgsl), Cint, (Ref{gsl_matrix}, Cdouble), a, x)
end

"""
    gsl_matrix_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_add_constant (gsl_matrix * a, const double x)`
"""
function gsl_matrix_add_constant(a, x)
    ccall((:gsl_matrix_add_constant, libgsl), Cint, (Ref{gsl_matrix}, Cdouble), a, x)
end

"""
    gsl_matrix_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_add_diagonal (gsl_matrix * a, const double x)`
"""
function gsl_matrix_add_diagonal(a, x)
    ccall((:gsl_matrix_add_diagonal, libgsl), Cint, (Ref{gsl_matrix}, Cdouble), a, x)
end

"""
    gsl_matrix_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_get_row(gsl_vector * v, const gsl_matrix * m, const size_t i)`
"""
function gsl_matrix_get_row(v, m, i)
    ccall((:gsl_matrix_get_row, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Csize_t), v, m, i)
end

"""
    gsl_matrix_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_get_col(gsl_vector * v, const gsl_matrix * m, const size_t j)`
"""
function gsl_matrix_get_col(v, m, j)
    ccall((:gsl_matrix_get_col, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Csize_t), v, m, j)
end

"""
    gsl_matrix_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_set_row(gsl_matrix * m, const size_t i, const gsl_vector * v)`
"""
function gsl_matrix_set_row(m, i, v)
    ccall((:gsl_matrix_set_row, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Ref{gsl_vector}), m, i, v)
end

"""
    gsl_matrix_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_set_col(gsl_matrix * m, const size_t j, const gsl_vector * v)`
"""
function gsl_matrix_set_col(m, j, v)
    ccall((:gsl_matrix_set_col, libgsl), Cint, (Ref{gsl_matrix}, Csize_t, Ref{gsl_vector}), m, j, v)
end

"""
    gsl_matrix_get(m, i, j) -> Cdouble

C signature:
`double gsl_matrix_get(const gsl_matrix * m, const size_t i, const size_t j)`
"""
function gsl_matrix_get(m, i, j)
    ccall((:gsl_matrix_get, libgsl), Cdouble, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

"""
    gsl_matrix_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_set(gsl_matrix * m, const size_t i, const size_t j, const double x)`
"""
function gsl_matrix_set(m, i, j, x)
    ccall((:gsl_matrix_set, libgsl), Cvoid, (Ref{gsl_matrix}, Csize_t, Csize_t, Cdouble), m, i, j, x)
end

"""
    gsl_matrix_ptr(m, i, j) -> Ptr{Cdouble}

C signature:
`double * gsl_matrix_ptr(gsl_matrix * m, const size_t i, const size_t j)`
"""
function gsl_matrix_ptr(m, i, j)
    ccall((:gsl_matrix_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

"""
    gsl_matrix_const_ptr(m, i, j) -> Ptr{Cdouble}

C signature:
`const double * gsl_matrix_const_ptr(const gsl_matrix * m, const size_t i, const size_t j)`
"""
function gsl_matrix_const_ptr(m, i, j)
    ccall((:gsl_matrix_const_ptr, libgsl), Ptr{Cdouble}, (Ref{gsl_matrix}, Csize_t, Csize_t), m, i, j)
end

