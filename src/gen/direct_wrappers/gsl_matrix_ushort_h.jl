#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_matrix_ushort.h ######################################################


@doc md"""
    matrix_ushort_alloc(n1, n2) -> Ptr{gsl_matrix_ushort}

C signature:
`gsl_matrix_ushort * gsl_matrix_ushort_alloc (const size_t n1, const size_t n2)`
"""
function matrix_ushort_alloc(n1, n2)
    ccall((:gsl_matrix_ushort_alloc, libgsl), Ptr{gsl_matrix_ushort}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_ushort_calloc(n1, n2) -> Ptr{gsl_matrix_ushort}

C signature:
`gsl_matrix_ushort * gsl_matrix_ushort_calloc (const size_t n1, const size_t n2)`
"""
function matrix_ushort_calloc(n1, n2)
    ccall((:gsl_matrix_ushort_calloc, libgsl), Ptr{gsl_matrix_ushort}, (Csize_t, Csize_t), n1, n2)
end

@doc md"""
    matrix_ushort_alloc_from_block(b, offset, n1, n2, d2) -> Ptr{gsl_matrix_ushort}

C signature:
`gsl_matrix_ushort * gsl_matrix_ushort_alloc_from_block (gsl_block_ushort * b, const size_t offset, const size_t n1, const size_t n2, const size_t d2)`
"""
function matrix_ushort_alloc_from_block(b, offset, n1, n2, d2)
    ccall((:gsl_matrix_ushort_alloc_from_block, libgsl), Ptr{gsl_matrix_ushort}, (Ref{gsl_block_ushort}, Csize_t, Csize_t, Csize_t, Csize_t), b, offset, n1, n2, d2)
end

@doc md"""
    matrix_ushort_alloc_from_matrix(m, k1, k2, n1, n2) -> Ptr{gsl_matrix_ushort}

C signature:
`gsl_matrix_ushort * gsl_matrix_ushort_alloc_from_matrix (gsl_matrix_ushort * m, const size_t k1, const size_t k2, const size_t n1, const size_t n2)`
"""
function matrix_ushort_alloc_from_matrix(m, k1, k2, n1, n2)
    ccall((:gsl_matrix_ushort_alloc_from_matrix, libgsl), Ptr{gsl_matrix_ushort}, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t, Csize_t), m, k1, k2, n1, n2)
end

@doc md"""
    vector_ushort_alloc_row_from_matrix(m, i) -> Ptr{gsl_vector_ushort}

C signature:
`gsl_vector_ushort * gsl_vector_ushort_alloc_row_from_matrix (gsl_matrix_ushort * m, const size_t i)`
"""
function vector_ushort_alloc_row_from_matrix(m, i)
    ccall((:gsl_vector_ushort_alloc_row_from_matrix, libgsl), Ptr{gsl_vector_ushort}, (Ref{gsl_matrix_ushort}, Csize_t), m, i)
end

@doc md"""
    vector_ushort_alloc_col_from_matrix(m, j) -> Ptr{gsl_vector_ushort}

C signature:
`gsl_vector_ushort * gsl_vector_ushort_alloc_col_from_matrix (gsl_matrix_ushort * m, const size_t j)`
"""
function vector_ushort_alloc_col_from_matrix(m, j)
    ccall((:gsl_vector_ushort_alloc_col_from_matrix, libgsl), Ptr{gsl_vector_ushort}, (Ref{gsl_matrix_ushort}, Csize_t), m, j)
end

@doc md"""
    matrix_ushort_free(m) -> Cvoid

C signature:
`void gsl_matrix_ushort_free (gsl_matrix_ushort * m)`
"""
function matrix_ushort_free(m)
    ccall((:gsl_matrix_ushort_free, libgsl), Cvoid, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_submatrix(m, i, j, n1, n2) -> _gsl_matrix_ushort_view

C signature:
`_gsl_matrix_ushort_view gsl_matrix_ushort_submatrix (gsl_matrix_ushort * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_ushort_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_ushort_submatrix, libgsl), _gsl_matrix_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_ushort_row(m, i) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_row (gsl_matrix_ushort * m, const size_t i)`
"""
function matrix_ushort_row(m, i)
    ccall((:gsl_matrix_ushort_row, libgsl), _gsl_vector_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t), m, i)
