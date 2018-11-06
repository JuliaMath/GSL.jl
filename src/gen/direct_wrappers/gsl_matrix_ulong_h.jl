#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_ulong.h #######################################################


@doc md"""
    matrix_ulong_alloc(n1, n2) -> Ptr{gsl_matrix_ulong}

C signature:
`gsl_matrix_ulong * gsl_matrix_ulong_alloc (const size_t n1, const size_t n2)`
"""
function matrix_ulong_alloc(n1, n2)
    ccall((:gsl_matrix_ulong_alloc, libgsl), Ptr{gsl_matrix_ulong}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_ulong_calloc(n1, n2) -> Ptr{gsl_matrix_ulong}

C signature:
`gsl_matrix_ulong * gsl_matrix_ulong_calloc (const size_t n1, const size_t n2)`
"""
function matrix_ulong_calloc(n1, n2)
    ccall((:gsl_matrix_ulong_calloc, libgsl), Ptr{gsl_matrix_ulong}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_ulong_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_ulong}

C signature:
`gsl_matrix_ulong * gsl_matrix_ulong_alloc_from_block (gsl_block_ulong * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_ulong_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_ulong_alloc_from_block, libgsl), Ptr{gsl_matrix_ulong}, (Ref{gsl_block_ulong}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_ulong_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_ulong}

C signature:
`gsl_matrix_ulong * gsl_matrix_ulong_alloc_from_matrix (gsl_matrix_ulong * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_ulong_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_ulong_alloc_from_matrix, libgsl), Ptr{gsl_matrix_ulong}, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_ulong_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_ulong}

C signature:
`gsl_vector_ulong * gsl_vector_ulong_alloc_row_from_matrix (gsl_matrix_ulong * m, const size_t i)`
"""
function vector_ulong_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_ulong_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_ulong}, (Ref{gsl_matrix_ulong}, Csize_t), m, i)
end

@doc md"""
    vector_ulong_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_ulong}

C signature:
`gsl_vector_ulong * gsl_vector_ulong_alloc_col_from_matrix (gsl_matrix_ulong * m, const size_t j)`
"""
function vector_ulong_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_ulong_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_ulong}, (Ref{gsl_matrix_ulong}, Csize_t), m, j)
end

@doc md"""
    matrix_ulong_free(m) -> Cvoid

C signature:
`void gsl_matrix_ulong_free (gsl_matrix_ulong * m)`
"""
function matrix_ulong_free(m)
    ccall((:gsl_matrix_ulong_free, libgsl), Cvoid, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_submatrix(m, i, j, n1, n2) -> _gsl_matrix_ulong_view

C signature:
`_gsl_matrix_ulong_view gsl_matrix_ulong_submatrix (gsl_matrix_ulong * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_ulong_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_ulong_submatrix, libgsl), _gsl_matrix_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_ulong_row(m, i) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_row (gsl_matrix_ulong * m, const size_t i)`
"""
function matrix_ulong_row(m, i)
    ccall((:gsl_matrix_ulong_row, libgsl), _gsl_vector_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t), m, i)
end

@doc md"""
    matrix_ulong_column(m, j) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_column (gsl_matrix_ulong * m, const size_t j)`
"""
function matrix_ulong_column(m, j)
    ccall((:gsl_matrix_ulong_column, libgsl), _gsl_vector_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t), m, j)
end

@doc md"""
    matrix_ulong_diagonal(m) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_diagonal (gsl_matrix_ulong * m)`
"""
function matrix_ulong_diagonal(m)
    ccall((:gsl_matrix_ulong_diagonal, libgsl), _gsl_vector_ulong_view, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_subdiagonal(m, k) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_subdiagonal (gsl_matrix_ulong * m, const size_t k)`
"""
function matrix_ulong_subdiagonal(m, k)
    ccall((:gsl_matrix_ulong_subdiagonal, libgsl), _gsl_vector_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t), m, k)
end

@doc md"""
    matrix_ulong_superdiagonal(m, k) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_superdiagonal (gsl_matrix_ulong * m, const size_t k)`
"""
function matrix_ulong_superdiagonal(m, k)
    ccall((:gsl_matrix_ulong_superdiagonal, libgsl), _gsl_vector_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t), m, k)
end

