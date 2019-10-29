#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_uint.h ########################################################


@doc md"""
    matrix_uint_alloc(n1, n2) -> Ptr{gsl_matrix_uint}

C signature:
`gsl_matrix_uint * gsl_matrix_uint_alloc (const size_t n1, const size_t n2)`
"""
function matrix_uint_alloc(n1, n2)
    ccall((:gsl_matrix_uint_alloc, libgsl), Ptr{gsl_matrix_uint}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_uint_calloc(n1, n2) -> Ptr{gsl_matrix_uint}

C signature:
`gsl_matrix_uint * gsl_matrix_uint_calloc (const size_t n1, const size_t n2)`
"""
function matrix_uint_calloc(n1, n2)
    ccall((:gsl_matrix_uint_calloc, libgsl), Ptr{gsl_matrix_uint}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_uint_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_uint}

C signature:
`gsl_matrix_uint * gsl_matrix_uint_alloc_from_block (gsl_block_uint * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_uint_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_uint_alloc_from_block, libgsl), Ptr{gsl_matrix_uint}, (Ref{gsl_block_uint}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_uint_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_uint}

C signature:
`gsl_matrix_uint * gsl_matrix_uint_alloc_from_matrix (gsl_matrix_uint * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_uint_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_uint_alloc_from_matrix, libgsl), Ptr{gsl_matrix_uint}, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_uint_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_uint}

C signature:
`gsl_vector_uint * gsl_vector_uint_alloc_row_from_matrix (gsl_matrix_uint * m, const size_t i)`
"""
function vector_uint_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_uint_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_uint}, (Ref{gsl_matrix_uint}, Csize_t), m, i)
end

@doc md"""
    vector_uint_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_uint}

C signature:
`gsl_vector_uint * gsl_vector_uint_alloc_col_from_matrix (gsl_matrix_uint * m, const size_t j)`
"""
function vector_uint_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_uint_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_uint}, (Ref{gsl_matrix_uint}, Csize_t), m, j)
end

