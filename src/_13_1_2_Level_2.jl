#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 13.1.2 Level 2 #
##################
export blas_sgemv, blas_dgemv, blas_cgemv, blas_zgemv, blas_strmv, blas_dtrmv,
       blas_ctrmv, blas_ztrmv, blas_strsv, blas_dtrsv, blas_ctrsv, blas_ztrsv,
       blas_ssymv, blas_dsymv, blas_chemv, blas_zhemv, blas_sger, blas_dger,
       blas_cgeru, blas_zgeru, blas_cgerc, blas_zgerc, blas_ssyr, blas_dsyr,
       blas_cher, blas_zher, blas_ssyr2, blas_dsyr2, blas_cher2, blas_zher2


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
function blas_sgemv(TransA::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix_float}, x::Ptr{gsl_vector_float}, beta::Real)
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_sgemv, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        Cfloat, Ptr{gsl_matrix_float}, Ptr{gsl_vector_float}, Cfloat,
        Ptr{gsl_vector_float}), TransA, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
function blas_dgemv(TransA::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector}, beta::Real)
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_dgemv, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        Cdouble, Ptr{gsl_matrix}, Ptr{gsl_vector}, Cdouble, Ptr{gsl_vector}),
        TransA, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
function blas_cgemv(TransA::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, x::Ptr{gsl_vector_complex_float}, beta::gsl_complex_float)
    y = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_cgemv, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_vector_complex_float}, gsl_complex_float,
        Ptr{gsl_vector_complex_float}), TransA, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
function blas_zgemv(TransA::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex}, beta::gsl_complex)
    y = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_zgemv, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        gsl_complex, Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
        gsl_complex, Ptr{gsl_vector_complex}), TransA, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
#   Returns: Cint
function blas_strmv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_float})
    x = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_strmv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_float},
        Ptr{gsl_vector_float}), Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
#   Returns: Cint
function blas_dtrmv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_dtrmv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix}, Ptr{gsl_vector}),
        Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
#   Returns: Cint
function blas_ctrmv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex_float})
    x = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_ctrmv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_vector_complex_float}), Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
#   Returns: Cint
function blas_ztrmv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex})
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_ztrmv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex},
        Ptr{gsl_vector_complex}), Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_strsv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_float})
    x = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_strsv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_float},
        Ptr{gsl_vector_float}), Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_dtrsv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix})
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_dtrsv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix}, Ptr{gsl_vector}),
        Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_ctrsv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex_float})
    x = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_ctrsv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_vector_complex_float}), Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_ztrsv(Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex})
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_ztrsv, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex},
        Ptr{gsl_vector_complex}), Uplo, TransA, Diag, A, x )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the symmetric matrix A.  Since the matrix A is symmetric only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_ssymv(Uplo::CBLAS_UPLO_t, alpha::Real, A::Ptr{gsl_matrix_float}, x::Ptr{gsl_vector_float}, beta::Real)
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_ssymv, :libgsl), Cint, (CBLAS_UPLO_t, Cfloat,
        Ptr{gsl_matrix_float}, Ptr{gsl_vector_float}, Cfloat,
        Ptr{gsl_vector_float}), Uplo, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the symmetric matrix A.  Since the matrix A is symmetric only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_dsymv(Uplo::CBLAS_UPLO_t, alpha::Real, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector}, beta::Real)
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_dsymv, :libgsl), Cint, (CBLAS_UPLO_t,
        Cdouble, Ptr{gsl_matrix}, Ptr{gsl_vector}, Cdouble, Ptr{gsl_vector}),
        Uplo, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the hermitian matrix A.  Since the matrix A is hermitian only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically assumed to be zero and are not referenced.
# 
#   Returns: Cint
function blas_chemv(Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, x::Ptr{gsl_vector_complex_float}, beta::gsl_complex_float)
    y = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_chemv, :libgsl), Cint, (CBLAS_UPLO_t,
        gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_vector_complex_float}, gsl_complex_float,
        Ptr{gsl_vector_complex_float}), Uplo, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the hermitian matrix A.  Since the matrix A is hermitian only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically assumed to be zero and are not referenced.
# 
#   Returns: Cint
function blas_zhemv(Uplo::CBLAS_UPLO_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex}, beta::gsl_complex)
    y = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_zhemv, :libgsl), Cint, (CBLAS_UPLO_t,
        gsl_complex, Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
        gsl_complex, Ptr{gsl_vector_complex}), Uplo, alpha, A, x, beta, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
function blas_sger(alpha::Real, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    A = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_sger, :libgsl), Cint, (Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{gsl_matrix_float}),
        alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
