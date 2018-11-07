#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_int.h #########################################################


@doc md"""
    matrix_int_alloc(n1, n2) -> Ptr{gsl_matrix_int}

C signature:
`gsl_matrix_int * gsl_matrix_int_alloc (const size_t n1, const size_t n2)`
"""
function matrix_int_alloc(n1, n2)
    ccall((:gsl_matrix_int_alloc, libgsl), Ptr{gsl_matrix_int}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_int_calloc(n1, n2) -> Ptr{gsl_matrix_int}

C signature:
`gsl_matrix_int * gsl_matrix_int_calloc (const size_t n1, const size_t n2)`
"""
function matrix_int_calloc(n1, n2)
    ccall((:gsl_matrix_int_calloc, libgsl), Ptr{gsl_matrix_int}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_int_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_int}

C signature:
`gsl_matrix_int * gsl_matrix_int_alloc_from_block (gsl_block_int * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_int_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_int_alloc_from_block, libgsl), Ptr{gsl_matrix_int}, (Ref{gsl_block_int}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_int_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_int}

C signature:
`gsl_matrix_int * gsl_matrix_int_alloc_from_matrix (gsl_matrix_int * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_int_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_int_alloc_from_matrix, libgsl), Ptr{gsl_matrix_int}, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_int_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_int}

C signature:
`gsl_vector_int * gsl_vector_int_alloc_row_from_matrix (gsl_matrix_int * m, const size_t i)`
"""
function vector_int_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_int_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_int}, (Ref{gsl_matrix_int}, Csize_t), m, i)
end

@doc md"""
    vector_int_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_int}

C signature:
`gsl_vector_int * gsl_vector_int_alloc_col_from_matrix (gsl_matrix_int * m, const size_t j)`
"""
function vector_int_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_int_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_int}, (Ref{gsl_matrix_int}, Csize_t), m, j)
end

