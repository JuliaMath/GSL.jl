#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 13.1.2 Level 2 #
##################
export gsl_blas_sgemv, gsl_blas_dgemv, gsl_blas_cgemv, gsl_blas_zgemv,
       gsl_blas_strmv, gsl_blas_dtrmv, gsl_blas_ctrmv, gsl_blas_ztrmv,
       gsl_blas_strsv, gsl_blas_dtrsv, gsl_blas_ctrsv, gsl_blas_ztrsv,
       gsl_blas_ssymv, gsl_blas_dsymv, gsl_blas_chemv, gsl_blas_zhemv,
       gsl_blas_sger, gsl_blas_dger, gsl_blas_cgeru, gsl_blas_zgeru,
       gsl_blas_cgerc, gsl_blas_zgerc, gsl_blas_ssyr, gsl_blas_dsyr,
       gsl_blas_cher, gsl_blas_zher, gsl_blas_ssyr2, gsl_blas_dsyr2,
       gsl_blas_cher2, gsl_blas_zher2


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### #XXX Unknown input type y::Ptr{gsl_vector_float}
### function gsl_blas_sgemv (TransA::CBLAS_TRANSPOSE_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, x::Ptr{gsl_vector_float}, beta::Cfloat, y::Ptr{gsl_vector_float})
###     ccall( (:gsl_blas_sgemv, "libgsl"), Cint, (CBLAS_TRANSPOSE_t, Cfloat,
###         Ptr{gsl_matrix_float}, Ptr{gsl_vector_float}, Cfloat,
###         Ptr{gsl_vector_float}), TransA, alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type x::Ptr{gsl_vector}
### #XXX Unknown input type y::Ptr{gsl_vector}
### function gsl_blas_dgemv (TransA::CBLAS_TRANSPOSE_t, alpha::Cdouble, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector}, beta::Cdouble, y::Ptr{gsl_vector})
###     ccall( (:gsl_blas_dgemv, "libgsl"), Cint, (CBLAS_TRANSPOSE_t, Cdouble,
###         Ptr{gsl_matrix}, Ptr{gsl_vector}, Cdouble, Ptr{gsl_vector}), TransA,
###         alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type y::Ptr{gsl_vector_complex_float}
### function gsl_blas_cgemv (TransA::CBLAS_TRANSPOSE_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, x::Ptr{gsl_vector_complex_float}, beta::gsl_complex_float, y::Ptr{gsl_vector_complex_float})
###     ccall( (:gsl_blas_cgemv, "libgsl"), Cint, (CBLAS_TRANSPOSE_t,
###         gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_vector_complex_float}, gsl_complex_float,
###         Ptr{gsl_vector_complex_float}), TransA, alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
### #   Returns: Cint
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type y::Ptr{gsl_vector_complex}
### function gsl_blas_zgemv (TransA::CBLAS_TRANSPOSE_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex}, beta::gsl_complex, y::Ptr{gsl_vector_complex})
###     ccall( (:gsl_blas_zgemv, "libgsl"), Cint, (CBLAS_TRANSPOSE_t,
###         gsl_complex, Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex},
###         gsl_complex, Ptr{gsl_vector_complex}), TransA, alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### function gsl_blas_strmv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_float}, x::Ptr{gsl_vector_float})
###     ccall( (:gsl_blas_strmv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_float},
###         Ptr{gsl_vector_float}), Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_blas_dtrmv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector})
###     ccall( (:gsl_blas_dtrmv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix}, Ptr{gsl_vector}),
###         Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### function gsl_blas_ctrmv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex_float}, x::Ptr{gsl_vector_complex_float})
###     ccall( (:gsl_blas_ctrmv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_vector_complex_float}), Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product x = op(A) x for the
# triangular matrix A, where op(A) = A, A^T, A^H for TransA = CblasNoTrans,
# CblasTrans, CblasConjTrans.  When Uplo is CblasUpper then the upper triangle
# of A is used, and when Uplo is CblasLower then the lower triangle of A is
# used.  If Diag is CblasNonUnit then the diagonal of the matrix is used, but
# if Diag is CblasUnit then the diagonal elements of the matrix A are taken as
# unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### function gsl_blas_ztrmv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex})
###     ccall( (:gsl_blas_ztrmv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex},
###         Ptr{gsl_vector_complex}), Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### function gsl_blas_strsv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_float}, x::Ptr{gsl_vector_float})
###     ccall( (:gsl_blas_strsv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_float},
###         Ptr{gsl_vector_float}), Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type x::Ptr{gsl_vector}
### function gsl_blas_dtrsv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector})
###     ccall( (:gsl_blas_dtrsv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix}, Ptr{gsl_vector}),
###         Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### function gsl_blas_ctrsv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex_float}, x::Ptr{gsl_vector_complex_float})
###     ccall( (:gsl_blas_ctrsv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_vector_complex_float}), Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
### #XXX Unknown input type Diag::CBLAS_DIAG_t
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### function gsl_blas_ztrsv (Uplo::CBLAS_UPLO_t, TransA::CBLAS_TRANSPOSE_t, Diag::CBLAS_DIAG_t, A::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex})
###     ccall( (:gsl_blas_ztrsv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ptr{gsl_matrix_complex},
###         Ptr{gsl_vector_complex}), Uplo, TransA, Diag, A, x )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the symmetric matrix A.  Since the matrix A is symmetric only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### #XXX Unknown input type y::Ptr{gsl_vector_float}
### function gsl_blas_ssymv (Uplo::CBLAS_UPLO_t, alpha::Cfloat, A::Ptr{gsl_matrix_float}, x::Ptr{gsl_vector_float}, beta::Cfloat, y::Ptr{gsl_vector_float})
###     ccall( (:gsl_blas_ssymv, "libgsl"), Cint, (CBLAS_UPLO_t, Cfloat,
###         Ptr{gsl_matrix_float}, Ptr{gsl_vector_float}, Cfloat,
###         Ptr{gsl_vector_float}), Uplo, alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the symmetric matrix A.  Since the matrix A is symmetric only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type A::Ptr{gsl_matrix}
### #XXX Unknown input type x::Ptr{gsl_vector}
### #XXX Unknown input type y::Ptr{gsl_vector}
### function gsl_blas_dsymv (Uplo::CBLAS_UPLO_t, alpha::Cdouble, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector}, beta::Cdouble, y::Ptr{gsl_vector})
###     ccall( (:gsl_blas_dsymv, "libgsl"), Cint, (CBLAS_UPLO_t, Cdouble,
###         Ptr{gsl_matrix}, Ptr{gsl_vector}, Cdouble, Ptr{gsl_vector}), Uplo,
###         alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the hermitian matrix A.  Since the matrix A is hermitian only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically assumed to be zero and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type beta::gsl_complex_float
### #XXX Unknown input type y::Ptr{gsl_vector_complex_float}
### function gsl_blas_chemv (Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, A::Ptr{gsl_matrix_complex_float}, x::Ptr{gsl_vector_complex_float}, beta::gsl_complex_float, y::Ptr{gsl_vector_complex_float})
###     ccall( (:gsl_blas_chemv, "libgsl"), Cint, (CBLAS_UPLO_t,
###         gsl_complex_float, Ptr{gsl_matrix_complex_float},
###         Ptr{gsl_vector_complex_float}, gsl_complex_float,
###         Ptr{gsl_vector_complex_float}), Uplo, alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the hermitian matrix A.  Since the matrix A is hermitian only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically assumed to be zero and are not referenced.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### #XXX Unknown input type beta::gsl_complex
### #XXX Unknown input type y::Ptr{gsl_vector_complex}
### function gsl_blas_zhemv (Uplo::CBLAS_UPLO_t, alpha::gsl_complex, A::Ptr{gsl_matrix_complex}, x::Ptr{gsl_vector_complex}, beta::gsl_complex, y::Ptr{gsl_vector_complex})
###     ccall( (:gsl_blas_zhemv, "libgsl"), Cint, (CBLAS_UPLO_t, gsl_complex,
###         Ptr{gsl_matrix_complex}, Ptr{gsl_vector_complex}, gsl_complex,
###         Ptr{gsl_vector_complex}), Uplo, alpha, A, x, beta, y )
### end


