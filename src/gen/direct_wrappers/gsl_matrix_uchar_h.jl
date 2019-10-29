#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_uchar.h #######################################################


@doc md"""
    matrix_uchar_alloc(n1, n2) -> Ptr{gsl_matrix_uchar}

C signature:
`gsl_matrix_uchar * gsl_matrix_uchar_alloc (const size_t n1, const size_t n2)`
"""
function matrix_uchar_alloc(n1, n2)
    ccall((:gsl_matrix_uchar_alloc, libgsl), Ptr{gsl_matrix_uchar}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_uchar_calloc(n1, n2) -> Ptr{gsl_matrix_uchar}

C signature:
`gsl_matrix_uchar * gsl_matrix_uchar_calloc (const size_t n1, const size_t n2)`
"""
function matrix_uchar_calloc(n1, n2)
    ccall((:gsl_matrix_uchar_calloc, libgsl), Ptr{gsl_matrix_uchar}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_uchar_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_uchar}

C signature:
`gsl_matrix_uchar * gsl_matrix_uchar_alloc_from_block (gsl_block_uchar * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_uchar_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_uchar_alloc_from_block, libgsl), Ptr{gsl_matrix_uchar}, (Ref{gsl_block_uchar}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_uchar_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_uchar}

C signature:
`gsl_matrix_uchar * gsl_matrix_uchar_alloc_from_matrix (gsl_matrix_uchar * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_uchar_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_uchar_alloc_from_matrix, libgsl), Ptr{gsl_matrix_uchar}, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_uchar_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_uchar}

C signature:
`gsl_vector_uchar * gsl_vector_uchar_alloc_row_from_matrix (gsl_matrix_uchar * m, const size_t i)`
"""
function vector_uchar_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_uchar_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_uchar}, (Ref{gsl_matrix_uchar}, Csize_t), m, i)
end

@doc md"""
    vector_uchar_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_uchar}

C signature:
`gsl_vector_uchar * gsl_vector_uchar_alloc_col_from_matrix (gsl_matrix_uchar * m, const size_t j)`
"""
function vector_uchar_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_uchar_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_uchar}, (Ref{gsl_matrix_uchar}, Csize_t), m, j)
end

@doc md"""
    matrix_uchar_free(m) -> Cvoid

C signature:
`void gsl_matrix_uchar_free (gsl_matrix_uchar * m)`
"""
function matrix_uchar_free(m)
    ccall((:gsl_matrix_uchar_free, libgsl), Cvoid, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_submatrix(m, i, j, n1, n2) -> _gsl_matrix_uchar_view

C signature:
`_gsl_matrix_uchar_view gsl_matrix_uchar_submatrix (gsl_matrix_uchar * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_uchar_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_uchar_submatrix, libgsl), _gsl_matrix_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_uchar_row(m, i) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_row (gsl_matrix_uchar * m, const size_t i)`
"""
function matrix_uchar_row(m, i)
    ccall((:gsl_matrix_uchar_row, libgsl), _gsl_vector_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t), m, i)
end

@doc md"""
    matrix_uchar_column(m, j) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_column (gsl_matrix_uchar * m, const size_t j)`
"""
function matrix_uchar_column(m, j)
    ccall((:gsl_matrix_uchar_column, libgsl), _gsl_vector_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t), m, j)
end

@doc md"""
    matrix_uchar_diagonal(m) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_diagonal (gsl_matrix_uchar * m)`
"""
function matrix_uchar_diagonal(m)
    ccall((:gsl_matrix_uchar_diagonal, libgsl), _gsl_vector_uchar_view, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_subdiagonal(m, k) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_subdiagonal (gsl_matrix_uchar * m, const size_t k)`
"""
function matrix_uchar_subdiagonal(m, k)
    ccall((:gsl_matrix_uchar_subdiagonal, libgsl), _gsl_vector_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t), m, k)
end

@doc md"""
    matrix_uchar_superdiagonal(m, k) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_superdiagonal (gsl_matrix_uchar * m, const size_t k)`
"""
function matrix_uchar_superdiagonal(m, k)
    ccall((:gsl_matrix_uchar_superdiagonal, libgsl), _gsl_vector_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t), m, k)
end

