#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_long.h ########################################################


@doc md"""
    matrix_long_alloc(n1, n2) -> Ptr{gsl_matrix_long}

C signature:
`gsl_matrix_long * gsl_matrix_long_alloc (const size_t n1, const size_t n2)`
"""
function matrix_long_alloc(n1, n2)
    ccall((:gsl_matrix_long_alloc, libgsl), Ptr{gsl_matrix_long}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_long_calloc(n1, n2) -> Ptr{gsl_matrix_long}

C signature:
`gsl_matrix_long * gsl_matrix_long_calloc (const size_t n1, const size_t n2)`
"""
function matrix_long_calloc(n1, n2)
    ccall((:gsl_matrix_long_calloc, libgsl), Ptr{gsl_matrix_long}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_long_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_long}

C signature:
`gsl_matrix_long * gsl_matrix_long_alloc_from_block (gsl_block_long * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_long_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_long_alloc_from_block, libgsl), Ptr{gsl_matrix_long}, (Ref{gsl_block_long}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_long_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_long}

C signature:
`gsl_matrix_long * gsl_matrix_long_alloc_from_matrix (gsl_matrix_long * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_long_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_long_alloc_from_matrix, libgsl), Ptr{gsl_matrix_long}, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_long_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_long}

C signature:
`gsl_vector_long * gsl_vector_long_alloc_row_from_matrix (gsl_matrix_long * m, const size_t i)`
"""
function vector_long_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_long_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_long}, (Ref{gsl_matrix_long}, Csize_t), m, i)
end

@doc md"""
    vector_long_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_long}

C signature:
`gsl_vector_long * gsl_vector_long_alloc_col_from_matrix (gsl_matrix_long * m, const size_t j)`
"""
function vector_long_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_long_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_long}, (Ref{gsl_matrix_long}, Csize_t), m, j)
end

