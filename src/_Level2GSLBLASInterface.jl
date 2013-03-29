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


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_float}
#XXX Coerced type for y::Ptr{Void}
function gsl_blas_sgemv (TransA::Void, alpha::Cfloat, A::Ptr{Void}, x::Ptr{Void}, beta::Cfloat, y::Ptr{Void})
    ccall( (:gsl_blas_sgemv, "libgsl"), Cint, (Void, Cfloat, Ptr{Void},
        Ptr{Void}, Cfloat, Ptr{Void}), TransA, alpha, A, x, beta, y )
end


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
function gsl_blas_dgemv (TransA::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector}, beta::Cdouble, y::Ptr{gsl_vector})
    ccall( (:gsl_blas_dgemv, "libgsl"), Cint, (Void, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_vector}, Cdouble, Ptr{gsl_vector}), TransA,
        alpha, A, x, beta, y )
end


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type y::Ptr{gsl_vector_complex_float}
#XXX Coerced type for y::Ptr{Void}
function gsl_blas_cgemv (TransA::Void, alpha::Void, A::Ptr{Void}, x::Ptr{Void}, beta::Void, y::Ptr{Void})
    ccall( (:gsl_blas_cgemv, "libgsl"), Cint, (Void, Void, Ptr{Void},
        Ptr{Void}, Void, Ptr{Void}), TransA, alpha, A, x, beta, y )
end


# These functions compute the matrix-vector product and sum y = \alpha op(A) x
# + \beta y, where op(A) = A, A^T, A^H for TransA = CblasNoTrans, CblasTrans,
# CblasConjTrans.
# 
#   Returns: Cint
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex}
#XXX Coerced type for y::Ptr{Void}
function gsl_blas_zgemv (TransA::Void, alpha::gsl_complex, A::Ptr{Void}, x::Ptr{Void}, beta::gsl_complex, y::Ptr{Void})
    ccall( (:gsl_blas_zgemv, "libgsl"), Cint, (Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, gsl_complex, Ptr{Void}), TransA, alpha, A, x,
        beta, y )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
function gsl_blas_strmv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{Void}, x::Ptr{Void})
    ccall( (:gsl_blas_strmv, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}), Uplo, TransA, Diag, A, x )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
function gsl_blas_dtrmv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dtrmv, "libgsl"), Cint, (Void, Void, Void,
        Ptr{gsl_matrix}, Ptr{gsl_vector}), Uplo, TransA, Diag, A, x )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
function gsl_blas_ctrmv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{Void}, x::Ptr{Void})
    ccall( (:gsl_blas_ctrmv, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}), Uplo, TransA, Diag, A, x )
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
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
function gsl_blas_ztrmv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{Void}, x::Ptr{Void})
    ccall( (:gsl_blas_ztrmv, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}), Uplo, TransA, Diag, A, x )
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
function gsl_blas_strsv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{Void}, x::Ptr{Void})
    ccall( (:gsl_blas_strsv, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}), Uplo, TransA, Diag, A, x )
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
function gsl_blas_dtrsv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dtrsv, "libgsl"), Cint, (Void, Void, Void,
        Ptr{gsl_matrix}, Ptr{gsl_vector}), Uplo, TransA, Diag, A, x )
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
function gsl_blas_ctrsv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{Void}, x::Ptr{Void})
    ccall( (:gsl_blas_ctrsv, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}), Uplo, TransA, Diag, A, x )
end


