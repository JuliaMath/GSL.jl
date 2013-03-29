#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 13.1.3 Level 3 #
##################
export gsl_blas_sgemm, gsl_blas_dgemm, gsl_blas_cgemm, gsl_blas_zgemm,
       gsl_blas_ssymm, gsl_blas_dsymm, gsl_blas_csymm, gsl_blas_zsymm,
       gsl_blas_chemm, gsl_blas_zhemm, gsl_blas_strmm, gsl_blas_dtrmm,
       gsl_blas_ctrmm, gsl_blas_ztrmm, gsl_blas_strsm, gsl_blas_dtrsm,
       gsl_blas_ctrsm, gsl_blas_ztrsm, gsl_blas_ssyrk, gsl_blas_dsyrk,
       gsl_blas_csyrk, gsl_blas_zsyrk, gsl_blas_cherk, gsl_blas_zherk,
       gsl_blas_ssyr2k, gsl_blas_dsyr2k, gsl_blas_csyr2k, gsl_blas_zsyr2k,
       gsl_blas_cher2k, gsl_blas_zher2k


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransB::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_sgemm (TransA::Void, TransB::Void, alpha::Cfloat, A::Ptr{Void}, B::Ptr{Void}, beta::Cfloat, C::Ptr{Void})
    ccall( (:gsl_blas_sgemm, "libgsl"), Cint, (Void, Void, Cfloat,
        Ptr{Void}, Ptr{Void}, Cfloat, Ptr{Void}), TransA, TransB, alpha, A, B,
        beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransB::Void
function gsl_blas_dgemm (TransA::Void, TransB::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dgemm, "libgsl"), Cint, (Void, Void, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}), TransA,
        TransB, alpha, A, B, beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransB::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_cgemm (TransA::Void, TransB::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void}, beta::Void, C::Ptr{Void})
    ccall( (:gsl_blas_cgemm, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}, Void, Ptr{Void}), TransA, TransB, alpha, A, B, beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransB::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zgemm (TransA::Void, TransB::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void}, beta::gsl_complex, C::Ptr{Void})
    ccall( (:gsl_blas_zgemm, "libgsl"), Cint, (Void, Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, gsl_complex, Ptr{Void}), TransA, TransB, alpha,
        A, B, beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_ssymm (Side::Void, Uplo::Void, alpha::Cfloat, A::Ptr{Void}, B::Ptr{Void}, beta::Cfloat, C::Ptr{Void})
    ccall( (:gsl_blas_ssymm, "libgsl"), Cint, (Void, Void, Cfloat,
        Ptr{Void}, Ptr{Void}, Cfloat, Ptr{Void}), Side, Uplo, alpha, A, B,
        beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
function gsl_blas_dsymm (Side::Void, Uplo::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dsymm, "libgsl"), Cint, (Void, Void, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}), Side,
        Uplo, alpha, A, B, beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_csymm (Side::Void, Uplo::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void}, beta::Void, C::Ptr{Void})
    ccall( (:gsl_blas_csymm, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}, Void, Ptr{Void}), Side, Uplo, alpha, A, B, beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zsymm (Side::Void, Uplo::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void}, beta::gsl_complex, C::Ptr{Void})
    ccall( (:gsl_blas_zsymm, "libgsl"), Cint, (Void, Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, gsl_complex, Ptr{Void}), Side, Uplo, alpha, A, B,
        beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is hermitian.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.  The imaginary elements
# of the diagonal are automatically set to zero.
# 
#   Returns: Cint
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_chemm (Side::Void, Uplo::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void}, beta::Void, C::Ptr{Void})
    ccall( (:gsl_blas_chemm, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}, Void, Ptr{Void}), Side, Uplo, alpha, A, B, beta, C )
end


# These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is hermitian.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.  The imaginary elements
# of the diagonal are automatically set to zero.
# 
#   Returns: Cint
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zhemm (Side::Void, Uplo::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void}, beta::gsl_complex, C::Ptr{Void})
    ccall( (:gsl_blas_zhemm, "libgsl"), Cint, (Void, Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, gsl_complex, Ptr{Void}), Side, Uplo, alpha, A, B,
        beta, C )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_float}
#XXX Coerced type for B::Ptr{Void}
function gsl_blas_strmm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::Cfloat, A::Ptr{Void}, B::Ptr{Void})
    ccall( (:gsl_blas_strmm, "libgsl"), Cint, (Void, Void, Void, Void,
        Cfloat, Ptr{Void}, Ptr{Void}), Side, Uplo, TransA, Diag, alpha, A, B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
function gsl_blas_dtrmm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dtrmm, "libgsl"), Cint, (Void, Void, Void, Void,
        Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}), Side, Uplo, TransA, Diag,
        alpha, A, B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
function gsl_blas_ctrmm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void})
    ccall( (:gsl_blas_ctrmm, "libgsl"), Cint, (Void, Void, Void, Void,
        Void, Ptr{Void}, Ptr{Void}), Side, Uplo, TransA, Diag, alpha, A, B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
function gsl_blas_ztrmm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void})
    ccall( (:gsl_blas_ztrmm, "libgsl"), Cint, (Void, Void, Void, Void,
        gsl_complex, Ptr{Void}, Ptr{Void}), Side, Uplo, TransA, Diag, alpha, A,
        B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_float}