end

@doc md"""
    matrix_ushort_column(m, j) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_column (gsl_matrix_ushort * m, const size_t j)`
"""
function matrix_ushort_column(m, j)
    ccall((:gsl_matrix_ushort_column, libgsl), _gsl_vector_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t), m, j)
end

@doc md"""
    matrix_ushort_diagonal(m) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_diagonal (gsl_matrix_ushort * m)`
"""
function matrix_ushort_diagonal(m)
    ccall((:gsl_matrix_ushort_diagonal, libgsl), _gsl_vector_ushort_view, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_subdiagonal(m, k) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_subdiagonal (gsl_matrix_ushort * m, const size_t k)`
"""
function matrix_ushort_subdiagonal(m, k)
    ccall((:gsl_matrix_ushort_subdiagonal, libgsl), _gsl_vector_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t), m, k)
end

@doc md"""
    matrix_ushort_superdiagonal(m, k) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_superdiagonal (gsl_matrix_ushort * m, const size_t k)`
"""
function matrix_ushort_superdiagonal(m, k)
    ccall((:gsl_matrix_ushort_superdiagonal, libgsl), _gsl_vector_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t), m, k)
end

@doc md"""
    matrix_ushort_subrow(m, i, offset, n) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_subrow (gsl_matrix_ushort * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_ushort_subrow(m, i, offset, n)
    ccall((:gsl_matrix_ushort_subrow, libgsl), _gsl_vector_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_ushort_subcolumn(m, j, offset, n) -> _gsl_vector_ushort_view

C signature:
`_gsl_vector_ushort_view gsl_matrix_ushort_subcolumn (gsl_matrix_ushort * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_ushort_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_ushort_subcolumn, libgsl), _gsl_vector_ushort_view, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_ushort_view_array(base, n1, n2) -> _gsl_matrix_ushort_view

C signature:
`_gsl_matrix_ushort_view gsl_matrix_ushort_view_array (unsigned short * base, const size_t n1, const size_t n2)`
"""
function matrix_ushort_view_array(base, n1, n2)
    ccall((:gsl_matrix_ushort_view_array, libgsl), _gsl_matrix_ushort_view, (Ref{Cushort}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_ushort_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_ushort_view

C signature:
`_gsl_matrix_ushort_view gsl_matrix_ushort_view_array_with_tda (unsigned short * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ushort_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_ushort_view_array_with_tda, libgsl), _gsl_matrix_ushort_view, (Ref{Cushort}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_ushort_view_vector(v, n1, n2) -> _gsl_matrix_ushort_view

C signature:
`_gsl_matrix_ushort_view gsl_matrix_ushort_view_vector (gsl_vector_ushort * v, const size_t n1, const size_t n2)`
"""
function matrix_ushort_view_vector(v, n1, n2)
    ccall((:gsl_matrix_ushort_view_vector, libgsl), _gsl_matrix_ushort_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_ushort_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_ushort_view

C signature:
`_gsl_matrix_ushort_view gsl_matrix_ushort_view_vector_with_tda (gsl_vector_ushort * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ushort_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_ushort_view_vector_with_tda, libgsl), _gsl_matrix_ushort_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_ushort_const_submatrix(m, i, j, n1, n2) -> _gsl_matrix_ushort_const_view

C signature:
`_gsl_matrix_ushort_const_view gsl_matrix_ushort_const_submatrix (const gsl_matrix_ushort * m, const size_t i, const size_t j, const size_t n1, const size_t n2)`
"""
function matrix_ushort_const_submatrix(m, i, j, n1, n2)
    ccall((:gsl_matrix_ushort_const_submatrix, libgsl), _gsl_matrix_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t, Csize_t), m, i, j, n1, n2)
end

@doc md"""
    matrix_ushort_const_row(m, i) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_row (const gsl_matrix_ushort * m, const size_t i)`
"""
function matrix_ushort_const_row(m, i)
    ccall((:gsl_matrix_ushort_const_row, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t), m, i)
end

@doc md"""
    matrix_ushort_const_column(m, j) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_column (const gsl_matrix_ushort * m, const size_t j)`
"""
function matrix_ushort_const_column(m, j)
    ccall((:gsl_matrix_ushort_const_column, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t), m, j)
end

@doc md"""
    matrix_ushort_const_diagonal(m) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_diagonal (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_const_diagonal(m)
    ccall((:gsl_matrix_ushort_const_diagonal, libgsl), _gsl_vector_ushort_const_view, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_const_subdiagonal(m, k) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_subdiagonal (const gsl_matrix_ushort * m, const size_t k)`
"""
function matrix_ushort_const_subdiagonal(m, k)
    ccall((:gsl_matrix_ushort_const_subdiagonal, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t), m, k)
end

@doc md"""
    matrix_ushort_const_superdiagonal(m, k) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_superdiagonal (const gsl_matrix_ushort * m, const size_t k)`
"""
function matrix_ushort_const_superdiagonal(m, k)
    ccall((:gsl_matrix_ushort_const_superdiagonal, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t), m, k)
end

@doc md"""
    matrix_ushort_const_subrow(m, i, offset, n) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_subrow (const gsl_matrix_ushort * m, const size_t i, const size_t offset, const size_t n)`
"""
function matrix_ushort_const_subrow(m, i, offset, n)
    ccall((:gsl_matrix_ushort_const_subrow, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t), m, i, offset, n)
end

@doc md"""
    matrix_ushort_const_subcolumn(m, j, offset, n) -> _gsl_vector_ushort_const_view

C signature:
`_gsl_vector_ushort_const_view gsl_matrix_ushort_const_subcolumn (const gsl_matrix_ushort * m, const size_t j, const size_t offset, const size_t n)`
"""
function matrix_ushort_const_subcolumn(m, j, offset, n)
    ccall((:gsl_matrix_ushort_const_subcolumn, libgsl), _gsl_vector_ushort_const_view, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Csize_t), m, j, offset, n)
end

@doc md"""
    matrix_ushort_const_view_array(base, n1, n2) -> _gsl_matrix_ushort_const_view

C signature:
`_gsl_matrix_ushort_const_view gsl_matrix_ushort_const_view_array (const unsigned short * base, const size_t n1, const size_t n2)`
"""
function matrix_ushort_const_view_array(base, n1, n2)
    ccall((:gsl_matrix_ushort_const_view_array, libgsl), _gsl_matrix_ushort_const_view, (Ref{Cushort}, Csize_t, Csize_t), base, n1, n2)
end

@doc md"""
    matrix_ushort_const_view_array_with_tda(base, n1, n2, tda) -> _gsl_matrix_ushort_const_view

C signature:
`_gsl_matrix_ushort_const_view gsl_matrix_ushort_const_view_array_with_tda (const unsigned short * base, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ushort_const_view_array_with_tda(base, n1, n2, tda)
    ccall((:gsl_matrix_ushort_const_view_array_with_tda, libgsl), _gsl_matrix_ushort_const_view, (Ref{Cushort}, Csize_t, Csize_t, Csize_t), base, n1, n2, tda)
end

@doc md"""
    matrix_ushort_const_view_vector(v, n1, n2) -> _gsl_matrix_ushort_const_view

C signature:
`_gsl_matrix_ushort_const_view gsl_matrix_ushort_const_view_vector (const gsl_vector_ushort * v, const size_t n1, const size_t n2)`
"""
function matrix_ushort_const_view_vector(v, n1, n2)
    ccall((:gsl_matrix_ushort_const_view_vector, libgsl), _gsl_matrix_ushort_const_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t), v, n1, n2)
end

@doc md"""
    matrix_ushort_const_view_vector_with_tda(v, n1, n2, tda) -> _gsl_matrix_ushort_const_view

C signature:
`_gsl_matrix_ushort_const_view gsl_matrix_ushort_const_view_vector_with_tda (const gsl_vector_ushort * v, const size_t n1, const size_t n2, const size_t tda)`
"""
function matrix_ushort_const_view_vector_with_tda(v, n1, n2, tda)
    ccall((:gsl_matrix_ushort_const_view_vector_with_tda, libgsl), _gsl_matrix_ushort_const_view, (Ref{gsl_vector_ushort}, Csize_t, Csize_t, Csize_t), v, n1, n2, tda)
end

@doc md"""
    matrix_ushort_set_zero(m) -> Cvoid

C signature:
`void gsl_matrix_ushort_set_zero (gsl_matrix_ushort * m)`
"""
function matrix_ushort_set_zero(m)
    ccall((:gsl_matrix_ushort_set_zero, libgsl), Cvoid, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_set_identity(m) -> Cvoid

C signature:
`void gsl_matrix_ushort_set_identity (gsl_matrix_ushort * m)`
"""
function matrix_ushort_set_identity(m)
    ccall((:gsl_matrix_ushort_set_identity, libgsl), Cvoid, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_set_all(m, x) -> Cvoid

C signature:
`void gsl_matrix_ushort_set_all (gsl_matrix_ushort * m, unsigned short x)`
"""
function matrix_ushort_set_all(m, x)
    ccall((:gsl_matrix_ushort_set_all, libgsl), Cvoid, (Ref{gsl_matrix_ushort}, Cushort), m, x)
end

@doc md"""
    matrix_ushort_fread(stream, m) -> Cint

C signature:
`int gsl_matrix_ushort_fread (FILE * stream, gsl_matrix_ushort * m)`
"""
function matrix_ushort_fread(stream, m)
    ccall((:gsl_matrix_ushort_fread, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ushort}), stream, m)
end

@doc md"""
    matrix_ushort_fwrite(stream, m) -> Cint

C signature:
`int gsl_matrix_ushort_fwrite (FILE * stream, const gsl_matrix_ushort * m)`
"""
function matrix_ushort_fwrite(stream, m)
    ccall((:gsl_matrix_ushort_fwrite, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ushort}), stream, m)
end

@doc md"""
    matrix_ushort_fscanf(stream, m) -> Cint

C signature:
`int gsl_matrix_ushort_fscanf (FILE * stream, gsl_matrix_ushort * m)`
"""
function matrix_ushort_fscanf(stream, m)
    ccall((:gsl_matrix_ushort_fscanf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ushort}), stream, m)
end

@doc md"""
    matrix_ushort_fprintf(stream, m, format) -> Cint

C signature:
`int gsl_matrix_ushort_fprintf (FILE * stream, const gsl_matrix_ushort * m, const char * format)`
"""
function matrix_ushort_fprintf(stream, m, format)
    ccall((:gsl_matrix_ushort_fprintf, libgsl), Cint, (Ref{Cvoid}, Ref{gsl_matrix_ushort}, Ref{Cchar}), stream, m, format)
end

@doc md"""
    matrix_ushort_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_ushort_memcpy(gsl_matrix_ushort * dest, const gsl_matrix_ushort * src)`
"""
function matrix_ushort_memcpy(dest, src)
    ccall((:gsl_matrix_ushort_memcpy, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), dest, src)
end

@doc md"""
    matrix_ushort_swap(m1, m2) -> Cint

C signature:
`int gsl_matrix_ushort_swap(gsl_matrix_ushort * m1, gsl_matrix_ushort * m2)`
"""
function matrix_ushort_swap(m1, m2)
    ccall((:gsl_matrix_ushort_swap, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), m1, m2)
end

@doc md"""
    matrix_ushort_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_ushort_tricpy(const char uplo_src, const int copy_diag, gsl_matrix_ushort * dest, const gsl_matrix_ushort * src)`
"""
function matrix_ushort_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_ushort_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_ushort_swap_rows(m, i, j) -> Cint

C signature:
`int gsl_matrix_ushort_swap_rows(gsl_matrix_ushort * m, const size_t i, const size_t j)`
"""
function matrix_ushort_swap_rows(m, i, j)
    ccall((:gsl_matrix_ushort_swap_rows, libgsl), Cint, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ushort_swap_columns(m, i, j) -> Cint

C signature:
`int gsl_matrix_ushort_swap_columns(gsl_matrix_ushort * m, const size_t i, const size_t j)`
"""
function matrix_ushort_swap_columns(m, i, j)
    ccall((:gsl_matrix_ushort_swap_columns, libgsl), Cint, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ushort_swap_rowcol(m, i, j) -> Cint

C signature:
`int gsl_matrix_ushort_swap_rowcol(gsl_matrix_ushort * m, const size_t i, const size_t j)`
"""
function matrix_ushort_swap_rowcol(m, i, j)
    ccall((:gsl_matrix_ushort_swap_rowcol, libgsl), Cint, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ushort_transpose(m) -> Cint

C signature:
`int gsl_matrix_ushort_transpose (gsl_matrix_ushort * m)`
"""
function matrix_ushort_transpose(m)
    ccall((:gsl_matrix_ushort_transpose, libgsl), Cint, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_transpose_memcpy(dest, src) -> Cint

C signature:
`int gsl_matrix_ushort_transpose_memcpy (gsl_matrix_ushort * dest, const gsl_matrix_ushort * src)`
"""
function matrix_ushort_transpose_memcpy(dest, src)
    ccall((:gsl_matrix_ushort_transpose_memcpy, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), dest, src)
end

@doc md"""
    matrix_ushort_transpose_tricpy(uplo_src, copy_diag, dest, src) -> Cint

C signature:
`int gsl_matrix_ushort_transpose_tricpy (const char uplo_src, const int copy_diag, gsl_matrix_ushort * dest, const gsl_matrix_ushort * src)`
"""
function matrix_ushort_transpose_tricpy(uplo_src, copy_diag, dest, src)
    ccall((:gsl_matrix_ushort_transpose_tricpy, libgsl), Cint, (Cchar, Cint, Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), uplo_src, copy_diag, dest, src)
end

@doc md"""
    matrix_ushort_max(m) -> Cushort

C signature:
`unsigned short gsl_matrix_ushort_max (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_max(m)
    ccall((:gsl_matrix_ushort_max, libgsl), Cushort, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_min(m) -> Cushort

C signature:
`unsigned short gsl_matrix_ushort_min (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_min(m)
    ccall((:gsl_matrix_ushort_min, libgsl), Cushort, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_minmax(m, min_out, max_out) -> Cvoid

C signature:
`void gsl_matrix_ushort_minmax (const gsl_matrix_ushort * m, unsigned short * min_out, unsigned short * max_out)`
"""
function matrix_ushort_minmax(m, min_out, max_out)
    ccall((:gsl_matrix_ushort_minmax, libgsl), Cvoid, (Ref{gsl_matrix_ushort}, Ref{Cushort}, Ref{Cushort}), m, min_out, max_out)
end

@doc md"""
    matrix_ushort_max_index(m, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_ushort_max_index (const gsl_matrix_ushort * m, size_t * imax, size_t *jmax)`
"""
function matrix_ushort_max_index(m, imax, jmax)
    ccall((:gsl_matrix_ushort_max_index, libgsl), Cvoid, (Ref{gsl_matrix_ushort}, Ref{Csize_t}, Ref{Csize_t}), m, imax, jmax)
end

@doc md"""
    matrix_ushort_min_index(m, imin, jmin) -> Cvoid

C signature:
`void gsl_matrix_ushort_min_index (const gsl_matrix_ushort * m, size_t * imin, size_t *jmin)`
"""
function matrix_ushort_min_index(m, imin, jmin)
    ccall((:gsl_matrix_ushort_min_index, libgsl), Cvoid, (Ref{gsl_matrix_ushort}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin)
end

@doc md"""
    matrix_ushort_minmax_index(m, imin, jmin, imax, jmax) -> Cvoid

C signature:
`void gsl_matrix_ushort_minmax_index (const gsl_matrix_ushort * m, size_t * imin, size_t * jmin, size_t * imax, size_t * jmax)`
"""
function matrix_ushort_minmax_index(m, imin, jmin, imax, jmax)
    ccall((:gsl_matrix_ushort_minmax_index, libgsl), Cvoid, (Ref{gsl_matrix_ushort}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}, Ref{Csize_t}), m, imin, jmin, imax, jmax)
end

@doc md"""
    matrix_ushort_equal(a, b) -> Cint

C signature:
`int gsl_matrix_ushort_equal (const gsl_matrix_ushort * a, const gsl_matrix_ushort * b)`
"""
function matrix_ushort_equal(a, b)
    ccall((:gsl_matrix_ushort_equal, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), a, b)
end

@doc md"""
    matrix_ushort_isnull(m) -> Cint

C signature:
`int gsl_matrix_ushort_isnull (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_isnull(m)
    ccall((:gsl_matrix_ushort_isnull, libgsl), Cint, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_ispos(m) -> Cint

C signature:
`int gsl_matrix_ushort_ispos (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_ispos(m)
    ccall((:gsl_matrix_ushort_ispos, libgsl), Cint, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_isneg(m) -> Cint

C signature:
`int gsl_matrix_ushort_isneg (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_isneg(m)
    ccall((:gsl_matrix_ushort_isneg, libgsl), Cint, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_isnonneg(m) -> Cint

C signature:
`int gsl_matrix_ushort_isnonneg (const gsl_matrix_ushort * m)`
"""
function matrix_ushort_isnonneg(m)
    ccall((:gsl_matrix_ushort_isnonneg, libgsl), Cint, (Ptr{gsl_matrix_ushort},), m)
end

@doc md"""
    matrix_ushort_add(a, b) -> Cint

C signature:
`int gsl_matrix_ushort_add (gsl_matrix_ushort * a, const gsl_matrix_ushort * b)`
"""
function matrix_ushort_add(a, b)
    ccall((:gsl_matrix_ushort_add, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), a, b)
end

@doc md"""
    matrix_ushort_sub(a, b) -> Cint

C signature:
`int gsl_matrix_ushort_sub (gsl_matrix_ushort * a, const gsl_matrix_ushort * b)`
"""
function matrix_ushort_sub(a, b)
    ccall((:gsl_matrix_ushort_sub, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), a, b)
end

@doc md"""
    matrix_ushort_mul_elements(a, b) -> Cint

C signature:
`int gsl_matrix_ushort_mul_elements (gsl_matrix_ushort * a, const gsl_matrix_ushort * b)`
"""
function matrix_ushort_mul_elements(a, b)
    ccall((:gsl_matrix_ushort_mul_elements, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), a, b)
end

@doc md"""
    matrix_ushort_div_elements(a, b) -> Cint

C signature:
`int gsl_matrix_ushort_div_elements (gsl_matrix_ushort * a, const gsl_matrix_ushort * b)`
"""
function matrix_ushort_div_elements(a, b)
    ccall((:gsl_matrix_ushort_div_elements, libgsl), Cint, (Ref{gsl_matrix_ushort}, Ref{gsl_matrix_ushort}), a, b)
end

@doc md"""
    matrix_ushort_scale(a, x) -> Cint

C signature:
`int gsl_matrix_ushort_scale (gsl_matrix_ushort * a, const double x)`
"""
function matrix_ushort_scale(a, x)
    ccall((:gsl_matrix_ushort_scale, libgsl), Cint, (Ref{gsl_matrix_ushort}, Cdouble), a, x)
end

@doc md"""
    matrix_ushort_add_constant(a, x) -> Cint

C signature:
`int gsl_matrix_ushort_add_constant (gsl_matrix_ushort * a, const double x)`
"""
function matrix_ushort_add_constant(a, x)
    ccall((:gsl_matrix_ushort_add_constant, libgsl), Cint, (Ref{gsl_matrix_ushort}, Cdouble), a, x)
end

@doc md"""
    matrix_ushort_add_diagonal(a, x) -> Cint

C signature:
`int gsl_matrix_ushort_add_diagonal (gsl_matrix_ushort * a, const double x)`
"""
function matrix_ushort_add_diagonal(a, x)
    ccall((:gsl_matrix_ushort_add_diagonal, libgsl), Cint, (Ref{gsl_matrix_ushort}, Cdouble), a, x)
end

@doc md"""
    matrix_ushort_get_row(v, m, i) -> Cint

C signature:
`int gsl_matrix_ushort_get_row(gsl_vector_ushort * v, const gsl_matrix_ushort * m, const size_t i)`
"""
function matrix_ushort_get_row(v, m, i)
    ccall((:gsl_matrix_ushort_get_row, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_matrix_ushort}, Csize_t), v, m, i)
end

@doc md"""
    matrix_ushort_get_col(v, m, j) -> Cint

C signature:
`int gsl_matrix_ushort_get_col(gsl_vector_ushort * v, const gsl_matrix_ushort * m, const size_t j)`
"""
function matrix_ushort_get_col(v, m, j)
    ccall((:gsl_matrix_ushort_get_col, libgsl), Cint, (Ref{gsl_vector_ushort}, Ref{gsl_matrix_ushort}, Csize_t), v, m, j)
end

@doc md"""
    matrix_ushort_set_row(m, i, v) -> Cint

C signature:
`int gsl_matrix_ushort_set_row(gsl_matrix_ushort * m, const size_t i, const gsl_vector_ushort * v)`
"""
function matrix_ushort_set_row(m, i, v)
    ccall((:gsl_matrix_ushort_set_row, libgsl), Cint, (Ref{gsl_matrix_ushort}, Csize_t, Ref{gsl_vector_ushort}), m, i, v)
end

@doc md"""
    matrix_ushort_set_col(m, j, v) -> Cint

C signature:
`int gsl_matrix_ushort_set_col(gsl_matrix_ushort * m, const size_t j, const gsl_vector_ushort * v)`
"""
function matrix_ushort_set_col(m, j, v)
    ccall((:gsl_matrix_ushort_set_col, libgsl), Cint, (Ref{gsl_matrix_ushort}, Csize_t, Ref{gsl_vector_ushort}), m, j, v)
end

@doc md"""
    matrix_ushort_get(m, i, j) -> Cushort

C signature:
`unsigned short gsl_matrix_ushort_get(const gsl_matrix_ushort * m, const size_t i, const size_t j)`
"""
function matrix_ushort_get(m, i, j)
    ccall((:gsl_matrix_ushort_get, libgsl), Cushort, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ushort_set(m, i, j, x) -> Cvoid

C signature:
`void gsl_matrix_ushort_set(gsl_matrix_ushort * m, const size_t i, const size_t j, const unsigned short x)`
"""
function matrix_ushort_set(m, i, j, x)
    ccall((:gsl_matrix_ushort_set, libgsl), Cvoid, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t, Cushort), m, i, j, x)
end

@doc md"""
    matrix_ushort_ptr(m, i, j) -> Ptr{Cushort}

C signature:
`unsigned short * gsl_matrix_ushort_ptr(gsl_matrix_ushort * m, const size_t i, const size_t j)`
"""
function matrix_ushort_ptr(m, i, j)
    ccall((:gsl_matrix_ushort_ptr, libgsl), Ptr{Cushort}, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t), m, i, j)
end

@doc md"""
    matrix_ushort_const_ptr(m, i, j) -> Ptr{Cushort}

C signature:
`const unsigned short * gsl_matrix_ushort_const_ptr(const gsl_matrix_ushort * m, const size_t i, const size_t j)`
"""
function matrix_ushort_const_ptr(m, i, j)
    ccall((:gsl_matrix_ushort_const_ptr, libgsl), Ptr{Cushort}, (Ref{gsl_matrix_ushort}, Csize_t, Csize_t), m, i, j)
end