@doc md"""
    matrix_uchar_subrow(m, i, offset, n) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_subrow (gsl_matrix_uchar * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_uchar_subrow(m, i, offset, n)
    ccall((:gsl_matrix_uchar_subrow, libgsl), _gsl_vector_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_uchar_subcolumn(m, j, offset, n) -> _gsl_vector_uchar_view

C signature:
`_gsl_vector_uchar_view gsl_matrix_uchar_subcolumn (gsl_matrix_uchar * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_uchar_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_uchar_subcolumn, libgsl), _gsl_vector_uchar_view, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_uchar_view_array(base, n1, n2) -> _gsl_matrix_uchar_view

C signature:
`_gsl_matrix_uchar_view gsl_matrix_uchar_view_array (unsigned char * base, const size_t n1, const size_t n2)`
"""
function matrix_uchar_view_array(base, n1, n2)
    ccall((:gsl_matrix_uchar_view_array, libgsl), _gsl_matrix_uchar_view, (Ref{Cuchar}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_uchar_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_uchar_view

C signature:
`_gsl_matrix_uchar_view gsl_matrix_uchar_view_array_with_tda (unsigned char * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uchar_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_uchar_view_array_with_tda, libgsl), _gsl_matrix_uchar_view, (Ref{Cuchar}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_uchar_view_vector(v, n1, n2) -> _gsl_matrix_uchar_view

C signature:
`_gsl_matrix_uchar_view gsl_matrix_uchar_view_vector (gsl_vector_uchar * v, const size_t n1, const size_t n2)`
"""
function matrix_uchar_view_vector(v, n1, n2)
    ccall((:gsl_matrix_uchar_view_vector, libgsl), _gsl_matrix_uchar_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_uchar_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_uchar_view

C signature:
`_gsl_matrix_uchar_view gsl_matrix_uchar_view_vector_with_tda (gsl_vector_uchar * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uchar_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_uchar_view_vector_with_tda, libgsl), _gsl_matrix_uchar_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_uchar_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_uchar_const_view

C signature:
`_gsl_matrix_uchar_const_view gsl_matrix_uchar_const_submatrix (const gsl_matrix_uchar * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_uchar_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_uchar_const_submatrix, libgsl), _gsl_matrix_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_uchar_const_row(m, i) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_row (const gsl_matrix_uchar * m, const size_t i)`
"""
function matrix_uchar_const_row(m, i)
    ccall((:gsl_matrix_uchar_const_row, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t), m, i)
end

@doc md"""
    matrix_uchar_const_column(m, j) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_column (const gsl_matrix_uchar * m, const size_t j)`
"""
function matrix_uchar_const_column(m, j)
    ccall((:gsl_matrix_uchar_const_column, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t), m, j)
end

@doc md"""
    matrix_uchar_const_diagonal(m) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_diagonal (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_const_diagonal(m)
    ccall((:gsl_matrix_uchar_const_diagonal, libgsl), _gsl_vector_uchar_const_view, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_const_subdiagonal(m, k) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_subdiagonal (const gsl_matrix_uchar * m, const size_t k)`
"""
function matrix_uchar_const_subdiagonal(m, k)
    ccall((:gsl_matrix_uchar_const_subdiagonal, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t), m, k)
end

@doc md"""
    matrix_uchar_const_superdiagonal(m, k) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_superdiagonal (const gsl_matrix_uchar * m, const size_t k)`
"""
function matrix_uchar_const_superdiagonal(m, k)
    ccall((:gsl_matrix_uchar_const_superdiagonal, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t), m, k)
end

@doc md"""
    matrix_uchar_const_subrow(m, i, offset, n) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_subrow (const gsl_matrix_uchar * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_uchar_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_uchar_const_subrow, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_uchar_const_subcolumn(m, j, offset, n) -> _gsl_vector_uchar_const_view

C signature:
`_gsl_vector_uchar_const_view gsl_matrix_uchar_const_subcolumn (const gsl_matrix_uchar * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_uchar_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_uchar_const_subcolumn, libgsl), _gsl_vector_uchar_const_view, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_uchar_const_view_array(base, n1, n2) -> _gsl_matrix_uchar_const_view

C signature:
`_gsl_matrix_uchar_const_view gsl_matrix_uchar_const_view_array (const unsigned char * base, const size_t n1, const size_t n2)`
"""
function matrix_uchar_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_uchar_const_view_array, libgsl), _gsl_matrix_uchar_const_view, (Ref{Cuchar}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_uchar_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_uchar_const_view

C signature:
`_gsl_matrix_uchar_const_view gsl_matrix_uchar_const_view_array_with_tda (const unsigned char * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uchar_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_uchar_const_view_array_with_tda, libgsl), _gsl_matrix_uchar_const_view, (Ref{Cuchar}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_uchar_const_view_vector(v, n1, n2) -> _gsl_matrix_uchar_const_view

C signature:
`_gsl_matrix_uchar_const_view gsl_matrix_uchar_const_view_vector (const gsl_vector_uchar * v, const size_t n1, const size_t n2)`
"""
function matrix_uchar_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_uchar_const_view_vector, libgsl), _gsl_matrix_uchar_const_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_uchar_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_uchar_const_view

C signature:
`_gsl_matrix_uchar_const_view gsl_matrix_uchar_const_view_vector_with_tda (const gsl_vector_uchar * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uchar_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_uchar_const_view_vector_with_tda, libgsl), _gsl_matrix_uchar_const_view, (Ref{gsl_vector_uchar}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_uchar_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_uchar_set_zero (gsl_matrix_uchar * m)`
"""
function matrix_uchar_set_zero(m)
    ccall((:gsl_matrix_uchar_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_uchar_set_identity (gsl_matrix_uchar * m)`
"""
function matrix_uchar_set_identity(m)
    ccall((:gsl_matrix_uchar_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_uchar_set_all (gsl_matrix_uchar * m, unsigned char x)`
"""
function matrix_uchar_set_all(m, x)
    ccall((:gsl_matrix_uchar_set_all, libgsl), Cvoid, (Ref{gsl_matrix_uchar}, Cuchar), m, x)
end

@doc md"""
    matrix_uchar_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_uchar_fread (FILE * stream, gsl_matrix_uchar * m)`
"""
function matrix_uchar_fread(stream, m)
    ccall((:gsl_matrix_uchar_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uchar}), stream, m)
end

@doc md"""
    matrix_uchar_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_uchar_fwrite (FILE * stream, const gsl_matrix_uchar * m)`
"""
function matrix_uchar_fwrite(stream, m)
    ccall((:gsl_matrix_uchar_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uchar}), stream, m)
end

@doc md"""
    matrix_uchar_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_uchar_fscanf (FILE * stream, gsl_matrix_uchar * m)`
"""
function matrix_uchar_fscanf(stream, m)
    ccall((:gsl_matrix_uchar_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uchar}), stream, m)
end

@doc md"""
    matrix_uchar_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_uchar_fprintf (FILE * stream, const gsl_matrix_uchar * m, const char * format)`
"""
function matrix_uchar_fprintf(stream, m, format)
    ccall((:gsl_matrix_uchar_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uchar}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_uchar_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_uchar_memcpy(gsl_matrix_uchar * dest, const gsl_matrix_uchar * src)`
"""
function matrix_uchar_memcpy(dest, src)
    ccall((:gsl_matrix_uchar_memcpy, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), dest, src)
end

@doc md"""
    matrix_uchar_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_uchar_swap(gsl_matrix_uchar * m1, gsl_matrix_uchar * m2)`
"""
function matrix_uchar_swap(m1, m2)
    ccall((:gsl_matrix_uchar_swap, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), m1, m2)
end

@doc md"""
    matrix_uchar_tricpy(Uplo, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_uchar_tricpy(CBLAS_UPLO_t Uplo, CBLAS_DIAG_t Diag, gsl_matrix_uchar * dest, const gsl_matrix_uchar * src)`
"""
function matrix_uchar_tricpy(Uplo, Diag, dest, src)
    ccall((:gsl_matrix_uchar_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), Uplo, Diag, dest, src)
end

@doc md"""
    matrix_uchar_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_uchar_swap_rows(gsl_matrix_uchar * m, const size_t i, const size_t j)`
"""
function matrix_uchar_swap_rows(m, i, j)
    ccall((:gsl_matrix_uchar_swap_rows, libgsl), Cint, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uchar_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_uchar_swap_columns(gsl_matrix_uchar * m, const size_t i, const size_t j)`
"""
function matrix_uchar_swap_columns(m, i, j)
    ccall((:gsl_matrix_uchar_swap_columns, libgsl), Cint, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uchar_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_uchar_swap_rowcol(gsl_matrix_uchar * m, const size_t i, const size_t j)`
"""
function matrix_uchar_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_uchar_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uchar_transpose(m) -> Cint

C signature:
`int gsl_matrix_uchar_transpose (gsl_matrix_uchar * m)`
"""
function matrix_uchar_transpose(m)
    ccall((:gsl_matrix_uchar_transpose, libgsl), Cint, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_uchar_transpose_memcpy (gsl_matrix_uchar * dest, const gsl_matrix_uchar * src)`
"""
function matrix_uchar_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_uchar_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), dest, src)
end

@doc md"""
    matrix_uchar_transpose_tricpy(Uplo_src, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_uchar_transpose_tricpy (CBLAS_UPLO_t Uplo_src, CBLAS_DIAG_t Diag, gsl_matrix_uchar * dest, const gsl_matrix_uchar * src)`
"""
function matrix_uchar_transpose_tricpy(Uplo_src, Diag, dest, src)
    ccall((:gsl_matrix_uchar_transpose_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), Uplo_src, Diag, dest, src)
end

@doc md"""
    matrix_uchar_max(m) -> Cuchar

C signature:
`unsigned char gsl_matrix_uchar_max (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_max(m)
    ccall((:gsl_matrix_uchar_max, libgsl), Cuchar, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_min(m) -> Cuchar

C signature:
`unsigned char gsl_matrix_uchar_min (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_min(m)
    ccall((:gsl_matrix_uchar_min, libgsl), Cuchar, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_uchar_minmax (const gsl_matrix_uchar * m, unsigned char * min_out, unsigned char * max_out)`
"""
function matrix_uchar_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_uchar_minmax, libgsl), Cvoid, (Ref{gsl_matrix_uchar}, Ref{Cuchar}, Ref{Cuchar}), m, min_out, max_out)
end