### Function uses unknown type; disabled
### # These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
### #   Returns: Cint
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### #XXX Unknown input type y::Ptr{gsl_vector_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### function gsl_blas_sger (alpha::Cfloat, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, A::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_sger, "libgsl"), Cint, (Cfloat,
###         Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{gsl_matrix_float}),
###         alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
### #   Returns: Cint
### #XXX Unknown input type x::Ptr{gsl_vector}
### #XXX Unknown input type y::Ptr{gsl_vector}
### #XXX Unknown input type A::Ptr{gsl_matrix}
### function gsl_blas_dger (alpha::Cdouble, x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dger, "libgsl"), Cint, (Cdouble, Ptr{gsl_vector},
###         Ptr{gsl_vector}, Ptr{gsl_matrix}), alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
### #   Returns: Cint
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type y::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cgeru (alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float}, A::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cgeru, "libgsl"), Cint, (gsl_complex_float,
###         Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
###         Ptr{gsl_matrix_complex_float}), alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
### #   Returns: Cint
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### #XXX Unknown input type y::Ptr{gsl_vector_complex}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_blas_zgeru (alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex}, A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zgeru, "libgsl"), Cint, (gsl_complex,
###         Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex},
###         Ptr{gsl_matrix_complex}), alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the conjugate rank-1 update A = \alpha x y^H + A of
# the matrix A.
# 
### #   Returns: Cint
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type y::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cgerc (alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float}, A::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cgerc, "libgsl"), Cint, (gsl_complex_float,
###         Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
###         Ptr{gsl_matrix_complex_float}), alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the conjugate rank-1 update A = \alpha x y^H + A of
# the matrix A.
# 
### #   Returns: Cint
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### #XXX Unknown input type y::Ptr{gsl_vector_complex}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_blas_zgerc (alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex}, A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zgerc, "libgsl"), Cint, (gsl_complex,
###         Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex},
###         Ptr{gsl_matrix_complex}), alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the symmetric rank-1 update A = \alpha x x^T + A of
# the symmetric matrix A.  Since the matrix A is symmetric only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### function gsl_blas_ssyr (Uplo::CBLAS_UPLO_t, alpha::Cfloat, x::Ptr{gsl_vector_float}, A::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_ssyr, "libgsl"), Cint, (CBLAS_UPLO_t, Cfloat,
###         Ptr{gsl_vector_float}, Ptr{gsl_matrix_float}), Uplo, alpha, x, A )
### end


### Function uses unknown type; disabled
### # These functions compute the symmetric rank-1 update A = \alpha x x^T + A of
# the symmetric matrix A.  Since the matrix A is symmetric only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type x::Ptr{gsl_vector}
### #XXX Unknown input type A::Ptr{gsl_matrix}
### function gsl_blas_dsyr (Uplo::CBLAS_UPLO_t, alpha::Cdouble, x::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dsyr, "libgsl"), Cint, (CBLAS_UPLO_t, Cdouble,
###         Ptr{gsl_vector}, Ptr{gsl_matrix}), Uplo, alpha, x, A )
### end


### Function uses unknown type; disabled
### # These functions compute the hermitian rank-1 update A = \alpha x x^H + A of
# the hermitian matrix A.  Since the matrix A is hermitian only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cher (Uplo::CBLAS_UPLO_t, alpha::Cfloat, x::Ptr{gsl_vector_complex_float}, A::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cher, "libgsl"), Cint, (CBLAS_UPLO_t, Cfloat,
###         Ptr{gsl_vector_complex_float}, Ptr{gsl_matrix_complex_float}), Uplo,
###         alpha, x, A )
### end


### Function uses unknown type; disabled
### # These functions compute the hermitian rank-1 update A = \alpha x x^H + A of
# the hermitian matrix A.  Since the matrix A is hermitian only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_blas_zher (Uplo::CBLAS_UPLO_t, alpha::Cdouble, x::Ptr{gsl_vector_complex}, A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zher, "libgsl"), Cint, (CBLAS_UPLO_t, Cdouble,
###         Ptr{gsl_vector_complex}, Ptr{gsl_matrix_complex}), Uplo, alpha, x, A )
### end


### Function uses unknown type; disabled
### # These functions compute the symmetric rank-2 update A = \alpha x y^T + \alpha
# y x^T + A of the symmetric matrix A.  Since the matrix A is symmetric only
# its upper half or lower half need to be stored.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type x::Ptr{gsl_vector_float}
### #XXX Unknown input type y::Ptr{gsl_vector_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_float}
### function gsl_blas_ssyr2 (Uplo::CBLAS_UPLO_t, alpha::Cfloat, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, A::Ptr{gsl_matrix_float})
###     ccall( (:gsl_blas_ssyr2, "libgsl"), Cint, (CBLAS_UPLO_t, Cfloat,
###         Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{gsl_matrix_float}),
###         Uplo, alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the symmetric rank-2 update A = \alpha x y^T + \alpha
# y x^T + A of the symmetric matrix A.  Since the matrix A is symmetric only
# its upper half or lower half need to be stored.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type x::Ptr{gsl_vector}
### #XXX Unknown input type y::Ptr{gsl_vector}
### #XXX Unknown input type A::Ptr{gsl_matrix}
### function gsl_blas_dsyr2 (Uplo::CBLAS_UPLO_t, alpha::Cdouble, x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
###     ccall( (:gsl_blas_dsyr2, "libgsl"), Cint, (CBLAS_UPLO_t, Cdouble,
###         Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}), Uplo, alpha, x, y,
###         A )
### end


### Function uses unknown type; disabled
### # These functions compute the hermitian rank-2 update A = \alpha x y^H +
# \alpha^* y x^H + A of the hermitian matrix A.  Since the matrix A is
# hermitian only its upper half or lower half need to be stored.  When Uplo is
# CblasUpper then the upper triangle and diagonal of A are used, and when Uplo
# is CblasLower then the lower triangle and diagonal of A are used.  The
# imaginary elements of the diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex_float
### #XXX Unknown input type x::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type y::Ptr{gsl_vector_complex_float}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
### function gsl_blas_cher2 (Uplo::CBLAS_UPLO_t, alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float}, A::Ptr{gsl_matrix_complex_float})
###     ccall( (:gsl_blas_cher2, "libgsl"), Cint, (CBLAS_UPLO_t,
###         gsl_complex_float, Ptr{gsl_vector_complex_float},
###         Ptr{gsl_vector_complex_float}, Ptr{gsl_matrix_complex_float}), Uplo,
###         alpha, x, y, A )
### end


### Function uses unknown type; disabled
### # These functions compute the hermitian rank-2 update A = \alpha x y^H +
# \alpha^* y x^H + A of the hermitian matrix A.  Since the matrix A is
# hermitian only its upper half or lower half need to be stored.  When Uplo is
# CblasUpper then the upper triangle and diagonal of A are used, and when Uplo
# is CblasLower then the lower triangle and diagonal of A are used.  The
# imaginary elements of the diagonal are automatically set to zero.
# 
### #   Returns: Cint
### #XXX Unknown input type Uplo::CBLAS_UPLO_t
### #XXX Unknown input type alpha::gsl_complex
### #XXX Unknown input type x::Ptr{gsl_vector_complex}
### #XXX Unknown input type y::Ptr{gsl_vector_complex}
### #XXX Unknown input type A::Ptr{gsl_matrix_complex}
### function gsl_blas_zher2 (Uplo::CBLAS_UPLO_t, alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex}, A::Ptr{gsl_matrix_complex})
###     ccall( (:gsl_blas_zher2, "libgsl"), Cint, (CBLAS_UPLO_t, gsl_complex,
###         Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex},
###         Ptr{gsl_matrix_complex}), Uplo, alpha, x, y, A )
### end