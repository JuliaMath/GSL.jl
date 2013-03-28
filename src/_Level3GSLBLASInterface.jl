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


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_float}
### #XXX Unknown input type C::Ptr{gsl_matrix_float}
### function gsl_blas_sgemm (TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float}, beta::Cfloat, C::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_sgemm, "libgsl"), Cint, (CBLAS_TRANSPOSE_t,
###         CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_float},
###         Ptr{gsl_matrix_float}, Cfloat, Ptr{gsl_matrix_float}), TransA, TransB,
###         alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### #XXX Unknown input type C::Ptr{gsl_matrix}
### function gsl_blas_dgemm (TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dgemm, "libgsl"), Cint, (CBLAS_TRANSPOSE_t,
###         CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble,
###         Ptr{gsl_matrix}), TransA, TransB, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cgemm (TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cgemm, "libgsl"), Cint, (CBLAS_TRANSPOSE_t,
###         CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_matrix_complex_float}, gsl_complex_float,
###         Ptr{gsl_matrix_complex_float}), TransA, TransB, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha op(A)
# op(B) + \beta C where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans and similarly for the parameter TransB.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type TransB::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zgemm (TransA::CBLAS_TRANSPOSE_t, TransB::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zgemm, "libgsl"), Cint, (CBLAS_TRANSPOSE_t,
###         CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}, gsl_complex, Ptr{gsl_matrix_complex}), TransA,
###         TransB, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_float}
### #XXX Unknown input type C::Ptr{gsl_matrix_float}
### function gsl_blas_ssymm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float}, beta::Cfloat, C::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_ssymm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         Cfloat, Ptr{gsl_matrix_float}, Ptr{gsl_matrix_float}, Cfloat,
###         Ptr{gsl_matrix_float}), Side, Uplo, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### #XXX Unknown input type C::Ptr{gsl_matrix}
### function gsl_blas_dsymm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dsymm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}),
###         Side, Uplo, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_csymm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_csymm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_matrix_complex_float}, gsl_complex_float,
###         Ptr{gsl_matrix_complex_float}), Side, Uplo, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is symmetric.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zsymm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zsymm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         gsl_complex, Ptr{gsl_matrix_complex}, Ptr{gsl_matrix_complex},
###         gsl_complex, Ptr{gsl_matrix_complex}), Side, Uplo, alpha, A, B, beta, C
###         )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is hermitian.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.  The imaginary elements
# of the diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_chemm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_chemm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_matrix_complex_float}, gsl_complex_float,
###         Ptr{gsl_matrix_complex_float}), Side, Uplo, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product and sum C = \alpha A B +
# \beta C for Side is CblasLeft and C = \alpha B A + \beta C for Side is
# CblasRight, where the matrix A is hermitian.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.  The imaginary elements
# of the diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zhemm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zhemm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         gsl_complex, Ptr{gsl_matrix_complex}, Ptr{gsl_matrix_complex},
###         gsl_complex, Ptr{gsl_matrix_complex}), Side, Uplo, alpha, A, B, beta, C
###         )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_float}
### function gsl_blas_strmm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_strmm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cfloat, Ptr{gsl_matrix_float},
###         Ptr{gsl_matrix_float}), Side, Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### function gsl_blas_dtrmm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dtrmm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cdouble, Ptr{gsl_matrix},
###         Ptr{gsl_matrix}), Side, Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### function gsl_blas_ctrmm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_ctrmm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex_float,
###         Ptr{gsl_matrix_complex_float}, Ptr{gsl_matrix_complex_float}), Side,
###         Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-matrix product B = \alpha op(A) B for Side
# is CblasLeft and B = \alpha B op(A) for Side is CblasRight.  The matrix A is
# triangular and op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans. When Uplo is CblasUpper then the upper triangle of A is used,
# and when Uplo is CblasLower then the lower triangle of A is used.  If Diag is
# CblasNonUnit then the diagonal of A is used, but if Diag is CblasUnit then
# the diagonal elements of the matrix A are taken as unity and are not
# referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### function gsl_blas_ztrmm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_ztrmm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex, Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}), Side, Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_float}
### function gsl_blas_strsm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_strsm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cfloat, Ptr{gsl_matrix_float},
###         Ptr{gsl_matrix_float}), Side, Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### function gsl_blas_dtrsm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dtrsm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cdouble, Ptr{gsl_matrix},
###         Ptr{gsl_matrix}), Side, Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### function gsl_blas_ctrsm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_ctrsm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex_float,
###         Ptr{gsl_matrix_complex_float}, Ptr{gsl_matrix_complex_float}), Side,
###         Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute the inverse-matrix matrix product B = \alpha
# op(inv(A))B for Side is CblasLeft and B = \alpha B op(inv(A)) for Side is
# CblasRight.  The matrix A is triangular and op(A) = A, A^T, A^H for TransA =
# CblasNoTrans, CblasTrans, CblasConjTrans. When Uplo is CblasUpper then the
# upper triangle of A is used, and when Uplo is CblasLower then the lower
# triangle of A is used.  If Diag is CblasNonUnit then the diagonal of A is
# used, but if Diag is CblasUnit then the diagonal elements of the matrix A are
# taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Side::CBLAS_SIDE_t
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### function gsl_blas_ztrsm (Side::CBLAS_SIDE_t, Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_ztrsm, "libgsl"), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex, Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}), Side, Uplo, TransA, Diag, alpha, A, B )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type C::Ptr{gsl_matrix_float}
### function gsl_blas_ssyrk (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, beta::Cfloat, C::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_ssyrk, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_float}, Cfloat,
###         Ptr{gsl_matrix_float}), Uplo, Trans, alpha, A, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type C::Ptr{gsl_matrix}
### function gsl_blas_dsyrk (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Cdouble, A::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dsyrk, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix}, Cdouble, Ptr{gsl_matrix}),
###         Uplo, Trans, alpha, A, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_csyrk (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_csyrk, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         gsl_complex_float, Ptr{gsl_matrix_complex_float}), Uplo, Trans, alpha,
###         A, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-k update of the symmetric matrix C, C = \alpha
# A A^T + \beta C when Trans is CblasNoTrans and C = \alpha A^T A + \beta C
# when Trans is CblasTrans.  Since the matrix C is symmetric only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zsyrk (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, beta::gsl_complex, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zsyrk, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex}, gsl_complex,
###         Ptr{gsl_matrix_complex}), Uplo, Trans, alpha, A, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-k update of the hermitian matrix C, C = \alpha
# A A^H + \beta C when Trans is CblasNoTrans and C = \alpha A^H A + \beta C
# when Trans is CblasConjTrans.  Since the matrix C is hermitian only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cherk (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Cfloat, A::Ptr{gsl_matrix_complex_float}, beta::Cfloat, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cherk, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_complex_float}, Cfloat,
###         Ptr{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-k update of the hermitian matrix C, C = \alpha
# A A^H + \beta C when Trans is CblasNoTrans and C = \alpha A^H A + \beta C
# when Trans is CblasConjTrans.  Since the matrix C is hermitian only its upper
# half or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of C are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of C are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zherk (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Cdouble, A::Ptr{gsl_matrix_complex}, beta::Cdouble, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zherk, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix_complex}, Cdouble,
###         Ptr{gsl_matrix_complex}), Uplo, Trans, alpha, A, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_float}
### #XXX Unknown input type C::Ptr{gsl_matrix_float}
### function gsl_blas_ssyr2k (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, B::Ptr{gsl_matrix_float}, beta::Cfloat, C::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_ssyr2k, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, Cfloat, Ptr{gsl_matrix_float},
###         Ptr{gsl_matrix_float}, Cfloat, Ptr{gsl_matrix_float}), Uplo, Trans,
###         alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type B::Ptr{gsl_matrix}
### #XXX Unknown input type C::Ptr{gsl_matrix}
### function gsl_blas_dsyr2k (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::Cdouble, A::Ptr{gsl_matrix}, B::Ptr{gsl_matrix}, beta::Cdouble, C::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dsyr2k, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, Cdouble, Ptr{gsl_matrix}, Ptr{gsl_matrix}, Cdouble,
###         Ptr{gsl_matrix}), Uplo, Trans, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_csyr2k (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::gsl_complex_float, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_csyr2k, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_matrix_complex_float}, gsl_complex_float,
###         Ptr{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-2k update of the symmetric matrix C, C =
# \alpha A B^T + \alpha B A^T + \beta C when Trans is CblasNoTrans and C =
# \alpha A^T B + \alpha B^T A + \beta C when Trans is CblasTrans.  Since the
# matrix C is symmetric only its upper half or lower half need to be stored.
# When Uplo is CblasUpper then the upper triangle and diagonal of C are used,
# and when Uplo is CblasLower then the lower triangle and diagonal of C are
# used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zsyr2k (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::gsl_complex, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zsyr2k, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}, gsl_complex, Ptr{gsl_matrix_complex}), Uplo,
###         Trans, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-2k update of the hermitian matrix C, C =
# \alpha A B^H + \alpha^* B A^H + \beta C when Trans is CblasNoTrans and C =
# \alpha A^H B + \alpha^* B^H A + \beta C when Trans is CblasConjTrans.  Since
# the matrix C is hermitian only its upper half or lower half need to be
# stored.  When Uplo is CblasUpper then the upper triangle and diagonal of C
# are used, and when Uplo is CblasLower then the lower triangle and diagonal of
# C are used.  The imaginary elements of the diagonal are automatically set to
# zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type C::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cher2k (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, B::Ptr{gsl_matrix_complex_float}, beta::Cfloat, C::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cher2k, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_matrix_complex_float}, Cfloat, Ptr{gsl_matrix_complex_float}),
###         Uplo, Trans, alpha, A, B, beta, C )
### end


### Function uses unknown type; disabled
### # These functions compute a rank-2k update of the hermitian matrix C, C =
# \alpha A B^H + \alpha^* B A^H + \beta C when Trans is CblasNoTrans and C =
# \alpha A^H B + \alpha^* B^H A + \beta C when Trans is CblasConjTrans.  Since
# the matrix C is hermitian only its upper half or lower half need to be
# stored.  When Uplo is CblasUpper then the upper triangle and diagonal of C
# are used, and when Uplo is CblasLower then the lower triangle and diagonal of
# C are used.  The imaginary elements of the diagonal are automatically set to
# zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type Trans::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type B::Ptr{gsl_matrix_complex}
### #XXX Unknown input type C::Ptr{gsl_matrix_complex}
### function gsl_blas_zher2k (Uplo::CBLAS_UPLO_t, Trans::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, B::Ptr{gsl_matrix_complex}, beta::Cdouble, C::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zher2k, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, gsl_complex, Ptr{gsl_matrix_complex},
###         Ptr{gsl_matrix_complex}, Cdouble, Ptr{gsl_matrix_complex}), Uplo,
###         Trans, alpha, A, B, beta, C )
### end