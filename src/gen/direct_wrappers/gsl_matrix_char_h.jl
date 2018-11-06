#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_char.h ########################################################


@doc md"""
    matrix_char_alloc(n1, n2) -> Ptr{gsl_matrix_char}

C signature:
`gsl_matrix_char * gsl_matrix_char_alloc (const size_t n1, const size_t n2)`
"""
function matrix_char_alloc(n1, n2)
    ccall((:gsl_matrix_char_alloc, libgsl), Ptr{gsl_matrix_char}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_char_calloc(n1, n2) -> Ptr{gsl_matrix_char}

C signature:
`gsl_matrix_char * gsl_matrix_char_calloc (const size_t n1, const size_t n2)`
"""
function matrix_char_calloc(n1, n2)
    ccall((:gsl_matrix_char_calloc, libgsl), Ptr{gsl_matrix_char}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_char_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_char}

C signature:
`gsl_matrix_char * gsl_matrix_char_alloc_from_block (gsl_block_char * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_char_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_char_alloc_from_block, libgsl), Ptr{gsl_matrix_char}, (Ref{gsl_block_char}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_char_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_char}

C signature:
`gsl_matrix_char * gsl_matrix_char_alloc_from_matrix (gsl_matrix_char * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_char_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_char_alloc_from_matrix, libgsl), Ptr{gsl_matrix_char}, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_char_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_char}

C signature:
`gsl_vector_char * gsl_vector_char_alloc_row_from_matrix (gsl_matrix_char * m, const size_t i)`
"""
function vector_char_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_char_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_char}, (Ref{gsl_matrix_char}, Csize_t), m, i)
end

@doc md"""
    vector_char_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_char}

C signature:
`gsl_vector_char * gsl_vector_char_alloc_col_from_matrix (gsl_matrix_char * m, const size_t j)`
"""
function vector_char_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_char_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_char}, (Ref{gsl_matrix_char}, Csize_t), m, j)
end

