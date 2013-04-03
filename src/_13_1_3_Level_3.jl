#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 13.1.3 Level 3 #
##################
export blas_sgemm, blas_dgemm, blas_cgemm, blas_zgemm, blas_ssymm, blas_dsymm,
       blas_csymm, blas_zsymm, blas_chemm, blas_zhemm, blas_strmm, blas_dtrmm,
       blas_ctrmm, blas_ztrmm, blas_strsm, blas_dtrsm, blas_ctrsm, blas_ztrsm,
       blas_ssyrk, blas_dsyrk, blas_csyrk, blas_zsyrk, blas_cherk, blas_zherk,
       blas_ssyr2k, blas_dsyr2k, blas_csyr2k, blas_zsyr2k, blas_cher2k,
       blas_zher2k


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
function blas_sgemm(TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float}, beta::Real)
    C = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_sgemm, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_float},
        Ptr{gsl_matrix_float}, Cfloat, Ptr{gsl_matrix_float}), TransA, TransB,
        alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
function blas_dgemm(TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Real)
    C = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dgemm, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble,
        Ptr{gsl_matrix}), TransA, TransB, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
function blas_cgemm(TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cgemm, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_matrix_complex_float}, gsl_complex_float,
        Ptr{gsl_matrix_complex_float}), TransA, TransB, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
function blas_zgemm(TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zgemm, :libgsl), Cint, (CBLAS_TRANSPOSE_t,
        CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex},
        Ptr{gsl_matrix_complex}, gsl_complex, Ptr{gsl_matrix_complex}), TransA,
        TransB, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_ssymm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::Real, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float}, beta::Real)
    C = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_ssymm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, Cfloat, Ptr{gsl_matrix_float}, Ptr{gsl_matrix_float},
        Cfloat, Ptr{gsl_matrix_float}), Side, Uplo, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_dsymm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::Real, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Real)
    C = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dsymm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble,
        Ptr{gsl_matrix}), Side, Uplo, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_csymm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_csymm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_matrix_complex_float}, gsl_complex_float,
        Ptr{gsl_matrix_complex_float}), Side, Uplo, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
function blas_zsymm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zsymm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, gsl_complex, Ptr{gsl_matrix_complex},
        Ptr{gsl_matrix_complex}, gsl_complex, Ptr{gsl_matrix_complex}), Side,
        Uplo, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is hermitian.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.  The imaginary elements
# of the diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_chemm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_chemm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_matrix_complex_float}, gsl_complex_float,
        Ptr{gsl_matrix_complex_float}), Side, Uplo, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is hermitian.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.  The imaginary elements
# of the diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_zhemm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zhemm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, gsl_complex, Ptr{gsl_matrix_complex},
        Ptr{gsl_matrix_complex}, gsl_complex, Ptr{gsl_matrix_complex}), Side,
        Uplo, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
#   Returns: Cint
function blas_strmm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Real, A::Ptr{gsl_matrix_float})
    B = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_strmm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cfloat,
        Ptr{gsl_matrix_float}, Ptr{gsl_matrix_float}), Side, Uplo, TransA,
        Diag, alpha, A, B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
#   Returns: Cint
function blas_dtrmm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Real, A::Ptr{gsl_matrix})
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dtrmm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_matrix}), Side, Uplo, TransA, Diag, alpha, A,
        B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
#   Returns: Cint
function blas_ctrmm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float})
    B = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_ctrmm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex_float,
        Ptr{gsl_matrix_complex_float}, Ptr{gsl_matrix_complex_float}), Side,
        Uplo, TransA, Diag, alpha, A, B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
#   Returns: Cint
function blas_ztrmm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex})
    B = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_ztrmm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex,
        Ptr{gsl_matrix_complex}, Ptr{gsl_matrix_complex}), Side, Uplo, TransA,
        Diag, alpha, A, B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_strsm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Real, A::Ptr{gsl_matrix_float})
    B = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_strsm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cfloat,
        Ptr{gsl_matrix_float}, Ptr{gsl_matrix_float}), Side, Uplo, TransA,
        Diag, alpha, A, B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_dtrsm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Real, A::Ptr{gsl_matrix})
    B = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dtrsm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_matrix}), Side, Uplo, TransA, Diag, alpha, A,
        B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_ctrsm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float})
    B = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_ctrsm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex_float,
        Ptr{gsl_matrix_complex_float}, Ptr{gsl_matrix_complex_float}), Side,
        Uplo, TransA, Diag, alpha, A, B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
