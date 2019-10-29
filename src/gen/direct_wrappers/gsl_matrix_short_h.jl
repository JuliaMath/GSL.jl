#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_short.h #######################################################


@doc md"""
    matrix_short_alloc(n1, n2) -> Ptr{gsl_matrix_short}

C signature:
`gsl_matrix_short * gsl_matrix_short_alloc (const size_t n1, const size_t n2)`
"""
function matrix_short_alloc(n1, n2)
    ccall((:gsl_matrix_short_alloc, libgsl), Ptr{gsl_matrix_short}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_short_calloc(n1, n2) -> Ptr{gsl_matrix_short}

C signature:
`gsl_matrix_short * gsl_matrix_short_calloc (const size_t n1, const size_t n2)`
"""
function matrix_short_calloc(n1, n2)
    ccall((:gsl_matrix_short_calloc, libgsl), Ptr{gsl_matrix_short}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_short_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_short}

C signature:
`gsl_matrix_short * gsl_matrix_short_alloc_from_block (gsl_block_short * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_short_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_short_alloc_from_block, libgsl), Ptr{gsl_matrix_short}, (Ref{gsl_block_short}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_short_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_short}

C signature:
`gsl_matrix_short * gsl_matrix_short_alloc_from_matrix (gsl_matrix_short * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_short_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_short_alloc_from_matrix, libgsl), Ptr{gsl_matrix_short}, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_short_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_short}

C signature:
`gsl_vector_short * gsl_vector_short_alloc_row_from_matrix (gsl_matrix_short * m, const size_t i)`
"""
function vector_short_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_short_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_short}, (Ref{gsl_matrix_short}, Csize_t), m, i)
end

@doc md"""
    vector_short_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_short}

C signature:
`gsl_vector_short * gsl_vector_short_alloc_col_from_matrix (gsl_matrix_short * m, const size_t j)`
"""
function vector_short_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_short_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_short}, (Ref{gsl_matrix_short}, Csize_t), m, j)
end