function blas_dger(alpha::Real, x::Ptr{gsl_vector}, y::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dger, :libgsl), Cint, (Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}), alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
function blas_cgeru(alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    A = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cgeru, :libgsl), Cint, (gsl_complex_float,
        Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
        Ptr{gsl_matrix_complex_float}), alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
function blas_zgeru(alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zgeru, :libgsl), Cint, (gsl_complex,
        Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex},
        Ptr{gsl_matrix_complex}), alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the conjugate rank-1 update A = \alpha x y^H + A of
# the matrix A.
# 
#   Returns: Cint
function blas_cgerc(alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    A = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cgerc, :libgsl), Cint, (gsl_complex_float,
        Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
        Ptr{gsl_matrix_complex_float}), alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the conjugate rank-1 update A = \alpha x y^H + A of
# the matrix A.
# 
#   Returns: Cint
function blas_zgerc(alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zgerc, :libgsl), Cint, (gsl_complex,
        Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex},
        Ptr{gsl_matrix_complex}), alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the symmetric rank-1 update A = \alpha x x^T + A of
# the symmetric matrix A.  Since the matrix A is symmetric only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_ssyr(Uplo::CBLAS_UPLO_t, alpha::Real, x::Ptr{gsl_vector_float})
    A = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_ssyr, :libgsl), Cint, (CBLAS_UPLO_t, Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_matrix_float}), Uplo, alpha, x, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the symmetric rank-1 update A = \alpha x x^T + A of
# the symmetric matrix A.  Since the matrix A is symmetric only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_dsyr(Uplo::CBLAS_UPLO_t, alpha::Real, x::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dsyr, :libgsl), Cint, (CBLAS_UPLO_t, Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_matrix}), Uplo, alpha, x, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the hermitian rank-1 update A = \alpha x x^H + A of
# the hermitian matrix A.  Since the matrix A is hermitian only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_cher(Uplo::CBLAS_UPLO_t, alpha::Real, x::Ptr{gsl_vector_complex_float})
    A = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cher, :libgsl), Cint, (CBLAS_UPLO_t, Cfloat,
        Ptr{gsl_vector_complex_float}, Ptr{gsl_matrix_complex_float}), Uplo,
        alpha, x, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the hermitian rank-1 update A = \alpha x x^H + A of
# the hermitian matrix A.  Since the matrix A is hermitian only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_zher(Uplo::CBLAS_UPLO_t, alpha::Real, x::Ptr{gsl_vector_complex})
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zher, :libgsl), Cint, (CBLAS_UPLO_t, Cdouble,
        Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}), Uplo, alpha, x, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the symmetric rank-2 update A = \alpha x y^T + \alpha
# y x^T + A of the symmetric matrix A.  Since the matrix A is symmetric only
# its upper half or lower half need to be stored.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_ssyr2(Uplo::CBLAS_UPLO_t, alpha::Real, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    A = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_ssyr2, :libgsl), Cint, (CBLAS_UPLO_t, Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{gsl_matrix_float}),
        Uplo, alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the symmetric rank-2 update A = \alpha x y^T + \alpha
# y x^T + A of the symmetric matrix A.  Since the matrix A is symmetric only
# its upper half or lower half need to be stored.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_dsyr2(Uplo::CBLAS_UPLO_t, alpha::Real, x::Ptr{gsl_vector}, y::Ptr{gsl_vector})
    A = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dsyr2, :libgsl), Cint, (CBLAS_UPLO_t,
        Cdouble, Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}), Uplo,
        alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the hermitian rank-2 update A = \alpha x y^H +
# \alpha^* y x^H + A of the hermitian matrix A.  Since the matrix A is
# hermitian only its upper half or lower half need to be stored.  When Uplo is
# CblasUpper then the upper triangle and diagonal of A are used, and when Uplo
# is CblasLower then the lower triangle and diagonal of A are used.  The
# imaginary elements of the diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_cher2(Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    A = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cher2, :libgsl), Cint, (CBLAS_UPLO_t,
        gsl_complex_float, Ptr{gsl_vector_complex_float},
        Ptr{gsl_vector_complex_float}, Ptr{gsl_matrix_complex_float}), Uplo,
        alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end


# These functions compute the hermitian rank-2 update A = \alpha x y^H +
# \alpha^* y x^H + A of the hermitian matrix A.  Since the matrix A is
# hermitian only its upper half or lower half need to be stored.  When Uplo is
# CblasUpper then the upper triangle and diagonal of A are used, and when Uplo
# is CblasLower then the lower triangle and diagonal of A are used.  The
# imaginary elements of the diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_zher2(Uplo::CBLAS_UPLO_t, alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    A = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zher2, :libgsl), Cint, (CBLAS_UPLO_t,
        gsl_complex, Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex},
        Ptr{gsl_matrix_complex}), Uplo, alpha, x, y, A )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(A)[1]
end