# These functions compute inv(op(A)) x for x, where op(A) = A, A^T, A^H for
# TransA = CblasNoTrans, CblasTrans, CblasConjTrans.  When Uplo is CblasUpper
# then the upper triangle of A is used, and when Uplo is CblasLower then the
# lower triangle of A is used.  If Diag is CblasNonUnit then the diagonal of
# the matrix is used, but if Diag is CblasUnit then the diagonal elements of
# the matrix A are taken as unity and are not referenced.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::CBLAS_TRANSPOSE_t
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::CBLAS_DIAG_t
#XXX Coerced type for Diag::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
function gsl_blas_ztrsv (Uplo::Void, TransA::Void, Diag::Void, A::Ptr{Void}, x::Ptr{Void})
    ccall( (:gsl_blas_ztrsv, "libgsl"), Cint, (Void, Void, Void, Ptr{Void},
        Ptr{Void}), Uplo, TransA, Diag, A, x )
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the symmetric matrix A.  Since the matrix A is symmetric only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_float}
#XXX Coerced type for y::Ptr{Void}
function gsl_blas_ssymv (Uplo::Void, alpha::Cfloat, A::Ptr{Void}, x::Ptr{Void}, beta::Cfloat, y::Ptr{Void})
    ccall( (:gsl_blas_ssymv, "libgsl"), Cint, (Void, Cfloat, Ptr{Void},
        Ptr{Void}, Cfloat, Ptr{Void}), Uplo, alpha, A, x, beta, y )
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the symmetric matrix A.  Since the matrix A is symmetric only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
function gsl_blas_dsymv (Uplo::Void, alpha::Cdouble, A::Ptr{gsl_matrix}, x::Ptr{gsl_vector}, beta::Cdouble, y::Ptr{gsl_vector})
    ccall( (:gsl_blas_dsymv, "libgsl"), Cint, (Void, Cdouble,
        Ptr{gsl_matrix}, Ptr{gsl_vector}, Cdouble, Ptr{gsl_vector}), Uplo,
        alpha, A, x, beta, y )
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the hermitian matrix A.  Since the matrix A is hermitian only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically assumed to be zero and are not referenced.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type beta::gsl_complex_float
#XXX Coerced type for beta::Void
#XXX Unknown input type y::Ptr{gsl_vector_complex_float}
#XXX Coerced type for y::Ptr{Void}
function gsl_blas_chemv (Uplo::Void, alpha::Void, A::Ptr{Void}, x::Ptr{Void}, beta::Void, y::Ptr{Void})
    ccall( (:gsl_blas_chemv, "libgsl"), Cint, (Void, Void, Ptr{Void},
        Ptr{Void}, Void, Ptr{Void}), Uplo, alpha, A, x, beta, y )
end


# These functions compute the matrix-vector product and sum y = \alpha A x +
# \beta y for the hermitian matrix A.  Since the matrix A is hermitian only its
# upper half or lower half need to be stored.  When Uplo is CblasUpper then the
# upper triangle and diagonal of A are used, and when Uplo is CblasLower then
# the lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically assumed to be zero and are not referenced.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex}
#XXX Coerced type for y::Ptr{Void}
function gsl_blas_zhemv (Uplo::Void, alpha::gsl_complex, A::Ptr{Void}, x::Ptr{Void}, beta::gsl_complex, y::Ptr{Void})
    ccall( (:gsl_blas_zhemv, "libgsl"), Cint, (Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, gsl_complex, Ptr{Void}), Uplo, alpha, A, x, beta,
        y )
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_float}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_sger (alpha::Cfloat, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_sger, "libgsl"), Cint, (Cfloat, Ptr{Void}, Ptr{Void},
        Ptr{Void}), alpha, x, y, A )
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
function gsl_blas_dger (alpha::Cdouble, x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dger, "libgsl"), Cint, (Cdouble, Ptr{gsl_vector},
        Ptr{gsl_vector}, Ptr{gsl_matrix}), alpha, x, y, A )
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex_float}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_cgeru (alpha::Void, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_cgeru, "libgsl"), Cint, (Void, Ptr{Void}, Ptr{Void},
        Ptr{Void}), alpha, x, y, A )
end


# These functions compute the rank-1 update A = \alpha x y^T + A of the matrix
# A.
# 
#   Returns: Cint
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_zgeru (alpha::gsl_complex, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_zgeru, "libgsl"), Cint, (gsl_complex, Ptr{Void},
        Ptr{Void}, Ptr{Void}), alpha, x, y, A )
end


# These functions compute the conjugate rank-1 update A = \alpha x y^H + A of
# the matrix A.
# 
#   Returns: Cint
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex_float}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_cgerc (alpha::Void, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_cgerc, "libgsl"), Cint, (Void, Ptr{Void}, Ptr{Void},
        Ptr{Void}), alpha, x, y, A )
end


# These functions compute the conjugate rank-1 update A = \alpha x y^H + A of
# the matrix A.
# 
#   Returns: Cint
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_zgerc (alpha::gsl_complex, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_zgerc, "libgsl"), Cint, (gsl_complex, Ptr{Void},
        Ptr{Void}, Ptr{Void}), alpha, x, y, A )
end


# These functions compute the symmetric rank-1 update A = \alpha x x^T + A of
# the symmetric matrix A.  Since the matrix A is symmetric only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_ssyr (Uplo::Void, alpha::Cfloat, x::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_ssyr, "libgsl"), Cint, (Void, Cfloat, Ptr{Void},
        Ptr{Void}), Uplo, alpha, x, A )
end