@doc md"""
    matrix_short_free(m) -> Cvoid

C signature:
`void gsl_matrix_short_free (gsl_matrix_short * m)`
"""
function matrix_short_free(m)
    ccall((:gsl_matrix_short_free, libgsl), Cvoid, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_submatrix(m, i, j, n1, n2) -> _gsl_matrix_short_view

C signature:
`_gsl_matrix_short_view gsl_matrix_short_submatrix (gsl_matrix_short * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_short_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_short_submatrix, libgsl), _gsl_matrix_short_view, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_short_row(m, i) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_row (gsl_matrix_short * m, const size_t i)`
"""
function matrix_short_row(m, i)
    ccall((:gsl_matrix_short_row, libgsl), _gsl_vector_short_view, (Ref{gsl_matrix_short}, Csize_t), m, i)
end

@doc md"""
    matrix_short_column(m, j) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_column (gsl_matrix_short * m, const size_t j)`
"""
function matrix_short_column(m, j)
    ccall((:gsl_matrix_short_column, libgsl), _gsl_vector_short_view, (Ref{gsl_matrix_short}, Csize_t), m, j)
end

@doc md"""
    matrix_short_diagonal(m) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_diagonal (gsl_matrix_short * m)`
"""
function matrix_short_diagonal(m)
    ccall((:gsl_matrix_short_diagonal, libgsl), _gsl_vector_short_view, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_subdiagonal(m, k) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_subdiagonal (gsl_matrix_short * m, const size_t k)`
"""
function matrix_short_subdiagonal(m, k)
    ccall((:gsl_matrix_short_subdiagonal, libgsl), _gsl_vector_short_view, (Ref{gsl_matrix_short}, Csize_t), m, k)
end

@doc md"""
    matrix_short_superdiagonal(m, k) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_superdiagonal (gsl_matrix_short * m, const size_t k)`
"""
function matrix_short_superdiagonal(m, k)
    ccall((:gsl_matrix_short_superdiagonal, libgsl), _gsl_vector_short_view, (Ref{gsl_matrix_short}, Csize_t), m, k)
end

@doc md"""
    matrix_short_subrow(m, i, offset, n) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_subrow (gsl_matrix_short * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_short_subrow(m, i, offset, n)
    ccall((:gsl_matrix_short_subrow, libgsl), _gsl_vector_short_view, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_short_subcolumn(m, j, offset, n) -> _gsl_vector_short_view

C signature:
`_gsl_vector_short_view gsl_matrix_short_subcolumn (gsl_matrix_short * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_short_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_short_subcolumn, libgsl), _gsl_vector_short_view, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_short_view_array(base, n1, n2) -> _gsl_matrix_short_view

C signature:
`_gsl_matrix_short_view gsl_matrix_short_view_array (short * base, const size_t n1, const size_t n2)`
"""
function matrix_short_view_array(base, n1, n2)
    ccall((:gsl_matrix_short_view_array, libgsl), _gsl_matrix_short_view, (Ref{Cshort}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_short_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_short_view

C signature:
`_gsl_matrix_short_view gsl_matrix_short_view_array_with_tda (short * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_short_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_short_view_array_with_tda, libgsl), _gsl_matrix_short_view, (Ref{Cshort}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_short_view_vector(v, n1, n2) -> _gsl_matrix_short_view

C signature:
`_gsl_matrix_short_view gsl_matrix_short_view_vector (gsl_vector_short * v, const size_t n1, const size_t n2)`
"""
function matrix_short_view_vector(v, n1, n2)
    ccall((:gsl_matrix_short_view_vector, libgsl), _gsl_matrix_short_view, (Ref{gsl_vector_short}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_short_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_short_view

C signature:
`_gsl_matrix_short_view gsl_matrix_short_view_vector_with_tda (gsl_vector_short * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_short_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_short_view_vector_with_tda, libgsl), _gsl_matrix_short_view, (Ref{gsl_vector_short}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_short_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_short_const_view

C signature:
`_gsl_matrix_short_const_view gsl_matrix_short_const_submatrix (const gsl_matrix_short * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_short_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_short_const_submatrix, libgsl), _gsl_matrix_short_const_view, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_short_const_row(m, i) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_row (const gsl_matrix_short * m, const size_t i)`
"""
function matrix_short_const_row(m, i)
    ccall((:gsl_matrix_short_const_row, libgsl), _gsl_vector_short_const_view, (Ref{gsl_matrix_short}, Csize_t), m, i)
end

@doc md"""
    matrix_short_const_column(m, j) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_column (const gsl_matrix_short * m, const size_t j)`
"""
function matrix_short_const_column(m, j)
    ccall((:gsl_matrix_short_const_column, libgsl), _gsl_vector_short_const_view, (Ref{gsl_matrix_short}, Csize_t), m, j)
end

@doc md"""
    matrix_short_const_diagonal(m) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_diagonal (const gsl_matrix_short * m)`
"""
function matrix_short_const_diagonal(m)
    ccall((:gsl_matrix_short_const_diagonal, libgsl), _gsl_vector_short_const_view, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_const_subdiagonal(m, k) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_subdiagonal (const gsl_matrix_short * m, const size_t k)`
"""
function matrix_short_const_subdiagonal(m, k)
    ccall((:gsl_matrix_short_const_subdiagonal, libgsl), _gsl_vector_short_const_view, (Ref{gsl_matrix_short}, Csize_t), m, k)
end

@doc md"""
    matrix_short_const_superdiagonal(m, k) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_superdiagonal (const gsl_matrix_short * m, const size_t k)`
"""
function matrix_short_const_superdiagonal(m, k)
    ccall((:gsl_matrix_short_const_superdiagonal, libgsl), _gsl_vector_short_const_view, (Ref{gsl_matrix_short}, Csize_t), m, k)
end

@doc md"""
    matrix_short_const_subrow(m, i, offset, n) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_subrow (const gsl_matrix_short * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_short_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_short_const_subrow, libgsl), _gsl_vector_short_const_view, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_short_const_subcolumn(m, j, offset, n) -> _gsl_vector_short_const_view

C signature:
`_gsl_vector_short_const_view gsl_matrix_short_const_subcolumn (const gsl_matrix_short * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_short_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_short_const_subcolumn, libgsl), _gsl_vector_short_const_view, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_short_const_view_array(base, n1, n2) -> _gsl_matrix_short_const_view

C signature:
`_gsl_matrix_short_const_view gsl_matrix_short_const_view_array (const short * base, const size_t n1, const size_t n2)`
"""
function matrix_short_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_short_const_view_array, libgsl), _gsl_matrix_short_const_view, (Ref{Cshort}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_short_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_short_const_view

C signature:
`_gsl_matrix_short_const_view gsl_matrix_short_const_view_array_with_tda (const short * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_short_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_short_const_view_array_with_tda, libgsl), _gsl_matrix_short_const_view, (Ref{Cshort}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_short_const_view_vector(v, n1, n2) -> _gsl_matrix_short_const_view

C signature:
`_gsl_matrix_short_const_view gsl_matrix_short_const_view_vector (const gsl_vector_short * v, const size_t n1, const size_t n2)`
"""
function matrix_short_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_short_const_view_vector, libgsl), _gsl_matrix_short_const_view, (Ref{gsl_vector_short}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_short_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_short_const_view

C signature:
`_gsl_matrix_short_const_view gsl_matrix_short_const_view_vector_with_tda (const gsl_vector_short * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_short_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_short_const_view_vector_with_tda, libgsl), _gsl_matrix_short_const_view, (Ref{gsl_vector_short}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_short_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_short_set_zero (gsl_matrix_short * m)`
"""
function matrix_short_set_zero(m)
    ccall((:gsl_matrix_short_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_short_set_identity (gsl_matrix_short * m)`
"""
function matrix_short_set_identity(m)
    ccall((:gsl_matrix_short_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_short_set_all (gsl_matrix_short * m, short x)`
"""
function matrix_short_set_all(m, x)
    ccall((:gsl_matrix_short_set_all, libgsl), Cvoid, (Ref{gsl_matrix_short}, Cshort), m, x)
end

@doc md"""
    matrix_short_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_short_fread (FILE * stream, gsl_matrix_short * m)`
"""
function matrix_short_fread(stream, m)
    ccall((:gsl_matrix_short_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_short}), stream, m)
end

@doc md"""
    matrix_short_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_short_fwrite (FILE * stream, const gsl_matrix_short * m)`
"""
function matrix_short_fwrite(stream, m)
    ccall((:gsl_matrix_short_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_short}), stream, m)
end

@doc md"""
    matrix_short_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_short_fscanf (FILE * stream, gsl_matrix_short * m)`
"""
function matrix_short_fscanf(stream, m)
    ccall((:gsl_matrix_short_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_short}), stream, m)
end

@doc md"""
    matrix_short_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_short_fprintf (FILE * stream, const gsl_matrix_short * m, const char * format)`
"""
function matrix_short_fprintf(stream, m, format)
    ccall((:gsl_matrix_short_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_short}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_short_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_short_memcpy(gsl_matrix_short * dest, const gsl_matrix_short * src)`
"""
function matrix_short_memcpy(dest, src)
    ccall((:gsl_matrix_short_memcpy, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), dest, src)
end

@doc md"""
    matrix_short_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_short_swap(gsl_matrix_short * m1, gsl_matrix_short * m2)`
"""
function matrix_short_swap(m1, m2)
    ccall((:gsl_matrix_short_swap, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), m1, m2)
end

@doc md"""
    matrix_short_tricpy(Uplo, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_short_tricpy(CBLAS_UPLO_t Uplo, CBLAS_DIAG_t Diag, gsl_matrix_short * dest, const gsl_matrix_short * src)`
"""
function matrix_short_tricpy(Uplo, Diag, dest, src)
    ccall((:gsl_matrix_short_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), Uplo, Diag, dest, src)
end

@doc md"""
    matrix_short_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_short_swap_rows(gsl_matrix_short * m, const size_t i, const size_t j)`
"""
function matrix_short_swap_rows(m, i, j)
    ccall((:gsl_matrix_short_swap_rows, libgsl), Cint, (Ref{gsl_matrix_short}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_short_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_short_swap_columns(gsl_matrix_short * m, const size_t i, const size_t j)`
"""
function matrix_short_swap_columns(m, i, j)
    ccall((:gsl_matrix_short_swap_columns, libgsl), Cint, (Ref{gsl_matrix_short}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_short_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_short_swap_rowcol(gsl_matrix_short * m, const size_t i, const size_t j)`
"""
function matrix_short_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_short_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_short}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_short_transpose(m) -> Cint

C signature:
`int gsl_matrix_short_transpose (gsl_matrix_short * m)`
"""
function matrix_short_transpose(m)
    ccall((:gsl_matrix_short_transpose, libgsl), Cint, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_short_transpose_memcpy (gsl_matrix_short * dest, const gsl_matrix_short * src)`
"""
function matrix_short_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_short_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), dest, src)
end

@doc md"""
    matrix_short_transpose_tricpy(Uplo_src, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_short_transpose_tricpy (CBLAS_UPLO_t Uplo_src, CBLAS_DIAG_t Diag, gsl_matrix_short * dest, const gsl_matrix_short * src)`
"""
function matrix_short_transpose_tricpy(Uplo_src, Diag, dest, src)
    ccall((:gsl_matrix_short_transpose_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), Uplo_src, Diag, dest, src)
end

@doc md"""
    matrix_short_max(m) -> Cshort

C signature:
`short gsl_matrix_short_max (const gsl_matrix_short * m)`
"""
function matrix_short_max(m)
    ccall((:gsl_matrix_short_max, libgsl), Cshort, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_min(m) -> Cshort

C signature:
`short gsl_matrix_short_min (const gsl_matrix_short * m)`
"""
function matrix_short_min(m)
    ccall((:gsl_matrix_short_min, libgsl), Cshort, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_short_minmax (const gsl_matrix_short * m, short * min_out, short * max_out)`
"""
function matrix_short_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_short_minmax, libgsl), Cvoid, (Ref{gsl_matrix_short}, Ref{Cshort}, Ref{Cshort}), m, min_out, max_out)
end

@doc md"""
    matrix_short_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_short_max_index (const gsl_matrix_short * m, size_t * imax, size_t *jmax)`
"""
function matrix_short_max_index(m, imax, jmax)
    ccall((:gsl_matrix_short_max_index, libgsl), Cvoid, (Ref{gsl_matrix_short}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_short_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_short_min_index (const gsl_matrix_short * m, size_t * imin, size_t *jmin)`
"""
function matrix_short_min_index(m, imin, jmin)
    ccall((:gsl_matrix_short_min_index, libgsl), Cvoid, (Ref{gsl_matrix_short}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_short_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_short_minmax_index (const gsl_matrix_short * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_short_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_short_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_short}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_short_equal(a, b) -> Cint

C signature:
`int gsl_matrix_short_equal (const gsl_matrix_short * a, const gsl_matrix_short * b)`
"""
function matrix_short_equal(a, b)
    ccall((:gsl_matrix_short_equal, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), a, b)
end

@doc md"""
    matrix_short_isnull(m) -> Cint

C signature:
`int gsl_matrix_short_isnull (const gsl_matrix_short * m)`
"""
function matrix_short_isnull(m)
    ccall((:gsl_matrix_short_isnull, libgsl), Cint, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_ispos(m) -> Cint

C signature:
`int gsl_matrix_short_ispos (const gsl_matrix_short * m)`
"""
function matrix_short_ispos(m)
    ccall((:gsl_matrix_short_ispos, libgsl), Cint, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_isneg(m) -> Cint

C signature:
`int gsl_matrix_short_isneg (const gsl_matrix_short * m)`
"""
function matrix_short_isneg(m)
    ccall((:gsl_matrix_short_isneg, libgsl), Cint, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_short_isnonneg (const gsl_matrix_short * m)`
"""
function matrix_short_isnonneg(m)
    ccall((:gsl_matrix_short_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_short},), m)
end

@doc md"""
    matrix_short_add(a, b) -> Cint

C signature:
`int gsl_matrix_short_add (gsl_matrix_short * a, const gsl_matrix_short * b)`
"""
function matrix_short_add(a, b)
    ccall((:gsl_matrix_short_add, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), a, b)
end

@doc md"""
    matrix_short_sub(a, b) -> Cint

C signature:
`int gsl_matrix_short_sub (gsl_matrix_short * a, const gsl_matrix_short * b)`
"""
function matrix_short_sub(a, b)
    ccall((:gsl_matrix_short_sub, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), a, b)
end

@doc md"""
    matrix_short_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_short_mul_elements (gsl_matrix_short * a, const gsl_matrix_short * b)`
"""
function matrix_short_mul_elements(a, b)
    ccall((:gsl_matrix_short_mul_elements, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), a, b)
end

@doc md"""
    matrix_short_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_short_div_elements (gsl_matrix_short * a, const gsl_matrix_short * b)`
"""
function matrix_short_div_elements(a, b)
    ccall((:gsl_matrix_short_div_elements, libgsl), Cint, (Ref{gsl_matrix_short}, Ref{gsl_matrix_short}), a, b)
end

@doc md"""
    matrix_short_scale(a, x) -> Cint

C signature:
`int gsl_matrix_short_scale (gsl_matrix_short * a, const double x)`
"""
function matrix_short_scale(a, x)
    ccall((:gsl_matrix_short_scale, libgsl), Cint, (Ref{gsl_matrix_short}, Cdouble), a, x)
end

@doc md"""
    matrix_short_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_short_add_constant (gsl_matrix_short * a, const double x)`
"""
function matrix_short_add_constant(a, x)
    ccall((:gsl_matrix_short_add_constant, libgsl), Cint, (Ref{gsl_matrix_short}, Cdouble), a, x)
end

@doc md"""
    matrix_short_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_short_add_diagonal (gsl_matrix_short * a, const double x)`
"""
function matrix_short_add_diagonal(a, x)
    ccall((:gsl_matrix_short_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_short}, Cdouble), a, x)
end

@doc md"""
    matrix_short_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_short_get_row(gsl_vector_short * v, const gsl_matrix_short * m, const size_t i)`
"""
function matrix_short_get_row(v, m, i)
    ccall((:gsl_matrix_short_get_row, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_matrix_short}, Csize_t), v, m, i)
end

@doc md"""
    matrix_short_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_short_get_col(gsl_vector_short * v, const gsl_matrix_short * m, const size_t j)`
"""
function matrix_short_get_col(v, m, j)
    ccall((:gsl_matrix_short_get_col, libgsl), Cint, (Ref{gsl_vector_short}, Ref{gsl_matrix_short}, Csize_t), v, m, j)
end

@doc md"""
    matrix_short_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_short_set_row(gsl_matrix_short * m, const size_t i, const gsl_vector_short * v)`
"""
function matrix_short_set_row(m, i, v)
    ccall((:gsl_matrix_short_set_row, libgsl), Cint, (Ref{gsl_matrix_short}, Csize_t, Ref{gsl_vector_short}), m, i, v)
end

@doc md"""
    matrix_short_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_short_set_col(gsl_matrix_short * m, const size_t j, const gsl_vector_short * v)`
"""
function matrix_short_set_col(m, j, v)
    ccall((:gsl_matrix_short_set_col, libgsl), Cint, (Ref{gsl_matrix_short}, Csize_t, Ref{gsl_vector_short}), m, j, v)
end

@doc md"""
    matrix_short_get(m, i, j) -> Cshort

C signature:
`short gsl_matrix_short_get(const gsl_matrix_short * m, const size_t i, const size_t j)`
"""
function matrix_short_get(m, i, j)
    ccall((:gsl_matrix_short_get, libgsl), Cshort, (Ref{gsl_matrix_short}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_short_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_short_set(gsl_matrix_short * m, const size_t i, const size_t j, const short x)`
"""
function matrix_short_set(m, i, j, x)
    ccall((:gsl_matrix_short_set, libgsl), Cvoid, (Ref{gsl_matrix_short}, Csize_t, Csize_t, Cshort), m, i, j, x)
end

@doc md"""
    matrix_short_ptr(m, i, j) -> Ptr{Cshort}

C signature:
`short * gsl_matrix_short_ptr(gsl_matrix_short * m, const size_t i, const size_t j)`
"""
function matrix_short_ptr(m, i, j)
    ccall((:gsl_matrix_short_ptr, libgsl), Ptr{Cshort}, (Ref{gsl_matrix_short}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_short_const_ptr(m, i, j) -> Ptr{Cshort}

C signature:
`const short * gsl_matrix_short_const_ptr(const gsl_matrix_short * m, const size_t i, const size_t j)`
"""
function matrix_short_const_ptr(m, i, j)
    ccall((:gsl_matrix_short_const_ptr, libgsl), Ptr{Cshort}, (Ref{gsl_matrix_short}, Csize_t, Csize_t), m, i, j)
end