@doc md"""
    matrix_int_free(m) -> Cvoid

C signature:
`void gsl_matrix_int_free (gsl_matrix_int * m)`
"""
function matrix_int_free(m)
    ccall((:gsl_matrix_int_free, libgsl), Cvoid, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_submatrix(m, i, j, n1, n2) -> _gsl_matrix_int_view

C signature:
`_gsl_matrix_int_view gsl_matrix_int_submatrix (gsl_matrix_int * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_int_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_int_submatrix, libgsl), _gsl_matrix_int_view, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_int_row(m, i) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_row (gsl_matrix_int * m, const size_t i)`
"""
function matrix_int_row(m, i)
    ccall((:gsl_matrix_int_row, libgsl), _gsl_vector_int_view, (Ref{gsl_matrix_int}, Csize_t), m, i)
end

@doc md"""
    matrix_int_column(m, j) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_column (gsl_matrix_int * m, const size_t j)`
"""
function matrix_int_column(m, j)
    ccall((:gsl_matrix_int_column, libgsl), _gsl_vector_int_view, (Ref{gsl_matrix_int}, Csize_t), m, j)
end

@doc md"""
    matrix_int_diagonal(m) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_diagonal (gsl_matrix_int * m)`
"""
function matrix_int_diagonal(m)
    ccall((:gsl_matrix_int_diagonal, libgsl), _gsl_vector_int_view, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_subdiagonal(m, k) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_subdiagonal (gsl_matrix_int * m, const size_t k)`
"""
function matrix_int_subdiagonal(m, k)
    ccall((:gsl_matrix_int_subdiagonal, libgsl), _gsl_vector_int_view, (Ref{gsl_matrix_int}, Csize_t), m, k)
end

@doc md"""
    matrix_int_superdiagonal(m, k) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_superdiagonal (gsl_matrix_int * m, const size_t k)`
"""
function matrix_int_superdiagonal(m, k)
    ccall((:gsl_matrix_int_superdiagonal, libgsl), _gsl_vector_int_view, (Ref{gsl_matrix_int}, Csize_t), m, k)
end

@doc md"""
    matrix_int_subrow(m, i, offset, n) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_subrow (gsl_matrix_int * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_int_subrow(m, i, offset, n)
    ccall((:gsl_matrix_int_subrow, libgsl), _gsl_vector_int_view, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_int_subcolumn(m, j, offset, n) -> _gsl_vector_int_view

C signature:
`_gsl_vector_int_view gsl_matrix_int_subcolumn (gsl_matrix_int * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_int_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_int_subcolumn, libgsl), _gsl_vector_int_view, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_int_view_array(base, n1, n2) -> _gsl_matrix_int_view

C signature:
`_gsl_matrix_int_view gsl_matrix_int_view_array (int * base, const size_t n1, const size_t n2)`
"""
function matrix_int_view_array(base, n1, n2)
    ccall((:gsl_matrix_int_view_array, libgsl), _gsl_matrix_int_view, (Ref{Cint}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_int_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_int_view

C signature:
`_gsl_matrix_int_view gsl_matrix_int_view_array_with_tda (int * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_int_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_int_view_array_with_tda, libgsl), _gsl_matrix_int_view, (Ref{Cint}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_int_view_vector(v, n1, n2) -> _gsl_matrix_int_view

C signature:
`_gsl_matrix_int_view gsl_matrix_int_view_vector (gsl_vector_int * v, const size_t n1, const size_t n2)`
"""
function matrix_int_view_vector(v, n1, n2)
    ccall((:gsl_matrix_int_view_vector, libgsl), _gsl_matrix_int_view, (Ref{gsl_vector_int}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_int_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_int_view

C signature:
`_gsl_matrix_int_view gsl_matrix_int_view_vector_with_tda (gsl_vector_int * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_int_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_int_view_vector_with_tda, libgsl), _gsl_matrix_int_view, (Ref{gsl_vector_int}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_int_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_int_const_view

C signature:
`_gsl_matrix_int_const_view gsl_matrix_int_const_submatrix (const gsl_matrix_int * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_int_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_int_const_submatrix, libgsl), _gsl_matrix_int_const_view, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_int_const_row(m, i) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_row (const gsl_matrix_int * m, const size_t i)`
"""
function matrix_int_const_row(m, i)
    ccall((:gsl_matrix_int_const_row, libgsl), _gsl_vector_int_const_view, (Ref{gsl_matrix_int}, Csize_t), m, i)
end

@doc md"""
    matrix_int_const_column(m, j) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_column (const gsl_matrix_int * m, const size_t j)`
"""
function matrix_int_const_column(m, j)
    ccall((:gsl_matrix_int_const_column, libgsl), _gsl_vector_int_const_view, (Ref{gsl_matrix_int}, Csize_t), m, j)
end

@doc md"""
    matrix_int_const_diagonal(m) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_diagonal (const gsl_matrix_int * m)`
"""
function matrix_int_const_diagonal(m)
    ccall((:gsl_matrix_int_const_diagonal, libgsl), _gsl_vector_int_const_view, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_const_subdiagonal(m, k) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_subdiagonal (const gsl_matrix_int * m, const size_t k)`
"""
function matrix_int_const_subdiagonal(m, k)
    ccall((:gsl_matrix_int_const_subdiagonal, libgsl), _gsl_vector_int_const_view, (Ref{gsl_matrix_int}, Csize_t), m, k)
end

@doc md"""
    matrix_int_const_superdiagonal(m, k) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_superdiagonal (const gsl_matrix_int * m, const size_t k)`
"""
function matrix_int_const_superdiagonal(m, k)
    ccall((:gsl_matrix_int_const_superdiagonal, libgsl), _gsl_vector_int_const_view, (Ref{gsl_matrix_int}, Csize_t), m, k)
end

@doc md"""
    matrix_int_const_subrow(m, i, offset, n) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_subrow (const gsl_matrix_int * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_int_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_int_const_subrow, libgsl), _gsl_vector_int_const_view, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_int_const_subcolumn(m, j, offset, n) -> _gsl_vector_int_const_view

C signature:
`_gsl_vector_int_const_view gsl_matrix_int_const_subcolumn (const gsl_matrix_int * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_int_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_int_const_subcolumn, libgsl), _gsl_vector_int_const_view, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_int_const_view_array(base, n1, n2) -> _gsl_matrix_int_const_view

C signature:
`_gsl_matrix_int_const_view gsl_matrix_int_const_view_array (const int * base, const size_t n1, const size_t n2)`
"""
function matrix_int_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_int_const_view_array, libgsl), _gsl_matrix_int_const_view, (Ref{Cint}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_int_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_int_const_view

C signature:
`_gsl_matrix_int_const_view gsl_matrix_int_const_view_array_with_tda (const int * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_int_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_int_const_view_array_with_tda, libgsl), _gsl_matrix_int_const_view, (Ref{Cint}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_int_const_view_vector(v, n1, n2) -> _gsl_matrix_int_const_view

C signature:
`_gsl_matrix_int_const_view gsl_matrix_int_const_view_vector (const gsl_vector_int * v, const size_t n1, const size_t n2)`
"""
function matrix_int_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_int_const_view_vector, libgsl), _gsl_matrix_int_const_view, (Ref{gsl_vector_int}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_int_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_int_const_view

C signature:
`_gsl_matrix_int_const_view gsl_matrix_int_const_view_vector_with_tda (const gsl_vector_int * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_int_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_int_const_view_vector_with_tda, libgsl), _gsl_matrix_int_const_view, (Ref{gsl_vector_int}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_int_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_int_set_zero (gsl_matrix_int * m)`
"""
function matrix_int_set_zero(m)
    ccall((:gsl_matrix_int_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_int_set_identity (gsl_matrix_int * m)`
"""
function matrix_int_set_identity(m)
    ccall((:gsl_matrix_int_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_int_set_all (gsl_matrix_int * m, int x)`
"""
function matrix_int_set_all(m, x)
    ccall((:gsl_matrix_int_set_all, libgsl), Cvoid, (Ref{gsl_matrix_int}, Cint), m, x)
end

@doc md"""
    matrix_int_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_int_fread (FILE * stream, gsl_matrix_int * m)`
"""
function matrix_int_fread(stream, m)
    ccall((:gsl_matrix_int_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_int}), stream, m)
end

@doc md"""
    matrix_int_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_int_fwrite (FILE * stream, const gsl_matrix_int * m)`
"""
function matrix_int_fwrite(stream, m)
    ccall((:gsl_matrix_int_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_int}), stream, m)
end

@doc md"""
    matrix_int_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_int_fscanf (FILE * stream, gsl_matrix_int * m)`
"""
function matrix_int_fscanf(stream, m)
    ccall((:gsl_matrix_int_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_int}), stream, m)
end

@doc md"""
    matrix_int_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_int_fprintf (FILE * stream, const gsl_matrix_int * m, const char * format)`
"""
function matrix_int_fprintf(stream, m, format)
    ccall((:gsl_matrix_int_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_int}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_int_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_int_memcpy(gsl_matrix_int * dest, const gsl_matrix_int * src)`
"""
function matrix_int_memcpy(dest, src)
    ccall((:gsl_matrix_int_memcpy, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), dest, src)
end

@doc md"""
    matrix_int_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_int_swap(gsl_matrix_int * m1, gsl_matrix_int * m2)`
"""
function matrix_int_swap(m1, m2)
    ccall((:gsl_matrix_int_swap, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), m1, m2)
end

@doc md"""
    matrix_int_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_int_tricpy(const char uplo_src, const int copy_diag, gsl_matrix_int * dest, const gsl_matrix_int * src)`
"""
function matrix_int_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_int_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_int_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_int_swap_rows(gsl_matrix_int * m, const size_t i, const size_t j)`
"""
function matrix_int_swap_rows(m, i, j)
    ccall((:gsl_matrix_int_swap_rows, libgsl), Cint, (Ref{gsl_matrix_int}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_int_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_int_swap_columns(gsl_matrix_int * m, const size_t i, const size_t j)`
"""
function matrix_int_swap_columns(m, i, j)
    ccall((:gsl_matrix_int_swap_columns, libgsl), Cint, (Ref{gsl_matrix_int}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_int_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_int_swap_rowcol(gsl_matrix_int * m, const size_t i, const size_t j)`
"""
function matrix_int_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_int_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_int}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_int_transpose(m) -> Cint

C signature:
`int gsl_matrix_int_transpose (gsl_matrix_int * m)`
"""
function matrix_int_transpose(m)
    ccall((:gsl_matrix_int_transpose, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_int_transpose_memcpy (gsl_matrix_int * dest, const gsl_matrix_int * src)`
"""
function matrix_int_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_int_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), dest, src)
end

@doc md"""
    matrix_int_transpose_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_int_transpose_tricpy (const char uplo_src, const int copy_diag, gsl_matrix_int * dest, const gsl_matrix_int * src)`
"""
function matrix_int_transpose_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_int_transpose_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_int_max(m) -> Cint

C signature:
`int gsl_matrix_int_max (const gsl_matrix_int * m)`
"""
function matrix_int_max(m)
    ccall((:gsl_matrix_int_max, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_min(m) -> Cint

C signature:
`int gsl_matrix_int_min (const gsl_matrix_int * m)`
"""
function matrix_int_min(m)
    ccall((:gsl_matrix_int_min, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_int_minmax (const gsl_matrix_int * m, int * min_out, int * max_out)`
"""
function matrix_int_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_int_minmax, libgsl), Cvoid, (Ref{gsl_matrix_int}, Ref{Cint}, Ref{Cint}), m, min_out, max_out)
end

@doc md"""
    matrix_int_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_int_max_index (const gsl_matrix_int * m, size_t * imax, size_t *jmax)`
"""
function matrix_int_max_index(m, imax, jmax)
    ccall((:gsl_matrix_int_max_index, libgsl), Cvoid, (Ref{gsl_matrix_int}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_int_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_int_min_index (const gsl_matrix_int * m, size_t * imin, size_t *jmin)`
"""
function matrix_int_min_index(m, imin, jmin)
    ccall((:gsl_matrix_int_min_index, libgsl), Cvoid, (Ref{gsl_matrix_int}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_int_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_int_minmax_index (const gsl_matrix_int * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_int_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_int_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_int}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_int_equal(a, b) -> Cint

C signature:
`int gsl_matrix_int_equal (const gsl_matrix_int * a, const gsl_matrix_int * b)`
"""
function matrix_int_equal(a, b)
    ccall((:gsl_matrix_int_equal, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), a, b)
end

@doc md"""
    matrix_int_isnull(m) -> Cint

C signature:
`int gsl_matrix_int_isnull (const gsl_matrix_int * m)`
"""
function matrix_int_isnull(m)
    ccall((:gsl_matrix_int_isnull, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_ispos(m) -> Cint

C signature:
`int gsl_matrix_int_ispos (const gsl_matrix_int * m)`
"""
function matrix_int_ispos(m)
    ccall((:gsl_matrix_int_ispos, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_isneg(m) -> Cint

C signature:
`int gsl_matrix_int_isneg (const gsl_matrix_int * m)`
"""
function matrix_int_isneg(m)
    ccall((:gsl_matrix_int_isneg, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_int_isnonneg (const gsl_matrix_int * m)`
"""
function matrix_int_isnonneg(m)
    ccall((:gsl_matrix_int_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_int},), m)
end

@doc md"""
    matrix_int_add(a, b) -> Cint

C signature:
`int gsl_matrix_int_add (gsl_matrix_int * a, const gsl_matrix_int * b)`
"""
function matrix_int_add(a, b)
    ccall((:gsl_matrix_int_add, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), a, b)
end

@doc md"""
    matrix_int_sub(a, b) -> Cint

C signature:
`int gsl_matrix_int_sub (gsl_matrix_int * a, const gsl_matrix_int * b)`
"""
function matrix_int_sub(a, b)
    ccall((:gsl_matrix_int_sub, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), a, b)
end

@doc md"""
    matrix_int_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_int_mul_elements (gsl_matrix_int * a, const gsl_matrix_int * b)`
"""
function matrix_int_mul_elements(a, b)
    ccall((:gsl_matrix_int_mul_elements, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), a, b)
end

@doc md"""
    matrix_int_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_int_div_elements (gsl_matrix_int * a, const gsl_matrix_int * b)`
"""
function matrix_int_div_elements(a, b)
    ccall((:gsl_matrix_int_div_elements, libgsl), Cint, (Ref{gsl_matrix_int}, Ref{gsl_matrix_int}), a, b)
end

@doc md"""
    matrix_int_scale(a, x) -> Cint

C signature:
`int gsl_matrix_int_scale (gsl_matrix_int * a, const double x)`
"""
function matrix_int_scale(a, x)
    ccall((:gsl_matrix_int_scale, libgsl), Cint, (Ref{gsl_matrix_int}, Cdouble), a, x)
end

@doc md"""
    matrix_int_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_int_add_constant (gsl_matrix_int * a, const double x)`
"""
function matrix_int_add_constant(a, x)
    ccall((:gsl_matrix_int_add_constant, libgsl), Cint, (Ref{gsl_matrix_int}, Cdouble), a, x)
end

@doc md"""
    matrix_int_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_int_add_diagonal (gsl_matrix_int * a, const double x)`
"""
function matrix_int_add_diagonal(a, x)
    ccall((:gsl_matrix_int_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_int}, Cdouble), a, x)
end

@doc md"""
    matrix_int_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_int_get_row(gsl_vector_int * v, const gsl_matrix_int * m, const size_t i)`
"""
function matrix_int_get_row(v, m, i)
    ccall((:gsl_matrix_int_get_row, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_matrix_int}, Csize_t), v, m, i)
end

@doc md"""
    matrix_int_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_int_get_col(gsl_vector_int * v, const gsl_matrix_int * m, const size_t j)`
"""
function matrix_int_get_col(v, m, j)
    ccall((:gsl_matrix_int_get_col, libgsl), Cint, (Ref{gsl_vector_int}, Ref{gsl_matrix_int}, Csize_t), v, m, j)
end

@doc md"""
    matrix_int_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_int_set_row(gsl_matrix_int * m, const size_t i, const gsl_vector_int * v)`
"""
function matrix_int_set_row(m, i, v)
    ccall((:gsl_matrix_int_set_row, libgsl), Cint, (Ref{gsl_matrix_int}, Csize_t, Ref{gsl_vector_int}), m, i, v)
end

@doc md"""
    matrix_int_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_int_set_col(gsl_matrix_int * m, const size_t j, const gsl_vector_int * v)`
"""
function matrix_int_set_col(m, j, v)
    ccall((:gsl_matrix_int_set_col, libgsl), Cint, (Ref{gsl_matrix_int}, Csize_t, Ref{gsl_vector_int}), m, j, v)
end

@doc md"""
    matrix_int_get(m, i, j) -> Cint

C signature:
`int gsl_matrix_int_get(const gsl_matrix_int * m, const size_t i, const size_t j)`
"""
function matrix_int_get(m, i, j)
    ccall((:gsl_matrix_int_get, libgsl), Cint, (Ref{gsl_matrix_int}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_int_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_int_set(gsl_matrix_int * m, const size_t i, const size_t j, const int x)`
"""
function matrix_int_set(m, i, j, x)
    ccall((:gsl_matrix_int_set, libgsl), Cvoid, (Ref{gsl_matrix_int}, Csize_t, Csize_t, Cint), m, i, j, x)
end

@doc md"""
    matrix_int_ptr(m, i, j) -> Ptr{Cint}

C signature:
`int * gsl_matrix_int_ptr(gsl_matrix_int * m, const size_t i, const size_t j)`
"""
function matrix_int_ptr(m, i, j)
    ccall((:gsl_matrix_int_ptr, libgsl), Ptr{Cint}, (Ref{gsl_matrix_int}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_int_const_ptr(m, i, j) -> Ptr{Cint}

C signature:
`const int * gsl_matrix_int_const_ptr(const gsl_matrix_int * m, const size_t i, const size_t j)`
"""
function matrix_int_const_ptr(m, i, j)
    ccall((:gsl_matrix_int_const_ptr, libgsl), Ptr{Cint}, (Ref{gsl_matrix_int}, Csize_t, Csize_t), m, i, j)
end