@doc md"""
    matrix_uint_free(m) -> Cvoid

C signature:
`void gsl_matrix_uint_free (gsl_matrix_uint * m)`
"""
function matrix_uint_free(m)
    ccall((:gsl_matrix_uint_free, libgsl), Cvoid, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_submatrix(m, i, j, n1, n2) -> _gsl_matrix_uint_view

C signature:
`_gsl_matrix_uint_view gsl_matrix_uint_submatrix (gsl_matrix_uint * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_uint_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_uint_submatrix, libgsl), _gsl_matrix_uint_view, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_uint_row(m, i) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_row (gsl_matrix_uint * m, const size_t i)`
"""
function matrix_uint_row(m, i)
    ccall((:gsl_matrix_uint_row, libgsl), _gsl_vector_uint_view, (Ref{gsl_matrix_uint}, Csize_t), m, i)
end

@doc md"""
    matrix_uint_column(m, j) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_column (gsl_matrix_uint * m, const size_t j)`
"""
function matrix_uint_column(m, j)
    ccall((:gsl_matrix_uint_column, libgsl), _gsl_vector_uint_view, (Ref{gsl_matrix_uint}, Csize_t), m, j)
end

@doc md"""
    matrix_uint_diagonal(m) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_diagonal (gsl_matrix_uint * m)`
"""
function matrix_uint_diagonal(m)
    ccall((:gsl_matrix_uint_diagonal, libgsl), _gsl_vector_uint_view, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_subdiagonal(m, k) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_subdiagonal (gsl_matrix_uint * m, const size_t k)`
"""
function matrix_uint_subdiagonal(m, k)
    ccall((:gsl_matrix_uint_subdiagonal, libgsl), _gsl_vector_uint_view, (Ref{gsl_matrix_uint}, Csize_t), m, k)
end

@doc md"""
    matrix_uint_superdiagonal(m, k) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_superdiagonal (gsl_matrix_uint * m, const size_t k)`
"""
function matrix_uint_superdiagonal(m, k)
    ccall((:gsl_matrix_uint_superdiagonal, libgsl), _gsl_vector_uint_view, (Ref{gsl_matrix_uint}, Csize_t), m, k)
end

@doc md"""
    matrix_uint_subrow(m, i, offset, n) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_subrow (gsl_matrix_uint * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_uint_subrow(m, i, offset, n)
    ccall((:gsl_matrix_uint_subrow, libgsl), _gsl_vector_uint_view, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_uint_subcolumn(m, j, offset, n) -> _gsl_vector_uint_view

C signature:
`_gsl_vector_uint_view gsl_matrix_uint_subcolumn (gsl_matrix_uint * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_uint_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_uint_subcolumn, libgsl), _gsl_vector_uint_view, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_uint_view_array(base, n1, n2) -> _gsl_matrix_uint_view

C signature:
`_gsl_matrix_uint_view gsl_matrix_uint_view_array (unsigned int * base, const size_t n1, const size_t n2)`
"""
function matrix_uint_view_array(base, n1, n2)
    ccall((:gsl_matrix_uint_view_array, libgsl), _gsl_matrix_uint_view, (Ref{Cuint}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_uint_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_uint_view

C signature:
`_gsl_matrix_uint_view gsl_matrix_uint_view_array_with_tda (unsigned int * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uint_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_uint_view_array_with_tda, libgsl), _gsl_matrix_uint_view, (Ref{Cuint}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_uint_view_vector(v, n1, n2) -> _gsl_matrix_uint_view

C signature:
`_gsl_matrix_uint_view gsl_matrix_uint_view_vector (gsl_vector_uint * v, const size_t n1, const size_t n2)`
"""
function matrix_uint_view_vector(v, n1, n2)
    ccall((:gsl_matrix_uint_view_vector, libgsl), _gsl_matrix_uint_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_uint_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_uint_view

C signature:
`_gsl_matrix_uint_view gsl_matrix_uint_view_vector_with_tda (gsl_vector_uint * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uint_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_uint_view_vector_with_tda, libgsl), _gsl_matrix_uint_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_uint_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_uint_const_view

C signature:
`_gsl_matrix_uint_const_view gsl_matrix_uint_const_submatrix (const gsl_matrix_uint * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_uint_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_uint_const_submatrix, libgsl), _gsl_matrix_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_uint_const_row(m, i) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_row (const gsl_matrix_uint * m, const size_t i)`
"""
function matrix_uint_const_row(m, i)
    ccall((:gsl_matrix_uint_const_row, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t), m, i)
end

@doc md"""
    matrix_uint_const_column(m, j) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_column (const gsl_matrix_uint * m, const size_t j)`
"""
function matrix_uint_const_column(m, j)
    ccall((:gsl_matrix_uint_const_column, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t), m, j)
end

@doc md"""
    matrix_uint_const_diagonal(m) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_diagonal (const gsl_matrix_uint * m)`
"""
function matrix_uint_const_diagonal(m)
    ccall((:gsl_matrix_uint_const_diagonal, libgsl), _gsl_vector_uint_const_view, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_const_subdiagonal(m, k) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_subdiagonal (const gsl_matrix_uint * m, const size_t k)`
"""
function matrix_uint_const_subdiagonal(m, k)
    ccall((:gsl_matrix_uint_const_subdiagonal, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t), m, k)
end

@doc md"""
    matrix_uint_const_superdiagonal(m, k) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_superdiagonal (const gsl_matrix_uint * m, const size_t k)`
"""
function matrix_uint_const_superdiagonal(m, k)
    ccall((:gsl_matrix_uint_const_superdiagonal, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t), m, k)
end

@doc md"""
    matrix_uint_const_subrow(m, i, offset, n) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_subrow (const gsl_matrix_uint * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_uint_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_uint_const_subrow, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_uint_const_subcolumn(m, j, offset, n) -> _gsl_vector_uint_const_view

C signature:
`_gsl_vector_uint_const_view gsl_matrix_uint_const_subcolumn (const gsl_matrix_uint * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_uint_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_uint_const_subcolumn, libgsl), _gsl_vector_uint_const_view, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_uint_const_view_array(base, n1, n2) -> _gsl_matrix_uint_const_view

C signature:
`_gsl_matrix_uint_const_view gsl_matrix_uint_const_view_array (const unsigned int * base, const size_t n1, const size_t n2)`
"""
function matrix_uint_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_uint_const_view_array, libgsl), _gsl_matrix_uint_const_view, (Ref{Cuint}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_uint_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_uint_const_view

C signature:
`_gsl_matrix_uint_const_view gsl_matrix_uint_const_view_array_with_tda (const unsigned int * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uint_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_uint_const_view_array_with_tda, libgsl), _gsl_matrix_uint_const_view, (Ref{Cuint}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_uint_const_view_vector(v, n1, n2) -> _gsl_matrix_uint_const_view

C signature:
`_gsl_matrix_uint_const_view gsl_matrix_uint_const_view_vector (const gsl_vector_uint * v, const size_t n1, const size_t n2)`
"""
function matrix_uint_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_uint_const_view_vector, libgsl), _gsl_matrix_uint_const_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_uint_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_uint_const_view

C signature:
`_gsl_matrix_uint_const_view gsl_matrix_uint_const_view_vector_with_tda (const gsl_vector_uint * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_uint_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_uint_const_view_vector_with_tda, libgsl), _gsl_matrix_uint_const_view, (Ref{gsl_vector_uint}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_uint_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_uint_set_zero (gsl_matrix_uint * m)`
"""
function matrix_uint_set_zero(m)
    ccall((:gsl_matrix_uint_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_uint_set_identity (gsl_matrix_uint * m)`
"""
function matrix_uint_set_identity(m)
    ccall((:gsl_matrix_uint_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_uint_set_all (gsl_matrix_uint * m, unsigned int x)`
"""
function matrix_uint_set_all(m, x)
    ccall((:gsl_matrix_uint_set_all, libgsl), Cvoid, (Ref{gsl_matrix_uint}, Cuint), m, x)
end

@doc md"""
    matrix_uint_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_uint_fread (FILE * stream, gsl_matrix_uint * m)`
"""
function matrix_uint_fread(stream, m)
    ccall((:gsl_matrix_uint_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uint}), stream, m)
end

@doc md"""
    matrix_uint_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_uint_fwrite (FILE * stream, const gsl_matrix_uint * m)`
"""
function matrix_uint_fwrite(stream, m)
    ccall((:gsl_matrix_uint_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uint}), stream, m)
end

@doc md"""
    matrix_uint_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_uint_fscanf (FILE * stream, gsl_matrix_uint * m)`
"""
function matrix_uint_fscanf(stream, m)
    ccall((:gsl_matrix_uint_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uint}), stream, m)
end

@doc md"""
    matrix_uint_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_uint_fprintf (FILE * stream, const gsl_matrix_uint * m, const char * format)`
"""
function matrix_uint_fprintf(stream, m, format)
    ccall((:gsl_matrix_uint_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_uint}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_uint_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_uint_memcpy(gsl_matrix_uint * dest, const gsl_matrix_uint * src)`
"""
function matrix_uint_memcpy(dest, src)
    ccall((:gsl_matrix_uint_memcpy, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), dest, src)
end

@doc md"""
    matrix_uint_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_uint_swap(gsl_matrix_uint * m1, gsl_matrix_uint * m2)`
"""
function matrix_uint_swap(m1, m2)
    ccall((:gsl_matrix_uint_swap, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), m1, m2)
end

@doc md"""
    matrix_uint_tricpy(Uplo, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_uint_tricpy(CBLAS_UPLO_t Uplo, CBLAS_DIAG_t Diag, gsl_matrix_uint * dest, const gsl_matrix_uint * src)`
"""
function matrix_uint_tricpy(Uplo, Diag, dest, src)
    ccall((:gsl_matrix_uint_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), Uplo, Diag, dest, src)
end

@doc md"""
    matrix_uint_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_uint_swap_rows(gsl_matrix_uint * m, const size_t i, const size_t j)`
"""
function matrix_uint_swap_rows(m, i, j)
    ccall((:gsl_matrix_uint_swap_rows, libgsl), Cint, (Ref{gsl_matrix_uint}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uint_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_uint_swap_columns(gsl_matrix_uint * m, const size_t i, const size_t j)`
"""
function matrix_uint_swap_columns(m, i, j)
    ccall((:gsl_matrix_uint_swap_columns, libgsl), Cint, (Ref{gsl_matrix_uint}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uint_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_uint_swap_rowcol(gsl_matrix_uint * m, const size_t i, const size_t j)`
"""
function matrix_uint_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_uint_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_uint}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uint_transpose(m) -> Cint

C signature:
`int gsl_matrix_uint_transpose (gsl_matrix_uint * m)`
"""
function matrix_uint_transpose(m)
    ccall((:gsl_matrix_uint_transpose, libgsl), Cint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_uint_transpose_memcpy (gsl_matrix_uint * dest, const gsl_matrix_uint * src)`
"""
function matrix_uint_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_uint_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), dest, src)
end

@doc md"""
    matrix_uint_transpose_tricpy(Uplo_src, Diag, dest, src) -> Cint

C signature:
`int gsl_matrix_uint_transpose_tricpy (CBLAS_UPLO_t Uplo_src, CBLAS_DIAG_t Diag, gsl_matrix_uint * dest, const gsl_matrix_uint * src)`
"""
function matrix_uint_transpose_tricpy(Uplo_src, Diag, dest, src)
    ccall((:gsl_matrix_uint_transpose_tricpy, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_DIAG_t, Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), Uplo_src, Diag, dest, src)
end

@doc md"""
    matrix_uint_max(m) -> Cuint

C signature:
`unsigned int gsl_matrix_uint_max (const gsl_matrix_uint * m)`
"""
function matrix_uint_max(m)
    ccall((:gsl_matrix_uint_max, libgsl), Cuint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_min(m) -> Cuint

C signature:
`unsigned int gsl_matrix_uint_min (const gsl_matrix_uint * m)`
"""
function matrix_uint_min(m)
    ccall((:gsl_matrix_uint_min, libgsl), Cuint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_uint_minmax (const gsl_matrix_uint * m, unsigned int * min_out, unsigned int * max_out)`
"""
function matrix_uint_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_uint_minmax, libgsl), Cvoid, (Ref{gsl_matrix_uint}, Ref{Cuint}, Ref{Cuint}), m, min_out, max_out)
end

@doc md"""
    matrix_uint_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_uint_max_index (const gsl_matrix_uint * m, size_t * imax, size_t *jmax)`
"""
function matrix_uint_max_index(m, imax, jmax)
    ccall((:gsl_matrix_uint_max_index, libgsl), Cvoid, (Ref{gsl_matrix_uint}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_uint_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_uint_min_index (const gsl_matrix_uint * m, size_t * imin, size_t *jmin)`
"""
function matrix_uint_min_index(m, imin, jmin)
    ccall((:gsl_matrix_uint_min_index, libgsl), Cvoid, (Ref{gsl_matrix_uint}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_uint_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_uint_minmax_index (const gsl_matrix_uint * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_uint_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_uint_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_uint}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_uint_equal(a, b) -> Cint

C signature:
`int gsl_matrix_uint_equal (const gsl_matrix_uint * a, const gsl_matrix_uint * b)`
"""
function matrix_uint_equal(a, b)
    ccall((:gsl_matrix_uint_equal, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), a, b)
end

@doc md"""
    matrix_uint_isnull(m) -> Cint

C signature:
`int gsl_matrix_uint_isnull (const gsl_matrix_uint * m)`
"""
function matrix_uint_isnull(m)
    ccall((:gsl_matrix_uint_isnull, libgsl), Cint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_ispos(m) -> Cint

C signature:
`int gsl_matrix_uint_ispos (const gsl_matrix_uint * m)`
"""
function matrix_uint_ispos(m)
    ccall((:gsl_matrix_uint_ispos, libgsl), Cint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_isneg(m) -> Cint

C signature:
`int gsl_matrix_uint_isneg (const gsl_matrix_uint * m)`
"""
function matrix_uint_isneg(m)
    ccall((:gsl_matrix_uint_isneg, libgsl), Cint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_uint_isnonneg (const gsl_matrix_uint * m)`
"""
function matrix_uint_isnonneg(m)
    ccall((:gsl_matrix_uint_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_uint},), m)
end

@doc md"""
    matrix_uint_add(a, b) -> Cint

C signature:
`int gsl_matrix_uint_add (gsl_matrix_uint * a, const gsl_matrix_uint * b)`
"""
function matrix_uint_add(a, b)
    ccall((:gsl_matrix_uint_add, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), a, b)
end

@doc md"""
    matrix_uint_sub(a, b) -> Cint

C signature:
`int gsl_matrix_uint_sub (gsl_matrix_uint * a, const gsl_matrix_uint * b)`
"""
function matrix_uint_sub(a, b)
    ccall((:gsl_matrix_uint_sub, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), a, b)
end

@doc md"""
    matrix_uint_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_uint_mul_elements (gsl_matrix_uint * a, const gsl_matrix_uint * b)`
"""
function matrix_uint_mul_elements(a, b)
    ccall((:gsl_matrix_uint_mul_elements, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), a, b)
end

@doc md"""
    matrix_uint_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_uint_div_elements (gsl_matrix_uint * a, const gsl_matrix_uint * b)`
"""
function matrix_uint_div_elements(a, b)
    ccall((:gsl_matrix_uint_div_elements, libgsl), Cint, (Ref{gsl_matrix_uint}, Ref{gsl_matrix_uint}), a, b)
end

@doc md"""
    matrix_uint_scale(a, x) -> Cint

C signature:
`int gsl_matrix_uint_scale (gsl_matrix_uint * a, const double x)`
"""
function matrix_uint_scale(a, x)
    ccall((:gsl_matrix_uint_scale, libgsl), Cint, (Ref{gsl_matrix_uint}, Cdouble), a, x)
end

@doc md"""
    matrix_uint_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_uint_add_constant (gsl_matrix_uint * a, const double x)`
"""
function matrix_uint_add_constant(a, x)
    ccall((:gsl_matrix_uint_add_constant, libgsl), Cint, (Ref{gsl_matrix_uint}, Cdouble), a, x)
end

@doc md"""
    matrix_uint_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_uint_add_diagonal (gsl_matrix_uint * a, const double x)`
"""
function matrix_uint_add_diagonal(a, x)
    ccall((:gsl_matrix_uint_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_uint}, Cdouble), a, x)
end

@doc md"""
    matrix_uint_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_uint_get_row(gsl_vector_uint * v, const gsl_matrix_uint * m, const size_t i)`
"""
function matrix_uint_get_row(v, m, i)
    ccall((:gsl_matrix_uint_get_row, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_matrix_uint}, Csize_t), v, m, i)
end

@doc md"""
    matrix_uint_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_uint_get_col(gsl_vector_uint * v, const gsl_matrix_uint * m, const size_t j)`
"""
function matrix_uint_get_col(v, m, j)
    ccall((:gsl_matrix_uint_get_col, libgsl), Cint, (Ref{gsl_vector_uint}, Ref{gsl_matrix_uint}, Csize_t), v, m, j)
end

@doc md"""
    matrix_uint_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_uint_set_row(gsl_matrix_uint * m, const size_t i, const gsl_vector_uint * v)`
"""
function matrix_uint_set_row(m, i, v)
    ccall((:gsl_matrix_uint_set_row, libgsl), Cint, (Ref{gsl_matrix_uint}, Csize_t, Ref{gsl_vector_uint}), m, i, v)
end

@doc md"""
    matrix_uint_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_uint_set_col(gsl_matrix_uint * m, const size_t j, const gsl_vector_uint * v)`
"""
function matrix_uint_set_col(m, j, v)
    ccall((:gsl_matrix_uint_set_col, libgsl), Cint, (Ref{gsl_matrix_uint}, Csize_t, Ref{gsl_vector_uint}), m, j, v)
end

@doc md"""
    matrix_uint_get(m, i, j) -> Cuint

C signature:
`unsigned int gsl_matrix_uint_get(const gsl_matrix_uint * m, const size_t i, const size_t j)`
"""
function matrix_uint_get(m, i, j)
    ccall((:gsl_matrix_uint_get, libgsl), Cuint, (Ref{gsl_matrix_uint}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uint_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_uint_set(gsl_matrix_uint * m, const size_t i, const size_t j, const unsigned int x)`
"""
function matrix_uint_set(m, i, j, x)
    ccall((:gsl_matrix_uint_set, libgsl), Cvoid, (Ref{gsl_matrix_uint}, Csize_t, Csize_t, Cuint), m, i, j, x)
end

@doc md"""
    matrix_uint_ptr(m, i, j) -> Ptr{Cuint}

C signature:
`unsigned int * gsl_matrix_uint_ptr(gsl_matrix_uint * m, const size_t i, const size_t j)`
"""
function matrix_uint_ptr(m, i, j)
    ccall((:gsl_matrix_uint_ptr, libgsl), Ptr{Cuint}, (Ref{gsl_matrix_uint}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_uint_const_ptr(m, i, j) -> Ptr{Cuint}

C signature:
`const unsigned int * gsl_matrix_uint_const_ptr(const gsl_matrix_uint * m, const size_t i, const size_t j)`
"""
function matrix_uint_const_ptr(m, i, j)
    ccall((:gsl_matrix_uint_const_ptr, libgsl), Ptr{Cuint}, (Ref{gsl_matrix_uint}, Csize_t, Csize_t), m, i, j)
end