@doc md"""
    matrix_long_free(m) -> Cvoid

C signature:
`void gsl_matrix_long_free (gsl_matrix_long * m)`
"""
function matrix_long_free(m)
    ccall((:gsl_matrix_long_free, libgsl), Cvoid, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_submatrix(m, i, j, n1, n2) -> _gsl_matrix_long_view

C signature:
`_gsl_matrix_long_view gsl_matrix_long_submatrix (gsl_matrix_long * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_long_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_long_submatrix, libgsl), _gsl_matrix_long_view, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_long_row(m, i) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_row (gsl_matrix_long * m, const size_t i)`
"""
function matrix_long_row(m, i)
    ccall((:gsl_matrix_long_row, libgsl), _gsl_vector_long_view, (Ref{gsl_matrix_long}, Csize_t), m, i)
end

@doc md"""
    matrix_long_column(m, j) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_column (gsl_matrix_long * m, const size_t j)`
"""
function matrix_long_column(m, j)
    ccall((:gsl_matrix_long_column, libgsl), _gsl_vector_long_view, (Ref{gsl_matrix_long}, Csize_t), m, j)
end

@doc md"""
    matrix_long_diagonal(m) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_diagonal (gsl_matrix_long * m)`
"""
function matrix_long_diagonal(m)
    ccall((:gsl_matrix_long_diagonal, libgsl), _gsl_vector_long_view, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_subdiagonal(m, k) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_subdiagonal (gsl_matrix_long * m, const size_t k)`
"""
function matrix_long_subdiagonal(m, k)
    ccall((:gsl_matrix_long_subdiagonal, libgsl), _gsl_vector_long_view, (Ref{gsl_matrix_long}, Csize_t), m, k)
end

@doc md"""
    matrix_long_superdiagonal(m, k) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_superdiagonal (gsl_matrix_long * m, const size_t k)`
"""
function matrix_long_superdiagonal(m, k)
    ccall((:gsl_matrix_long_superdiagonal, libgsl), _gsl_vector_long_view, (Ref{gsl_matrix_long}, Csize_t), m, k)
end

@doc md"""
    matrix_long_subrow(m, i, offset, n) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_subrow (gsl_matrix_long * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_long_subrow(m, i, offset, n)
    ccall((:gsl_matrix_long_subrow, libgsl), _gsl_vector_long_view, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_long_subcolumn(m, j, offset, n) -> _gsl_vector_long_view

C signature:
`_gsl_vector_long_view gsl_matrix_long_subcolumn (gsl_matrix_long * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_long_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_long_subcolumn, libgsl), _gsl_vector_long_view, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_long_view_array(base, n1, n2) -> _gsl_matrix_long_view

C signature:
`_gsl_matrix_long_view gsl_matrix_long_view_array (long * base, const size_t n1, const size_t n2)`
"""
function matrix_long_view_array(base, n1, n2)
    ccall((:gsl_matrix_long_view_array, libgsl), _gsl_matrix_long_view, (Ref{Clong}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_long_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_long_view

C signature:
`_gsl_matrix_long_view gsl_matrix_long_view_array_with_tda (long * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_long_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_long_view_array_with_tda, libgsl), _gsl_matrix_long_view, (Ref{Clong}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_long_view_vector(v, n1, n2) -> _gsl_matrix_long_view

C signature:
`_gsl_matrix_long_view gsl_matrix_long_view_vector (gsl_vector_long * v, const size_t n1, const size_t n2)`
"""
function matrix_long_view_vector(v, n1, n2)
    ccall((:gsl_matrix_long_view_vector, libgsl), _gsl_matrix_long_view, (Ref{gsl_vector_long}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_long_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_long_view

C signature:
`_gsl_matrix_long_view gsl_matrix_long_view_vector_with_tda (gsl_vector_long * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_long_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_long_view_vector_with_tda, libgsl), _gsl_matrix_long_view, (Ref{gsl_vector_long}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_long_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_long_const_view

C signature:
`_gsl_matrix_long_const_view gsl_matrix_long_const_submatrix (const gsl_matrix_long * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_long_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_long_const_submatrix, libgsl), _gsl_matrix_long_const_view, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_long_const_row(m, i) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_row (const gsl_matrix_long * m, const size_t i)`
"""
function matrix_long_const_row(m, i)
    ccall((:gsl_matrix_long_const_row, libgsl), _gsl_vector_long_const_view, (Ref{gsl_matrix_long}, Csize_t), m, i)
end

@doc md"""
    matrix_long_const_column(m, j) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_column (const gsl_matrix_long * m, const size_t j)`
"""
function matrix_long_const_column(m, j)
    ccall((:gsl_matrix_long_const_column, libgsl), _gsl_vector_long_const_view, (Ref{gsl_matrix_long}, Csize_t), m, j)
end

@doc md"""
    matrix_long_const_diagonal(m) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_diagonal (const gsl_matrix_long * m)`
"""
function matrix_long_const_diagonal(m)
    ccall((:gsl_matrix_long_const_diagonal, libgsl), _gsl_vector_long_const_view, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_const_subdiagonal(m, k) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_subdiagonal (const gsl_matrix_long * m, const size_t k)`
"""
function matrix_long_const_subdiagonal(m, k)
    ccall((:gsl_matrix_long_const_subdiagonal, libgsl), _gsl_vector_long_const_view, (Ref{gsl_matrix_long}, Csize_t), m, k)
end

@doc md"""
    matrix_long_const_superdiagonal(m, k) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_superdiagonal (const gsl_matrix_long * m, const size_t k)`
"""
function matrix_long_const_superdiagonal(m, k)
    ccall((:gsl_matrix_long_const_superdiagonal, libgsl), _gsl_vector_long_const_view, (Ref{gsl_matrix_long}, Csize_t), m, k)
end

@doc md"""
    matrix_long_const_subrow(m, i, offset, n) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_subrow (const gsl_matrix_long * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_long_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_long_const_subrow, libgsl), _gsl_vector_long_const_view, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_long_const_subcolumn(m, j, offset, n) -> _gsl_vector_long_const_view

C signature:
`_gsl_vector_long_const_view gsl_matrix_long_const_subcolumn (const gsl_matrix_long * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_long_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_long_const_subcolumn, libgsl), _gsl_vector_long_const_view, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_long_const_view_array(base, n1, n2) -> _gsl_matrix_long_const_view

C signature:
`_gsl_matrix_long_const_view gsl_matrix_long_const_view_array (const long * base, const size_t n1, const size_t n2)`
"""
function matrix_long_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_long_const_view_array, libgsl), _gsl_matrix_long_const_view, (Ref{Clong}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_long_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_long_const_view

C signature:
`_gsl_matrix_long_const_view gsl_matrix_long_const_view_array_with_tda (const long * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_long_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_long_const_view_array_with_tda, libgsl), _gsl_matrix_long_const_view, (Ref{Clong}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_long_const_view_vector(v, n1, n2) -> _gsl_matrix_long_const_view

C signature:
`_gsl_matrix_long_const_view gsl_matrix_long_const_view_vector (const gsl_vector_long * v, const size_t n1, const size_t n2)`
"""
function matrix_long_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_long_const_view_vector, libgsl), _gsl_matrix_long_const_view, (Ref{gsl_vector_long}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_long_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_long_const_view

C signature:
`_gsl_matrix_long_const_view gsl_matrix_long_const_view_vector_with_tda (const gsl_vector_long * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_long_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_long_const_view_vector_with_tda, libgsl), _gsl_matrix_long_const_view, (Ref{gsl_vector_long}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_long_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_long_set_zero (gsl_matrix_long * m)`
"""
function matrix_long_set_zero(m)
    ccall((:gsl_matrix_long_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_long_set_identity (gsl_matrix_long * m)`
"""
function matrix_long_set_identity(m)
    ccall((:gsl_matrix_long_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_long_set_all (gsl_matrix_long * m, long x)`
"""
function matrix_long_set_all(m, x)
    ccall((:gsl_matrix_long_set_all, libgsl), Cvoid, (Ref{gsl_matrix_long}, Clong), m, x)
end

@doc md"""
    matrix_long_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_long_fread (FILE * stream, gsl_matrix_long * m)`
"""
function matrix_long_fread(stream, m)
    ccall((:gsl_matrix_long_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_long}), stream, m)
end

@doc md"""
    matrix_long_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_long_fwrite (FILE * stream, const gsl_matrix_long * m)`
"""
function matrix_long_fwrite(stream, m)
    ccall((:gsl_matrix_long_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_long}), stream, m)
end

@doc md"""
    matrix_long_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_long_fscanf (FILE * stream, gsl_matrix_long * m)`
"""
function matrix_long_fscanf(stream, m)
    ccall((:gsl_matrix_long_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_long}), stream, m)
end

@doc md"""
    matrix_long_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_long_fprintf (FILE * stream, const gsl_matrix_long * m, const char * format)`
"""
function matrix_long_fprintf(stream, m, format)
    ccall((:gsl_matrix_long_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_long}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_long_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_long_memcpy(gsl_matrix_long * dest, const gsl_matrix_long * src)`
"""
function matrix_long_memcpy(dest, src)
    ccall((:gsl_matrix_long_memcpy, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), dest, src)
end

@doc md"""
    matrix_long_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_long_swap(gsl_matrix_long * m1, gsl_matrix_long * m2)`
"""
function matrix_long_swap(m1, m2)
    ccall((:gsl_matrix_long_swap, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), m1, m2)
end

@doc md"""
    matrix_long_tricpy(Uplo, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_long_tricpy(CBLAS_UPLO_t Uplo, CBLAS_DIAG_t Diag, gsl_matrix_long * dest, const gsl_matrix_long * src)`
"""
function matrix_long_tricpy(Uplo, Diag, dest, src)
    ccall((:gsl_matrix_long_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), Uplo, Diag, dest, src)
end

@doc md"""
    matrix_long_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_long_swap_rows(gsl_matrix_long * m, const size_t i, const size_t j)`
"""
function matrix_long_swap_rows(m, i, j)
    ccall((:gsl_matrix_long_swap_rows, libgsl), Cint, (Ref{gsl_matrix_long}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_long_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_long_swap_columns(gsl_matrix_long * m, const size_t i, const size_t j)`
"""
function matrix_long_swap_columns(m, i, j)
    ccall((:gsl_matrix_long_swap_columns, libgsl), Cint, (Ref{gsl_matrix_long}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_long_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_long_swap_rowcol(gsl_matrix_long * m, const size_t i, const size_t j)`
"""
function matrix_long_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_long_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_long}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_long_transpose(m) -> Cint

C signature:
`int gsl_matrix_long_transpose (gsl_matrix_long * m)`
"""
function matrix_long_transpose(m)
    ccall((:gsl_matrix_long_transpose, libgsl), Cint, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_long_transpose_memcpy (gsl_matrix_long * dest, const gsl_matrix_long * src)`
"""
function matrix_long_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_long_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), dest, src)
end

@doc md"""
    matrix_long_transpose_tricpy(Uplo_src, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_long_transpose_tricpy (CBLAS_UPLO_t Uplo_src, CBLAS_DIAG_t Diag, gsl_matrix_long * dest, const gsl_matrix_long * src)`
"""
function matrix_long_transpose_tricpy(Uplo_src, Diag, dest, src)
    ccall((:gsl_matrix_long_transpose_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), Uplo_src, Diag, dest, src)
end

@doc md"""
    matrix_long_max(m) -> Clong

C signature:
`long gsl_matrix_long_max (const gsl_matrix_long * m)`
"""
function matrix_long_max(m)
    ccall((:gsl_matrix_long_max, libgsl), Clong, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_min(m) -> Clong

C signature:
`long gsl_matrix_long_min (const gsl_matrix_long * m)`
"""
function matrix_long_min(m)
    ccall((:gsl_matrix_long_min, libgsl), Clong, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_long_minmax (const gsl_matrix_long * m, long * min_out, long * max_out)`
"""
function matrix_long_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_long_minmax, libgsl), Cvoid, (Ref{gsl_matrix_long}, Ref{Clong}, Ref{Clong}), m, min_out, max_out)
end

@doc md"""
    matrix_long_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_long_max_index (const gsl_matrix_long * m, size_t * imax, size_t *jmax)`
"""
function matrix_long_max_index(m, imax, jmax)
    ccall((:gsl_matrix_long_max_index, libgsl), Cvoid, (Ref{gsl_matrix_long}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_long_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_long_min_index (const gsl_matrix_long * m, size_t * imin, size_t *jmin)`
"""
function matrix_long_min_index(m, imin, jmin)
    ccall((:gsl_matrix_long_min_index, libgsl), Cvoid, (Ref{gsl_matrix_long}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_long_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_long_minmax_index (const gsl_matrix_long * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_long_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_long_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_long}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_long_equal(a, b) -> Cint

C signature:
`int gsl_matrix_long_equal (const gsl_matrix_long * a, const gsl_matrix_long * b)`
"""
function matrix_long_equal(a, b)
    ccall((:gsl_matrix_long_equal, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), a, b)
end

@doc md"""
    matrix_long_isnull(m) -> Cint

C signature:
`int gsl_matrix_long_isnull (const gsl_matrix_long * m)`
"""
function matrix_long_isnull(m)
    ccall((:gsl_matrix_long_isnull, libgsl), Cint, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_ispos(m) -> Cint

C signature:
`int gsl_matrix_long_ispos (const gsl_matrix_long * m)`
"""
function matrix_long_ispos(m)
    ccall((:gsl_matrix_long_ispos, libgsl), Cint, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_isneg(m) -> Cint

C signature:
`int gsl_matrix_long_isneg (const gsl_matrix_long * m)`
"""
function matrix_long_isneg(m)
    ccall((:gsl_matrix_long_isneg, libgsl), Cint, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_long_isnonneg (const gsl_matrix_long * m)`
"""
function matrix_long_isnonneg(m)
    ccall((:gsl_matrix_long_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_long},), m)
end

@doc md"""
    matrix_long_add(a, b) -> Cint

C signature:
`int gsl_matrix_long_add (gsl_matrix_long * a, const gsl_matrix_long * b)`
"""
function matrix_long_add(a, b)
    ccall((:gsl_matrix_long_add, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), a, b)
end

@doc md"""
    matrix_long_sub(a, b) -> Cint

C signature:
`int gsl_matrix_long_sub (gsl_matrix_long * a, const gsl_matrix_long * b)`
"""
function matrix_long_sub(a, b)
    ccall((:gsl_matrix_long_sub, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), a, b)
end

@doc md"""
    matrix_long_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_long_mul_elements (gsl_matrix_long * a, const gsl_matrix_long * b)`
"""
function matrix_long_mul_elements(a, b)
    ccall((:gsl_matrix_long_mul_elements, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), a, b)
end

@doc md"""
    matrix_long_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_long_div_elements (gsl_matrix_long * a, const gsl_matrix_long * b)`
"""
function matrix_long_div_elements(a, b)
    ccall((:gsl_matrix_long_div_elements, libgsl), Cint, (Ref{gsl_matrix_long}, Ref{gsl_matrix_long}), a, b)
end

@doc md"""
    matrix_long_scale(a, x) -> Cint

C signature:
`int gsl_matrix_long_scale (gsl_matrix_long * a, const double x)`
"""
function matrix_long_scale(a, x)
    ccall((:gsl_matrix_long_scale, libgsl), Cint, (Ref{gsl_matrix_long}, Cdouble), a, x)
end

@doc md"""
    matrix_long_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_long_add_constant (gsl_matrix_long * a, const double x)`
"""
function matrix_long_add_constant(a, x)
    ccall((:gsl_matrix_long_add_constant, libgsl), Cint, (Ref{gsl_matrix_long}, Cdouble), a, x)
end

@doc md"""
    matrix_long_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_long_add_diagonal (gsl_matrix_long * a, const double x)`
"""
function matrix_long_add_diagonal(a, x)
    ccall((:gsl_matrix_long_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_long}, Cdouble), a, x)
end

@doc md"""
    matrix_long_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_long_get_row(gsl_vector_long * v, const gsl_matrix_long * m, const size_t i)`
"""
function matrix_long_get_row(v, m, i)
    ccall((:gsl_matrix_long_get_row, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_matrix_long}, Csize_t), v, m, i)
end

@doc md"""
    matrix_long_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_long_get_col(gsl_vector_long * v, const gsl_matrix_long * m, const size_t j)`
"""
function matrix_long_get_col(v, m, j)
    ccall((:gsl_matrix_long_get_col, libgsl), Cint, (Ref{gsl_vector_long}, Ref{gsl_matrix_long}, Csize_t), v, m, j)
end

@doc md"""
    matrix_long_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_long_set_row(gsl_matrix_long * m, const size_t i, const gsl_vector_long * v)`
"""
function matrix_long_set_row(m, i, v)
    ccall((:gsl_matrix_long_set_row, libgsl), Cint, (Ref{gsl_matrix_long}, Csize_t, Ref{gsl_vector_long}), m, i, v)
end

@doc md"""
    matrix_long_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_long_set_col(gsl_matrix_long * m, const size_t j, const gsl_vector_long * v)`
"""
function matrix_long_set_col(m, j, v)
    ccall((:gsl_matrix_long_set_col, libgsl), Cint, (Ref{gsl_matrix_long}, Csize_t, Ref{gsl_vector_long}), m, j, v)
end

@doc md"""
    matrix_long_get(m, i, j) -> Clong

C signature:
`long gsl_matrix_long_get(const gsl_matrix_long * m, const size_t i, const size_t j)`
"""
function matrix_long_get(m, i, j)
    ccall((:gsl_matrix_long_get, libgsl), Clong, (Ref{gsl_matrix_long}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_long_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_long_set(gsl_matrix_long * m, const size_t i, const size_t j, const long x)`
"""
function matrix_long_set(m, i, j, x)
    ccall((:gsl_matrix_long_set, libgsl), Cvoid, (Ref{gsl_matrix_long}, Csize_t, Csize_t, Clong), m, i, j, x)
end

@doc md"""
    matrix_long_ptr(m, i, j) -> Ptr{Clong}

C signature:
`long * gsl_matrix_long_ptr(gsl_matrix_long * m, const size_t i, const size_t j)`
"""
function matrix_long_ptr(m, i, j)
    ccall((:gsl_matrix_long_ptr, libgsl), Ptr{Clong}, (Ref{gsl_matrix_long}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_long_const_ptr(m, i, j) -> Ptr{Clong}

C signature:
`const long * gsl_matrix_long_const_ptr(const gsl_matrix_long * m, const size_t i, const size_t j)`
"""
function matrix_long_const_ptr(m, i, j)
    ccall((:gsl_matrix_long_const_ptr, libgsl), Ptr{Clong}, (Ref{gsl_matrix_long}, Csize_t, Csize_t), m, i, j)
end