#   Returns: Cint
function blas_ztrsm(Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex})
    B = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_ztrsm, :libgsl), Cint, (CBLAS_SIDE_t,
        CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex,
        Ptr{gsl_matrix_complex}, Ptr{gsl_matrix_complex}), Side, Uplo, TransA,
        Diag, alpha, A, B )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(B)[1]
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
function blas_ssyrk(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix_float}, beta::Real)
    C = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_ssyrk, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_float}, Cfloat,
        Ptr{gsl_matrix_float}), Uplo, Trans, alpha, A, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
function blas_dsyrk(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix}, beta::Real)
    C = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dsyrk, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}),
        Uplo, Trans, alpha, A, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
function blas_csyrk(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_csyrk, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
        gsl_complex_float, Ptr{gsl_matrix_complex_float}), Uplo, Trans, alpha,
        A, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
function blas_zsyrk(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, beta::gsl_complex)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zsyrk, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex}, gsl_complex,
        Ptr{gsl_matrix_complex}), Uplo, Trans, alpha, A, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-k update of the hermitian matrix C, C = \alpha
# A A^H + \beta C when Trans is CblasNoTrans and C = \alpha A^H A + \beta C
# when Trans is CblasConjTrans.  Since the matrix C is hermitian only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_cherk(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix_complex_float}, beta::Real)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cherk, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_complex_float}, Cfloat,
        Ptr{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-k update of the hermitian matrix C, C = \alpha
# A A^H + \beta C when Trans is CblasNoTrans and C = \alpha A^H A + \beta C
# when Trans is CblasConjTrans.  Since the matrix C is hermitian only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
#   Returns: Cint
function blas_zherk(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix_complex}, beta::Real)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zherk, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix_complex}, Cdouble,
        Ptr{gsl_matrix_complex}), Uplo, Trans, alpha, A, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
#   Returns: Cint
function blas_ssyr2k(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float}, beta::Real)
    C = convert(Ptr{gsl_matrix_float}, Array(gsl_matrix_float, 1))
    errno = ccall( (:gsl_blas_ssyr2k, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_float},
        Ptr{gsl_matrix_float}, Cfloat, Ptr{gsl_matrix_float}), Uplo, Trans,
        alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
#   Returns: Cint
function blas_dsyr2k(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Real, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Real)
    C = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    errno = ccall( (:gsl_blas_dsyr2k, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble,
        Ptr{gsl_matrix}), Uplo, Trans, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
#   Returns: Cint
function blas_csyr2k(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_csyr2k, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_matrix_complex_float}, gsl_complex_float,
        Ptr{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
#   Returns: Cint
function blas_zsyr2k(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zsyr2k, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex},
        Ptr{gsl_matrix_complex}, gsl_complex, Ptr{gsl_matrix_complex}), Uplo,
        Trans, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-2k update of the hermitian matrix C, C =
# \alpha A B^H + \alpha^* B A^H + \beta C when Trans is CblasNoTrans and C =
# \alpha A^H B + \alpha^* B^H A + \beta C when Trans is CblasConjTrans.  Since
# the matrix C is hermitian only its upper half or lower half need to be
# stored.  When Uplo is CblasUpper then the upper triangle and diagonal of C
# are used, and when Uplo is CblasLower then the lower triangle and diagonal of
# C are used.  The imaginary elements of the diagonal are automatically set to
# zero.
# 
#   Returns: Cint
function blas_cher2k(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::Real)
    C = convert(Ptr{gsl_matrix_complex_float}, Array(gsl_matrix_complex_float, 1))
    errno = ccall( (:gsl_blas_cher2k, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
        Ptr{gsl_matrix_complex_float}, Cfloat, Ptr{gsl_matrix_complex_float}),
        Uplo, Trans, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end


# These functions compute a rank-2k update of the hermitian matrix C, C =
# \alpha A B^H + \alpha^* B A^H + \beta C when Trans is CblasNoTrans and C =
# \alpha A^H B + \alpha^* B^H A + \beta C when Trans is CblasConjTrans.  Since
# the matrix C is hermitian only its upper half or lower half need to be
# stored.  When Uplo is CblasUpper then the upper triangle and diagonal of C
# are used, and when Uplo is CblasLower then the lower triangle and diagonal of
# C are used.  The imaginary elements of the diagonal are automatically set to
# zero.
# 
#   Returns: Cint
function blas_zher2k(Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::Real)
    C = convert(Ptr{gsl_matrix_complex}, Array(gsl_matrix_complex, 1))
    errno = ccall( (:gsl_blas_zher2k, :libgsl), Cint, (CBLAS_UPLO_t,
        CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex},
        Ptr{gsl_matrix_complex}, Cdouble, Ptr{gsl_matrix_complex}), Uplo,
        Trans, alpha, A, B, beta, C )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(C)[1]
end