@doc md"""
    matrix_uchar_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_uchar_max_index (const gsl_matrix_uchar * m, size_t * imax, size_t *jmax)`
"""
function matrix_uchar_max_index(m, imax, jmax)
    ccall((:gsl_matrix_uchar_max_index, libgsl), Cvoid, (Ref{gsl_matrix_uchar}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_uchar_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_uchar_min_index (const gsl_matrix_uchar * m, size_t * imin, size_t *jmin)`
"""
function matrix_uchar_min_index(m, imin, jmin)
    ccall((:gsl_matrix_uchar_min_index, libgsl), Cvoid, (Ref{gsl_matrix_uchar}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_uchar_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_uchar_minmax_index (const gsl_matrix_uchar * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_uchar_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_uchar_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_uchar}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_uchar_equal(a, b) -> Cint

C signature:
`int gsl_matrix_uchar_equal (const gsl_matrix_uchar * a, const gsl_matrix_uchar * b)`
"""
function matrix_uchar_equal(a, b)
    ccall((:gsl_matrix_uchar_equal, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), a, b)
end

@doc md"""
    matrix_uchar_isnull(m) -> Cint

C signature:
`int gsl_matrix_uchar_isnull (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_isnull(m)
    ccall((:gsl_matrix_uchar_isnull, libgsl), Cint, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_ispos(m) -> Cint

C signature:
`int gsl_matrix_uchar_ispos (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_ispos(m)
    ccall((:gsl_matrix_uchar_ispos, libgsl), Cint, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_isneg(m) -> Cint

C signature:
`int gsl_matrix_uchar_isneg (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_isneg(m)
    ccall((:gsl_matrix_uchar_isneg, libgsl), Cint, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_uchar_isnonneg (const gsl_matrix_uchar * m)`
"""
function matrix_uchar_isnonneg(m)
    ccall((:gsl_matrix_uchar_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_uchar},), m)
end

@doc md"""
    matrix_uchar_add(a, b) -> Cint

C signature:
`int gsl_matrix_uchar_add (gsl_matrix_uchar * a, const gsl_matrix_uchar * b)`
"""
function matrix_uchar_add(a, b)
    ccall((:gsl_matrix_uchar_add, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), a, b)
end

@doc md"""
    matrix_uchar_sub(a, b) -> Cint

C signature:
`int gsl_matrix_uchar_sub (gsl_matrix_uchar * a, const gsl_matrix_uchar * b)`
"""
function matrix_uchar_sub(a, b)
    ccall((:gsl_matrix_uchar_sub, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), a, b)
end

@doc md"""
    matrix_uchar_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_uchar_mul_elements (gsl_matrix_uchar * a, const gsl_matrix_uchar * b)`
"""
function matrix_uchar_mul_elements(a, b)
    ccall((:gsl_matrix_uchar_mul_elements, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), a, b)
end

@doc md"""
    matrix_uchar_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_uchar_div_elements (gsl_matrix_uchar * a, const gsl_matrix_uchar * b)`
"""
function matrix_uchar_div_elements(a, b)
    ccall((:gsl_matrix_uchar_div_elements, libgsl), Cint, (Ref{gsl_matrix_uchar}, Ref{gsl_matrix_uchar}), a, b)
end

@doc md"""
    matrix_uchar_scale(a, x) -> Cint

C signature:
`int gsl_matrix_uchar_scale (gsl_matrix_uchar * a, const double x)`
"""
function matrix_uchar_scale(a, x)
    ccall((:gsl_matrix_uchar_scale, libgsl), Cint, (Ref{gsl_matrix_uchar}, Cdouble), a, x)
end

@doc md"""
    matrix_uchar_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_uchar_add_constant (gsl_matrix_uchar * a, const double x)`
"""
function matrix_uchar_add_constant(a, x)
    ccall((:gsl_matrix_uchar_add_constant, libgsl), Cint, (Ref{gsl_matrix_uchar}, Cdouble), a, x)
end

@doc md"""
    matrix_uchar_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_uchar_add_diagonal (gsl_matrix_uchar * a, const double x)`
"""
function matrix_uchar_add_diagonal(a, x)
    ccall((:gsl_matrix_uchar_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_uchar}, Cdouble), a, x)
end

@doc md"""
    matrix_uchar_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_uchar_get_row(gsl_vector_uchar * v, const gsl_matrix_uchar * m, const size_t i)`
"""
function matrix_uchar_get_row(v, m, i)
    ccall((:gsl_matrix_uchar_get_row, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_matrix_uchar}, Csize_t), v, m, i)
end

@doc md"""
    matrix_uchar_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_uchar_get_col(gsl_vector_uchar * v, const gsl_matrix_uchar * m, const size_t j)`
"""
function matrix_uchar_get_col(v, m, j)
    ccall((:gsl_matrix_uchar_get_col, libgsl), Cint, (Ref{gsl_vector_uchar}, Ref{gsl_matrix_uchar}, Csize_t), v, m, j)
end

@doc md"""
    matrix_uchar_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_uchar_set_row(gsl_matrix_uchar * m, const size_t i, const gsl_vector_uchar * v)`
"""
function matrix_uchar_set_row(m, i, v)
    ccall((:gsl_matrix_uchar_set_row, libgsl), Cint, (Ref{gsl_matrix_uchar}, Csize_t, Ref{gsl_vector_uchar}), m, i, v)
end

@doc md"""
    matrix_uchar_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_uchar_set_col(gsl_matrix_uchar * m, const size_t j, const gsl_vector_uchar * v)`
"""
function matrix_uchar_set_col(m, j, v)
    ccall((:gsl_matrix_uchar_set_col, libgsl), Cint, (Ref{gsl_matrix_uchar}, Csize_t, Ref{gsl_vector_uchar}), m, j, v)
end

@doc md"""
    matrix_uchar_get(m, i, j) -> Cuchar

C signature:
`unsigned char gsl_matrix_uchar_get(const gsl_matrix_uchar * m, const size_t i, const size_t j)`
"""
function matrix_uchar_get(m, i, j)
    ccall((:gsl_matrix_uchar_get, libgsl), Cuchar, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uchar_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_uchar_set(gsl_matrix_uchar * m, const size_t i, const size_t j, const unsigned char x)`
"""
function matrix_uchar_set(m, i, j, x)
    ccall((:gsl_matrix_uchar_set, libgsl), Cvoid, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t, Cuchar), m, i, j, x)
end

@doc md"""
    matrix_uchar_ptr(m, i, j) -> Ptr{Cuchar}

C signature:
`unsigned char * gsl_matrix_uchar_ptr(gsl_matrix_uchar * m, const size_t i, const size_t j)`
"""
function matrix_uchar_ptr(m, i, j)
    ccall((:gsl_matrix_uchar_ptr, libgsl), Ptr{Cuchar}, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uchar_const_ptr(m, i, j) -> Ptr{Cuchar}

C signature:
`const unsigned char * gsl_matrix_uchar_const_ptr(const gsl_matrix_uchar * m, const size_t i, const size_t j)`
"""
function matrix_uchar_const_ptr(m, i, j)
    ccall((:gsl_matrix_uchar_const_ptr, libgsl), Ptr{Cuchar}, (Ref{gsl_matrix_uchar}, Csize_t, Csize_t), m, i, j)
end