#XXX Coerced type for B::Ptr{Void}
function gsl_blas_strsm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::Cfloat, A::Ptr{Void}, B::Ptr{Void})
    ccall( (:gsl_blas_strsm, "libgsl"), Cint, (Void, Void, Void, Void,
        Cfloat, Ptr{Void}, Ptr{Void}), Side, Uplo, TransA, Diag, alpha, A, B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
function gsl_blas_dtrsm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dtrsm, "libgsl"), Cint, (Void, Void, Void, Void,
        Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}), Side, Uplo, TransA, Diag,
        alpha, A, B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
function gsl_blas_ctrsm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void})
    ccall( (:gsl_blas_ctrsm, "libgsl"), Cint, (Void, Void, Void, Void,
        Void, Ptr{Void}, Ptr{Void}), Side, Uplo, TransA, Diag, alpha, A, B )
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
#XXX Unknown input type Side::CBLAS_SIDE_t
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
function gsl_blas_ztrsm (Side::Void, Uplo::Void, TransA::Void, Diag::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void})
    ccall( (:gsl_blas_ztrsm, "libgsl"), Cint, (Void, Void, Void, Void,
        gsl_complex, Ptr{Void}, Ptr{Void}), Side, Uplo, TransA, Diag, alpha, A,
        B )
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_ssyrk (Uplo::Void, Trans::Void, alpha::Cfloat, A::Ptr{Void}, beta::Cfloat, C::Ptr{Void})
    ccall( (:gsl_blas_ssyrk, "libgsl"), Cint, (Void, Void, Cfloat,
        Ptr{Void}, Cfloat, Ptr{Void}), Uplo, Trans, alpha, A, beta, C )
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
function gsl_blas_dsyrk (Uplo::Void, Trans::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dsyrk, "libgsl"), Cint, (Void, Void, Cdouble,
        Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}), Uplo, Trans, alpha, A,
        beta, C )
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_csyrk (Uplo::Void, Trans::Void, alpha::Void, A::Ptr{Void}, beta::Void, C::Ptr{Void})
    ccall( (:gsl_blas_csyrk, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Void, Ptr{Void}), Uplo, Trans, alpha, A, beta, C )
end


# These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zsyrk (Uplo::Void, Trans::Void, alpha::gsl_complex, A::Ptr{Void}, beta::gsl_complex, C::Ptr{Void})
    ccall( (:gsl_blas_zsyrk, "libgsl"), Cint, (Void, Void, gsl_complex,
        Ptr{Void}, gsl_complex, Ptr{Void}), Uplo, Trans, alpha, A, beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_cherk (Uplo::Void, Trans::Void, alpha::Cfloat, A::Ptr{Void}, beta::Cfloat, C::Ptr{Void})
    ccall( (:gsl_blas_cherk, "libgsl"), Cint, (Void, Void, Cfloat,
        Ptr{Void}, Cfloat, Ptr{Void}), Uplo, Trans, alpha, A, beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zherk (Uplo::Void, Trans::Void, alpha::Cdouble, A::Ptr{Void}, beta::Cdouble, C::Ptr{Void})
    ccall( (:gsl_blas_zherk, "libgsl"), Cint, (Void, Void, Cdouble,
        Ptr{Void}, Cdouble, Ptr{Void}), Uplo, Trans, alpha, A, beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_ssyr2k (Uplo::Void, Trans::Void, alpha::Cfloat, A::Ptr{Void}, B::Ptr{Void}, beta::Cfloat, C::Ptr{Void})
    ccall( (:gsl_blas_ssyr2k, "libgsl"), Cint, (Void, Void, Cfloat,
        Ptr{Void}, Ptr{Void}, Cfloat, Ptr{Void}), Uplo, Trans, alpha, A, B,
        beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
function gsl_blas_dsyr2k (Uplo::Void, Trans::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dsyr2k, "libgsl"), Cint, (Void, Void, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}), Uplo,
        Trans, alpha, A, B, beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_csyr2k (Uplo::Void, Trans::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void}, beta::Void, C::Ptr{Void})
    ccall( (:gsl_blas_csyr2k, "libgsl"), Cint, (Void, Void, Void,
        Ptr{Void}, Ptr{Void}, Void, Ptr{Void}), Uplo, Trans, alpha, A, B, beta,
        C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zsyr2k (Uplo::Void, Trans::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void}, beta::gsl_complex, C::Ptr{Void})
    ccall( (:gsl_blas_zsyr2k, "libgsl"), Cint, (Void, Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, gsl_complex, Ptr{Void}), Uplo, Trans, alpha, A,
        B, beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_cher2k (Uplo::Void, Trans::Void, alpha::Void, A::Ptr{Void}, B::Ptr{Void}, beta::Cfloat, C::Ptr{Void})
    ccall( (:gsl_blas_cher2k, "libgsl"), Cint, (Void, Void, Void,
        Ptr{Void}, Ptr{Void}, Cfloat, Ptr{Void}), Uplo, Trans, alpha, A, B,
        beta, C )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
#XXX Coerced type for Trans::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type B::Ptr{gsl_matrix_complex}
#XXX Coerced type for B::Ptr{Void}
#XXX Unknown input type C::Ptr{gsl_matrix_complex}
#XXX Coerced type for C::Ptr{Void}
function gsl_blas_zher2k (Uplo::Void, Trans::Void, alpha::gsl_complex, A::Ptr{Void}, B::Ptr{Void}, beta::Cdouble, C::Ptr{Void})
    ccall( (:gsl_blas_zher2k, "libgsl"), Cint, (Void, Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, Cdouble, Ptr{Void}), Uplo, Trans, alpha, A, B,
        beta, C )
end