# These functions compute the symmetric rank-1 update A = \alpha x x^T + A of
# the symmetric matrix A.  Since the matrix A is symmetric only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
function gsl_blas_dsyr (Uplo::Void, alpha::Cdouble, x::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dsyr, "libgsl"), Cint, (Void, Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_matrix}), Uplo, alpha, x, A )
end


# These functions compute the hermitian rank-1 update A = \alpha x x^H + A of
# the hermitian matrix A.  Since the matrix A is hermitian only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_cher (Uplo::Void, alpha::Cfloat, x::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_cher, "libgsl"), Cint, (Void, Cfloat, Ptr{Void},
        Ptr{Void}), Uplo, alpha, x, A )
end


# These functions compute the hermitian rank-1 update A = \alpha x x^H + A of
# the hermitian matrix A.  Since the matrix A is hermitian only its upper half
# or lower half need to be stored.  When Uplo is CblasUpper then the upper
# triangle and diagonal of A are used, and when Uplo is CblasLower then the
# lower triangle and diagonal of A are used.  The imaginary elements of the
# diagonal are automatically set to zero.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_zher (Uplo::Void, alpha::Cdouble, x::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_zher, "libgsl"), Cint, (Void, Cdouble, Ptr{Void},
        Ptr{Void}), Uplo, alpha, x, A )
end


# These functions compute the symmetric rank-2 update A = \alpha x y^T + \alpha
# y x^T + A of the symmetric matrix A.  Since the matrix A is symmetric only
# its upper half or lower half need to be stored.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type x::Ptr{gsl_vector_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_float}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_ssyr2 (Uplo::Void, alpha::Cfloat, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_ssyr2, "libgsl"), Cint, (Void, Cfloat, Ptr{Void},
        Ptr{Void}, Ptr{Void}), Uplo, alpha, x, y, A )
end


# These functions compute the symmetric rank-2 update A = \alpha x y^T + \alpha
# y x^T + A of the symmetric matrix A.  Since the matrix A is symmetric only
# its upper half or lower half need to be stored.  When Uplo is CblasUpper then
# the upper triangle and diagonal of A are used, and when Uplo is CblasLower
# then the lower triangle and diagonal of A are used.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
function gsl_blas_dsyr2 (Uplo::Void, alpha::Cdouble, x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, A::Ptr{gsl_matrix})
    ccall( (:gsl_blas_dsyr2, "libgsl"), Cint, (Void, Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_vector}, Ptr{gsl_matrix}), Uplo, alpha, x, y,
        A )
end


# These functions compute the hermitian rank-2 update A = \alpha x y^H +
# \alpha^* y x^H + A of the hermitian matrix A.  Since the matrix A is
# hermitian only its upper half or lower half need to be stored.  When Uplo is
# CblasUpper then the upper triangle and diagonal of A are used, and when Uplo
# is CblasLower then the lower triangle and diagonal of A are used.  The
# imaginary elements of the diagonal are automatically set to zero.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type alpha::gsl_complex_float
#XXX Coerced type for alpha::Void
#XXX Unknown input type x::Ptr{gsl_vector_complex_float}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex_float}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex_float}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_cher2 (Uplo::Void, alpha::Void, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_cher2, "libgsl"), Cint, (Void, Void, Ptr{Void},
        Ptr{Void}, Ptr{Void}), Uplo, alpha, x, y, A )
end


# These functions compute the hermitian rank-2 update A = \alpha x y^H +
# \alpha^* y x^H + A of the hermitian matrix A.  Since the matrix A is
# hermitian only its upper half or lower half need to be stored.  When Uplo is
# CblasUpper then the upper triangle and diagonal of A are used, and when Uplo
# is CblasLower then the lower triangle and diagonal of A are used.  The
# imaginary elements of the diagonal are automatically set to zero.
# 
#   Returns: Cint
#XXX Unknown input type Uplo::CBLAS_UPLO_t
#XXX Coerced type for Uplo::Void
#XXX Unknown input type x::Ptr{gsl_vector_complex}
#XXX Coerced type for x::Ptr{Void}
#XXX Unknown input type y::Ptr{gsl_vector_complex}
#XXX Coerced type for y::Ptr{Void}
#XXX Unknown input type A::Ptr{gsl_matrix_complex}
#XXX Coerced type for A::Ptr{Void}
function gsl_blas_zher2 (Uplo::Void, alpha::gsl_complex, x::Ptr{Void}, y::Ptr{Void}, A::Ptr{Void})
    ccall( (:gsl_blas_zher2, "libgsl"), Cint, (Void, gsl_complex,
        Ptr{Void}, Ptr{Void}, Ptr{Void}), Uplo, alpha, x, y, A )
end