@doc md"""
    matrix_char_free(m) -> Cvoid

C signature:
`void gsl_matrix_char_free (gsl_matrix_char * m)`
"""
function matrix_char_free(m)
    ccall((:gsl_matrix_char_free, libgsl), Cvoid, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_submatrix(m, i, j, n1, n2) -> _gsl_matrix_char_view

C signature:
`_gsl_matrix_char_view gsl_matrix_char_submatrix (gsl_matrix_char * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_char_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_char_submatrix, libgsl), _gsl_matrix_char_view, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_char_row(m, i) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_row (gsl_matrix_char * m, const size_t i)`
"""
function matrix_char_row(m, i)
    ccall((:gsl_matrix_char_row, libgsl), _gsl_vector_char_view, (Ref{gsl_matrix_char}, Csize_t), m, i)
end

@doc md"""
    matrix_char_column(m, j) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_column (gsl_matrix_char * m, const size_t j)`
"""
function matrix_char_column(m, j)
    ccall((:gsl_matrix_char_column, libgsl), _gsl_vector_char_view, (Ref{gsl_matrix_char}, Csize_t), m, j)
end

@doc md"""
    matrix_char_diagonal(m) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_diagonal (gsl_matrix_char * m)`
"""
function matrix_char_diagonal(m)
    ccall((:gsl_matrix_char_diagonal, libgsl), _gsl_vector_char_view, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_subdiagonal(m, k) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_subdiagonal (gsl_matrix_char * m, const size_t k)`
"""
function matrix_char_subdiagonal(m, k)
    ccall((:gsl_matrix_char_subdiagonal, libgsl), _gsl_vector_char_view, (Ref{gsl_matrix_char}, Csize_t), m, k)
end

@doc md"""
    matrix_char_superdiagonal(m, k) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_superdiagonal (gsl_matrix_char * m, const size_t k)`
"""
function matrix_char_superdiagonal(m, k)
    ccall((:gsl_matrix_char_superdiagonal, libgsl), _gsl_vector_char_view, (Ref{gsl_matrix_char}, Csize_t), m, k)
end

@doc md"""
    matrix_char_subrow(m, i, offset, n) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_subrow (gsl_matrix_char * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_char_subrow(m, i, offset, n)
    ccall((:gsl_matrix_char_subrow, libgsl), _gsl_vector_char_view, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_char_subcolumn(m, j, offset, n) -> _gsl_vector_char_view

C signature:
`_gsl_vector_char_view gsl_matrix_char_subcolumn (gsl_matrix_char * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_char_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_char_subcolumn, libgsl), _gsl_vector_char_view, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_char_view_array(base, n1, n2) -> _gsl_matrix_char_view

C signature:
`_gsl_matrix_char_view gsl_matrix_char_view_array (char * base, const size_t n1, const size_t n2)`
"""
function matrix_char_view_array(base, n1, n2)
    ccall((:gsl_matrix_char_view_array, libgsl), _gsl_matrix_char_view, (Ref{Cchar}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_char_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_char_view

C signature:
`_gsl_matrix_char_view gsl_matrix_char_view_array_with_tda (char * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_char_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_char_view_array_with_tda, libgsl), _gsl_matrix_char_view, (Ref{Cchar}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_char_view_vector(v, n1, n2) -> _gsl_matrix_char_view

C signature:
`_gsl_matrix_char_view gsl_matrix_char_view_vector (gsl_vector_char * v, const size_t n1, const size_t n2)`
"""
function matrix_char_view_vector(v, n1, n2)
    ccall((:gsl_matrix_char_view_vector, libgsl), _gsl_matrix_char_view, (Ref{gsl_vector_char}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_char_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_char_view

C signature:
`_gsl_matrix_char_view gsl_matrix_char_view_vector_with_tda (gsl_vector_char * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_char_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_char_view_vector_with_tda, libgsl), _gsl_matrix_char_view, (Ref{gsl_vector_char}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_char_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_char_const_view

C signature:
`_gsl_matrix_char_const_view gsl_matrix_char_const_submatrix (const gsl_matrix_char * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_char_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_char_const_submatrix, libgsl), _gsl_matrix_char_const_view, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_char_const_row(m, i) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_row (const gsl_matrix_char * m, const size_t i)`
"""
function matrix_char_const_row(m, i)
    ccall((:gsl_matrix_char_const_row, libgsl), _gsl_vector_char_const_view, (Ref{gsl_matrix_char}, Csize_t), m, i)
end

@doc md"""
    matrix_char_const_column(m, j) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_column (const gsl_matrix_char * m, const size_t j)`
"""
function matrix_char_const_column(m, j)
    ccall((:gsl_matrix_char_const_column, libgsl), _gsl_vector_char_const_view, (Ref{gsl_matrix_char}, Csize_t), m, j)
end

@doc md"""
    matrix_char_const_diagonal(m) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_diagonal (const gsl_matrix_char * m)`
"""
function matrix_char_const_diagonal(m)
    ccall((:gsl_matrix_char_const_diagonal, libgsl), _gsl_vector_char_const_view, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_const_subdiagonal(m, k) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_subdiagonal (const gsl_matrix_char * m, const size_t k)`
"""
function matrix_char_const_subdiagonal(m, k)
    ccall((:gsl_matrix_char_const_subdiagonal, libgsl), _gsl_vector_char_const_view, (Ref{gsl_matrix_char}, Csize_t), m, k)
end

@doc md"""
    matrix_char_const_superdiagonal(m, k) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_superdiagonal (const gsl_matrix_char * m, const size_t k)`
"""
function matrix_char_const_superdiagonal(m, k)
    ccall((:gsl_matrix_char_const_superdiagonal, libgsl), _gsl_vector_char_const_view, (Ref{gsl_matrix_char}, Csize_t), m, k)
end

@doc md"""
    matrix_char_const_subrow(m, i, offset, n) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_subrow (const gsl_matrix_char * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_char_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_char_const_subrow, libgsl), _gsl_vector_char_const_view, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_char_const_subcolumn(m, j, offset, n) -> _gsl_vector_char_const_view

C signature:
`_gsl_vector_char_const_view gsl_matrix_char_const_subcolumn (const gsl_matrix_char * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_char_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_char_const_subcolumn, libgsl), _gsl_vector_char_const_view, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_char_const_view_array(base, n1, n2) -> _gsl_matrix_char_const_view

C signature:
`_gsl_matrix_char_const_view gsl_matrix_char_const_view_array (const char * base, const size_t n1, const size_t n2)`
"""
function matrix_char_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_char_const_view_array, libgsl), _gsl_matrix_char_const_view, (Ref{Cchar}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_char_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_char_const_view

C signature:
`_gsl_matrix_char_const_view gsl_matrix_char_const_view_array_with_tda (const char * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_char_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_char_const_view_array_with_tda, libgsl), _gsl_matrix_char_const_view, (Ref{Cchar}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_char_const_view_vector(v, n1, n2) -> _gsl_matrix_char_const_view

C signature:
`_gsl_matrix_char_const_view gsl_matrix_char_const_view_vector (const gsl_vector_char * v, const size_t n1, const size_t n2)`
"""
function matrix_char_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_char_const_view_vector, libgsl), _gsl_matrix_char_const_view, (Ref{gsl_vector_char}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_char_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_char_const_view

C signature:
`_gsl_matrix_char_const_view gsl_matrix_char_const_view_vector_with_tda (const gsl_vector_char * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_char_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_char_const_view_vector_with_tda, libgsl), _gsl_matrix_char_const_view, (Ref{gsl_vector_char}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_char_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_char_set_zero (gsl_matrix_char * m)`
"""
function matrix_char_set_zero(m)
    ccall((:gsl_matrix_char_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_char_set_identity (gsl_matrix_char * m)`
"""
function matrix_char_set_identity(m)
    ccall((:gsl_matrix_char_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_char_set_all (gsl_matrix_char * m, char x)`
"""
function matrix_char_set_all(m, x)
    ccall((:gsl_matrix_char_set_all, libgsl), Cvoid, (Ref{gsl_matrix_char}, Cchar), m, x)
end

@doc md"""
    matrix_char_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_char_fread (FILE * stream, gsl_matrix_char * m)`
"""
function matrix_char_fread(stream, m)
    ccall((:gsl_matrix_char_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_char}), stream, m)
end

@doc md"""
    matrix_char_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_char_fwrite (FILE * stream, const gsl_matrix_char * m)`
"""
function matrix_char_fwrite(stream, m)
    ccall((:gsl_matrix_char_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_char}), stream, m)
end

@doc md"""
    matrix_char_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_char_fscanf (FILE * stream, gsl_matrix_char * m)`
"""
function matrix_char_fscanf(stream, m)
    ccall((:gsl_matrix_char_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_char}), stream, m)
end

@doc md"""
    matrix_char_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_char_fprintf (FILE * stream, const gsl_matrix_char * m, const char * format)`
"""
function matrix_char_fprintf(stream, m, format)
    ccall((:gsl_matrix_char_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_char}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_char_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_char_memcpy(gsl_matrix_char * dest, const gsl_matrix_char * src)`
"""
function matrix_char_memcpy(dest, src)
    ccall((:gsl_matrix_char_memcpy, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), dest, src)
end

@doc md"""
    matrix_char_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_char_swap(gsl_matrix_char * m1, gsl_matrix_char * m2)`
"""
function matrix_char_swap(m1, m2)
    ccall((:gsl_matrix_char_swap, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), m1, m2)
end

@doc md"""
    matrix_char_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_char_tricpy(const char uplo_src, const int copy_diag, gsl_matrix_char * dest, const gsl_matrix_char * src)`
"""
function matrix_char_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_char_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_char_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_char_swap_rows(gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_swap_rows(m, i, j)
    ccall((:gsl_matrix_char_swap_rows, libgsl), Cint, (Ref{gsl_matrix_char}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_char_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_char_swap_columns(gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_swap_columns(m, i, j)
    ccall((:gsl_matrix_char_swap_columns, libgsl), Cint, (Ref{gsl_matrix_char}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_char_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_char_swap_rowcol(gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_char_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_char}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_char_transpose(m) -> Cint

C signature:
`int gsl_matrix_char_transpose (gsl_matrix_char * m)`
"""
function matrix_char_transpose(m)
    ccall((:gsl_matrix_char_transpose, libgsl), Cint, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_char_transpose_memcpy (gsl_matrix_char * dest, const gsl_matrix_char * src)`
"""
function matrix_char_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_char_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), dest, src)
end

@doc md"""
    matrix_char_transpose_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_char_transpose_tricpy (const char uplo_src, const int copy_diag, gsl_matrix_char * dest, const gsl_matrix_char * src)`
"""
function matrix_char_transpose_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_char_transpose_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_char_max(m) -> Cchar

C signature:
`char gsl_matrix_char_max (const gsl_matrix_char * m)`
"""
function matrix_char_max(m)
    ccall((:gsl_matrix_char_max, libgsl), Cchar, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_min(m) -> Cchar

C signature:
`char gsl_matrix_char_min (const gsl_matrix_char * m)`
"""
function matrix_char_min(m)
    ccall((:gsl_matrix_char_min, libgsl), Cchar, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_char_minmax (const gsl_matrix_char * m, char * min_out, char * max_out)`
"""
function matrix_char_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_char_minmax, libgsl), Cvoid, (Ref{gsl_matrix_char}, Ref{Cchar}, Ref{Cchar}), m, min_out, max_out)
end

@doc md"""
    matrix_char_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_char_max_index (const gsl_matrix_char * m, size_t * imax, size_t *jmax)`
"""
function matrix_char_max_index(m, imax, jmax)
    ccall((:gsl_matrix_char_max_index, libgsl), Cvoid, (Ref{gsl_matrix_char}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_char_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_char_min_index (const gsl_matrix_char * m, size_t * imin, size_t *jmin)`
"""
function matrix_char_min_index(m, imin, jmin)
    ccall((:gsl_matrix_char_min_index, libgsl), Cvoid, (Ref{gsl_matrix_char}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_char_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_char_minmax_index (const gsl_matrix_char * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_char_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_char_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_char}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_char_equal(a, b) -> Cint

C signature:
`int gsl_matrix_char_equal (const gsl_matrix_char * a, const gsl_matrix_char * b)`
"""
function matrix_char_equal(a, b)
    ccall((:gsl_matrix_char_equal, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), a, b)
end

@doc md"""
    matrix_char_isnull(m) -> Cint

C signature:
`int gsl_matrix_char_isnull (const gsl_matrix_char * m)`
"""
function matrix_char_isnull(m)
    ccall((:gsl_matrix_char_isnull, libgsl), Cint, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_ispos(m) -> Cint

C signature:
`int gsl_matrix_char_ispos (const gsl_matrix_char * m)`
"""
function matrix_char_ispos(m)
    ccall((:gsl_matrix_char_ispos, libgsl), Cint, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_isneg(m) -> Cint

C signature:
`int gsl_matrix_char_isneg (const gsl_matrix_char * m)`
"""
function matrix_char_isneg(m)
    ccall((:gsl_matrix_char_isneg, libgsl), Cint, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_char_isnonneg (const gsl_matrix_char * m)`
"""
function matrix_char_isnonneg(m)
    ccall((:gsl_matrix_char_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_char},), m)
end

@doc md"""
    matrix_char_add(a, b) -> Cint

C signature:
`int gsl_matrix_char_add (gsl_matrix_char * a, const gsl_matrix_char * b)`
"""
function matrix_char_add(a, b)
    ccall((:gsl_matrix_char_add, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), a, b)
end

@doc md"""
    matrix_char_sub(a, b) -> Cint

C signature:
`int gsl_matrix_char_sub (gsl_matrix_char * a, const gsl_matrix_char * b)`
"""
function matrix_char_sub(a, b)
    ccall((:gsl_matrix_char_sub, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), a, b)
end

@doc md"""
    matrix_char_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_char_mul_elements (gsl_matrix_char * a, const gsl_matrix_char * b)`
"""
function matrix_char_mul_elements(a, b)
    ccall((:gsl_matrix_char_mul_elements, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), a, b)
end

@doc md"""
    matrix_char_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_char_div_elements (gsl_matrix_char * a, const gsl_matrix_char * b)`
"""
function matrix_char_div_elements(a, b)
    ccall((:gsl_matrix_char_div_elements, libgsl), Cint, (Ref{gsl_matrix_char}, Ref{gsl_matrix_char}), a, b)
end

@doc md"""
    matrix_char_scale(a, x) -> Cint

C signature:
`int gsl_matrix_char_scale (gsl_matrix_char * a, const double x)`
"""
function matrix_char_scale(a, x)
    ccall((:gsl_matrix_char_scale, libgsl), Cint, (Ref{gsl_matrix_char}, Cdouble), a, x)
end

@doc md"""
    matrix_char_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_char_add_constant (gsl_matrix_char * a, const double x)`
"""
function matrix_char_add_constant(a, x)
    ccall((:gsl_matrix_char_add_constant, libgsl), Cint, (Ref{gsl_matrix_char}, Cdouble), a, x)
end

@doc md"""
    matrix_char_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_char_add_diagonal (gsl_matrix_char * a, const double x)`
"""
function matrix_char_add_diagonal(a, x)
    ccall((:gsl_matrix_char_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_char}, Cdouble), a, x)
end

@doc md"""
    matrix_char_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_char_get_row(gsl_vector_char * v, const gsl_matrix_char * m, const size_t i)`
"""
function matrix_char_get_row(v, m, i)
    ccall((:gsl_matrix_char_get_row, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_matrix_char}, Csize_t), v, m, i)
end

@doc md"""
    matrix_char_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_char_get_col(gsl_vector_char * v, const gsl_matrix_char * m, const size_t j)`
"""
function matrix_char_get_col(v, m, j)
    ccall((:gsl_matrix_char_get_col, libgsl), Cint, (Ref{gsl_vector_char}, Ref{gsl_matrix_char}, Csize_t), v, m, j)
end

@doc md"""
    matrix_char_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_char_set_row(gsl_matrix_char * m, const size_t i, const gsl_vector_char * v)`
"""
function matrix_char_set_row(m, i, v)
    ccall((:gsl_matrix_char_set_row, libgsl), Cint, (Ref{gsl_matrix_char}, Csize_t, Ref{gsl_vector_char}), m, i, v)
end

@doc md"""
    matrix_char_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_char_set_col(gsl_matrix_char * m, const size_t j, const gsl_vector_char * v)`
"""
function matrix_char_set_col(m, j, v)
    ccall((:gsl_matrix_char_set_col, libgsl), Cint, (Ref{gsl_matrix_char}, Csize_t, Ref{gsl_vector_char}), m, j, v)
end

@doc md"""
    matrix_char_get(m, i, j) -> Cchar

C signature:
`char gsl_matrix_char_get(const gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_get(m, i, j)
    ccall((:gsl_matrix_char_get, libgsl), Cchar, (Ref{gsl_matrix_char}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_char_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_char_set(gsl_matrix_char * m, const size_t i, const size_t j, const char x)`
"""
function matrix_char_set(m, i, j, x)
    ccall((:gsl_matrix_char_set, libgsl), Cvoid, (Ref{gsl_matrix_char}, Csize_t, Csize_t, Cchar), m, i, j, x)
end

@doc md"""
    matrix_char_ptr(m, i, j) -> Ptr{Cchar}

C signature:
`char * gsl_matrix_char_ptr(gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_ptr(m, i, j)
    ccall((:gsl_matrix_char_ptr, libgsl), Ptr{Cchar}, (Ref{gsl_matrix_char}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_char_const_ptr(m, i, j) -> Ptr{Cchar}

C signature:
`const char * gsl_matrix_char_const_ptr(const gsl_matrix_char * m, const size_t i, const size_t j)`
"""
function matrix_char_const_ptr(m, i, j)
    ccall((:gsl_matrix_char_const_ptr, libgsl), Ptr{Cchar}, (Ref{gsl_matrix_char}, Csize_t, Csize_t), m, i, j)
end