@doc md"""
    matrix_ulong_subrow(m, i, offset, n) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_subrow (gsl_matrix_ulong * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_ulong_subrow(m, i, offset, n)
    ccall((:gsl_matrix_ulong_subrow, libgsl), _gsl_vector_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_ulong_subcolumn(m, j, offset, n) -> _gsl_vector_ulong_view

C signature:
`_gsl_vector_ulong_view gsl_matrix_ulong_subcolumn (gsl_matrix_ulong * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_ulong_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_ulong_subcolumn, libgsl), _gsl_vector_ulong_view, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_ulong_view_array(base, n1, n2) -> _gsl_matrix_ulong_view

C signature:
`_gsl_matrix_ulong_view gsl_matrix_ulong_view_array (unsigned long * base, const size_t n1, const size_t n2)`
"""
function matrix_ulong_view_array(base, n1, n2)
    ccall((:gsl_matrix_ulong_view_array, libgsl), _gsl_matrix_ulong_view, (Ref{Culong}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_ulong_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_ulong_view

C signature:
`_gsl_matrix_ulong_view gsl_matrix_ulong_view_array_with_tda (unsigned long * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ulong_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_ulong_view_array_with_tda, libgsl), _gsl_matrix_ulong_view, (Ref{Culong}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_ulong_view_vector(v, n1, n2) -> _gsl_matrix_ulong_view

C signature:
`_gsl_matrix_ulong_view gsl_matrix_ulong_view_vector (gsl_vector_ulong * v, const size_t n1, const size_t n2)`
"""
function matrix_ulong_view_vector(v, n1, n2)
    ccall((:gsl_matrix_ulong_view_vector, libgsl), _gsl_matrix_ulong_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_ulong_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_ulong_view

C signature:
`_gsl_matrix_ulong_view gsl_matrix_ulong_view_vector_with_tda (gsl_vector_ulong * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ulong_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_ulong_view_vector_with_tda, libgsl), _gsl_matrix_ulong_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_ulong_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_ulong_const_view

C signature:
`_gsl_matrix_ulong_const_view gsl_matrix_ulong_const_submatrix (const gsl_matrix_ulong * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_ulong_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_ulong_const_submatrix, libgsl), _gsl_matrix_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_ulong_const_row(m, i) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_row (const gsl_matrix_ulong * m, const size_t i)`
"""
function matrix_ulong_const_row(m, i)
    ccall((:gsl_matrix_ulong_const_row, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t), m, i)
end

@doc md"""
    matrix_ulong_const_column(m, j) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_column (const gsl_matrix_ulong * m, const size_t j)`
"""
function matrix_ulong_const_column(m, j)
    ccall((:gsl_matrix_ulong_const_column, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t), m, j)
end

@doc md"""
    matrix_ulong_const_diagonal(m) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_diagonal (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_const_diagonal(m)
    ccall((:gsl_matrix_ulong_const_diagonal, libgsl), _gsl_vector_ulong_const_view, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_const_subdiagonal(m, k) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_subdiagonal (const gsl_matrix_ulong * m, const size_t k)`
"""
function matrix_ulong_const_subdiagonal(m, k)
    ccall((:gsl_matrix_ulong_const_subdiagonal, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t), m, k)
end

@doc md"""
    matrix_ulong_const_superdiagonal(m, k) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_superdiagonal (const gsl_matrix_ulong * m, const size_t k)`
"""
function matrix_ulong_const_superdiagonal(m, k)
    ccall((:gsl_matrix_ulong_const_superdiagonal, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t), m, k)
end

@doc md"""
    matrix_ulong_const_subrow(m, i, offset, n) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_subrow (const gsl_matrix_ulong * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_ulong_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_ulong_const_subrow, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_ulong_const_subcolumn(m, j, offset, n) -> _gsl_vector_ulong_const_view

C signature:
`_gsl_vector_ulong_const_view gsl_matrix_ulong_const_subcolumn (const gsl_matrix_ulong * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_ulong_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_ulong_const_subcolumn, libgsl), _gsl_vector_ulong_const_view, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_ulong_const_view_array(base, n1, n2) -> _gsl_matrix_ulong_const_view

C signature:
`_gsl_matrix_ulong_const_view gsl_matrix_ulong_const_view_array (const unsigned long * base, const size_t n1, const size_t n2)`
"""
function matrix_ulong_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_ulong_const_view_array, libgsl), _gsl_matrix_ulong_const_view, (Ref{Culong}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_ulong_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_ulong_const_view

C signature:
`_gsl_matrix_ulong_const_view gsl_matrix_ulong_const_view_array_with_tda (const unsigned long * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ulong_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_ulong_const_view_array_with_tda, libgsl), _gsl_matrix_ulong_const_view, (Ref{Culong}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_ulong_const_view_vector(v, n1, n2) -> _gsl_matrix_ulong_const_view

C signature:
`_gsl_matrix_ulong_const_view gsl_matrix_ulong_const_view_vector (const gsl_vector_ulong * v, const size_t n1, const size_t n2)`
"""
function matrix_ulong_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_ulong_const_view_vector, libgsl), _gsl_matrix_ulong_const_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_ulong_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_ulong_const_view

C signature:
`_gsl_matrix_ulong_const_view gsl_matrix_ulong_const_view_vector_with_tda (const gsl_vector_ulong * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ulong_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_ulong_const_view_vector_with_tda, libgsl), _gsl_matrix_ulong_const_view, (Ref{gsl_vector_ulong}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_ulong_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_ulong_set_zero (gsl_matrix_ulong * m)`
"""
function matrix_ulong_set_zero(m)
    ccall((:gsl_matrix_ulong_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_ulong_set_identity (gsl_matrix_ulong * m)`
"""
function matrix_ulong_set_identity(m)
    ccall((:gsl_matrix_ulong_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_ulong_set_all (gsl_matrix_ulong * m, unsigned long x)`
"""
function matrix_ulong_set_all(m, x)
    ccall((:gsl_matrix_ulong_set_all, libgsl), Cvoid, (Ref{gsl_matrix_ulong}, Culong), m, x)
end

@doc md"""
    matrix_ulong_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_ulong_fread (FILE * stream, gsl_matrix_ulong * m)`
"""
function matrix_ulong_fread(stream, m)
    ccall((:gsl_matrix_ulong_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ulong}), stream, m)
end

@doc md"""
    matrix_ulong_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_ulong_fwrite (FILE * stream, const gsl_matrix_ulong * m)`
"""
function matrix_ulong_fwrite(stream, m)
    ccall((:gsl_matrix_ulong_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ulong}), stream, m)
end

@doc md"""
    matrix_ulong_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_ulong_fscanf (FILE * stream, gsl_matrix_ulong * m)`
"""
function matrix_ulong_fscanf(stream, m)
    ccall((:gsl_matrix_ulong_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ulong}), stream, m)
end

@doc md"""
    matrix_ulong_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_ulong_fprintf (FILE * stream, const gsl_matrix_ulong * m, const char * format)`
"""
function matrix_ulong_fprintf(stream, m, format)
    ccall((:gsl_matrix_ulong_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ulong}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_ulong_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_ulong_memcpy(gsl_matrix_ulong * dest, const gsl_matrix_ulong * src)`
"""
function matrix_ulong_memcpy(dest, src)
    ccall((:gsl_matrix_ulong_memcpy, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), dest, src)
end

@doc md"""
    matrix_ulong_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_ulong_swap(gsl_matrix_ulong * m1, gsl_matrix_ulong * m2)`
"""
function matrix_ulong_swap(m1, m2)
    ccall((:gsl_matrix_ulong_swap, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), m1, m2)
end

@doc md"""
    matrix_ulong_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_ulong_tricpy(const char uplo_src, const int copy_diag, gsl_matrix_ulong * dest, const gsl_matrix_ulong * src)`
"""
function matrix_ulong_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_ulong_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_ulong_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_ulong_swap_rows(gsl_matrix_ulong * m, const size_t i, const size_t j)`
"""
function matrix_ulong_swap_rows(m, i, j)
    ccall((:gsl_matrix_ulong_swap_rows, libgsl), Cint, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ulong_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_ulong_swap_columns(gsl_matrix_ulong * m, const size_t i, const size_t j)`
"""
function matrix_ulong_swap_columns(m, i, j)
    ccall((:gsl_matrix_ulong_swap_columns, libgsl), Cint, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ulong_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_ulong_swap_rowcol(gsl_matrix_ulong * m, const size_t i, const size_t j)`
"""
function matrix_ulong_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_ulong_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ulong_transpose(m) -> Cint

C signature:
`int gsl_matrix_ulong_transpose (gsl_matrix_ulong * m)`
"""
function matrix_ulong_transpose(m)
    ccall((:gsl_matrix_ulong_transpose, libgsl), Cint, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_ulong_transpose_memcpy (gsl_matrix_ulong * dest, const gsl_matrix_ulong * src)`
"""
function matrix_ulong_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_ulong_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), dest, src)
end

@doc md"""
    matrix_ulong_transpose_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_ulong_transpose_tricpy (const char uplo_src, const int copy_diag, gsl_matrix_ulong * dest, const gsl_matrix_ulong * src)`
"""
function matrix_ulong_transpose_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_ulong_transpose_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_ulong_max(m) -> Culong

C signature:
`unsigned long gsl_matrix_ulong_max (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_max(m)
    ccall((:gsl_matrix_ulong_max, libgsl), Culong, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_min(m) -> Culong

C signature:
`unsigned long gsl_matrix_ulong_min (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_min(m)
    ccall((:gsl_matrix_ulong_min, libgsl), Culong, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_ulong_minmax (const gsl_matrix_ulong * m, unsigned long * min_out, unsigned long * max_out)`
"""
function matrix_ulong_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_ulong_minmax, libgsl), Cvoid, (Ref{gsl_matrix_ulong}, Ref{Culong}, Ref{Culong}), m, min_out, max_out)
end

@doc md"""
    matrix_ulong_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_ulong_max_index (const gsl_matrix_ulong * m, size_t * imax, size_t *jmax)`
"""
function matrix_ulong_max_index(m, imax, jmax)
    ccall((:gsl_matrix_ulong_max_index, libgsl), Cvoid, (Ref{gsl_matrix_ulong}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_ulong_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_ulong_min_index (const gsl_matrix_ulong * m, size_t * imin, size_t *jmin)`
"""
function matrix_ulong_min_index(m, imin, jmin)
    ccall((:gsl_matrix_ulong_min_index, libgsl), Cvoid, (Ref{gsl_matrix_ulong}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_ulong_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_ulong_minmax_index (const gsl_matrix_ulong * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_ulong_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_ulong_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_ulong}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_ulong_equal(a, b) -> Cint

C signature:
`int gsl_matrix_ulong_equal (const gsl_matrix_ulong * a, const gsl_matrix_ulong * b)`
"""
function matrix_ulong_equal(a, b)
    ccall((:gsl_matrix_ulong_equal, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), a, b)
end

@doc md"""
    matrix_ulong_isnull(m) -> Cint

C signature:
`int gsl_matrix_ulong_isnull (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_isnull(m)
    ccall((:gsl_matrix_ulong_isnull, libgsl), Cint, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_ispos(m) -> Cint

C signature:
`int gsl_matrix_ulong_ispos (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_ispos(m)
    ccall((:gsl_matrix_ulong_ispos, libgsl), Cint, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_isneg(m) -> Cint

C signature:
`int gsl_matrix_ulong_isneg (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_isneg(m)
    ccall((:gsl_matrix_ulong_isneg, libgsl), Cint, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_ulong_isnonneg (const gsl_matrix_ulong * m)`
"""
function matrix_ulong_isnonneg(m)
    ccall((:gsl_matrix_ulong_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_ulong},), m)
end

@doc md"""
    matrix_ulong_add(a, b) -> Cint

C signature:
`int gsl_matrix_ulong_add (gsl_matrix_ulong * a, const gsl_matrix_ulong * b)`
"""
function matrix_ulong_add(a, b)
    ccall((:gsl_matrix_ulong_add, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), a, b)
end

@doc md"""
    matrix_ulong_sub(a, b) -> Cint

C signature:
`int gsl_matrix_ulong_sub (gsl_matrix_ulong * a, const gsl_matrix_ulong * b)`
"""
function matrix_ulong_sub(a, b)
    ccall((:gsl_matrix_ulong_sub, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), a, b)
end

@doc md"""
    matrix_ulong_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_ulong_mul_elements (gsl_matrix_ulong * a, const gsl_matrix_ulong * b)`
"""
function matrix_ulong_mul_elements(a, b)
    ccall((:gsl_matrix_ulong_mul_elements, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), a, b)
end

@doc md"""
    matrix_ulong_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_ulong_div_elements (gsl_matrix_ulong * a, const gsl_matrix_ulong * b)`
"""
function matrix_ulong_div_elements(a, b)
    ccall((:gsl_matrix_ulong_div_elements, libgsl), Cint, (Ref{gsl_matrix_ulong}, Ref{gsl_matrix_ulong}), a, b)
end

@doc md"""
    matrix_ulong_scale(a, x) -> Cint

C signature:
`int gsl_matrix_ulong_scale (gsl_matrix_ulong * a, const double x)`
"""
function matrix_ulong_scale(a, x)
    ccall((:gsl_matrix_ulong_scale, libgsl), Cint, (Ref{gsl_matrix_ulong}, Cdouble), a, x)
end

@doc md"""
    matrix_ulong_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_ulong_add_constant (gsl_matrix_ulong * a, const double x)`
"""
function matrix_ulong_add_constant(a, x)
    ccall((:gsl_matrix_ulong_add_constant, libgsl), Cint, (Ref{gsl_matrix_ulong}, Cdouble), a, x)
end

@doc md"""
    matrix_ulong_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_ulong_add_diagonal (gsl_matrix_ulong * a, const double x)`
"""
function matrix_ulong_add_diagonal(a, x)
    ccall((:gsl_matrix_ulong_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_ulong}, Cdouble), a, x)
end

@doc md"""
    matrix_ulong_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_ulong_get_row(gsl_vector_ulong * v, const gsl_matrix_ulong * m, const size_t i)`
"""
function matrix_ulong_get_row(v, m, i)
    ccall((:gsl_matrix_ulong_get_row, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_matrix_ulong}, Csize_t), v, m, i)
end

@doc md"""
    matrix_ulong_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_ulong_get_col(gsl_vector_ulong * v, const gsl_matrix_ulong * m, const size_t j)`
"""
function matrix_ulong_get_col(v, m, j)
    ccall((:gsl_matrix_ulong_get_col, libgsl), Cint, (Ref{gsl_vector_ulong}, Ref{gsl_matrix_ulong}, Csize_t), v, m, j)
end

@doc md"""
    matrix_ulong_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_ulong_set_row(gsl_matrix_ulong * m, const size_t i, const gsl_vector_ulong * v)`
"""
function matrix_ulong_set_row(m, i, v)
    ccall((:gsl_matrix_ulong_set_row, libgsl), Cint, (Ref{gsl_matrix_ulong}, Csize_t, Ref{gsl_vector_ulong}), m, i, v)
end

@doc md"""
    matrix_ulong_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_ulong_set_col(gsl_matrix_ulong * m, const size_t j, const gsl_vector_ulong * v)`
"""
function matrix_ulong_set_col(m, j, v)
    ccall((:gsl_matrix_ulong_set_col, libgsl), Cint, (Ref{gsl_matrix_ulong}, Csize_t, Ref{gsl_vector_ulong}), m, j, v)
end

@doc md"""
    matrix_ulong_get(m, i, j) -> Culong

C signature:
`unsigned long gsl_matrix_ulong_get(const gsl_matrix_ulong * m, const size_t i, const size_t j)`
"""
function matrix_ulong_get(m, i, j)
    ccall((:gsl_matrix_ulong_get, libgsl), Culong, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ulong_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_ulong_set(gsl_matrix_ulong * m, const size_t i, const size_t j, const unsigned long x)`
"""
function matrix_ulong_set(m, i, j, x)
    ccall((:gsl_matrix_ulong_set, libgsl), Cvoid, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t, Culong), m, i, j, x)
end

@doc md"""
    matrix_ulong_ptr(m, i, j) -> Ptr{Culong}

C signature:
`unsigned long * gsl_matrix_ulong_ptr(gsl_matrix_ulong * m, const size_t i, const size_t j)`
"""
function matrix_ulong_ptr(m, i, j)
    ccall((:gsl_matrix_ulong_ptr, libgsl), Ptr{Culong}, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ulong_const_ptr(m, i, j) -> Ptr{Culong}

C signature:
`const unsigned long * gsl_matrix_ulong_const_ptr(const gsl_matrix_ulong * m, const size_t i, const size_t j)`
"""
function matrix_ulong_const_ptr(m, i, j)
    ccall((:gsl_matrix_ulong_const_ptr, libgsl), Ptr{Culong}, (Ref{gsl_matrix_ulong}, Csize_t, Csize_t), m, i, j)
end

