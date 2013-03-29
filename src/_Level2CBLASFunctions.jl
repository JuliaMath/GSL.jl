#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############
# D.2 Level 2 #
###############
export cblas_sgemv, cblas_sgbmv, cblas_strmv, cblas_stbmv, cblas_stpmv,
       cblas_strsv, cblas_stbsv, cblas_stpsv, cblas_dgemv, cblas_dgbmv,
       cblas_dtrmv, cblas_dtbmv, cblas_dtpmv, cblas_dtrsv, cblas_dtbsv,
       cblas_dtpsv, cblas_cgemv, cblas_cgbmv, cblas_ctrmv, cblas_ctbmv,
       cblas_ctpmv, cblas_ctrsv, cblas_ctbsv, cblas_ctpsv, cblas_zgemv,
       cblas_zgbmv, cblas_ztrmv, cblas_ztbmv, cblas_ztpmv, cblas_ztrsv,
       cblas_ztbsv, cblas_ztpsv, cblas_ssymv, cblas_ssbmv, cblas_sspmv,
       cblas_sger, cblas_ssyr, cblas_sspr, cblas_ssyr2, cblas_sspr2,
       cblas_dsymv, cblas_dsbmv, cblas_dspmv, cblas_dger, cblas_dsyr,
       cblas_dspr, cblas_dsyr2, cblas_dspr2, cblas_chemv, cblas_chbmv,
       cblas_chpmv, cblas_cgeru, cblas_cgerc, cblas_cher, cblas_chpr,
       cblas_cher2, cblas_chpr2, cblas_zhemv, cblas_zhbmv, cblas_zhpmv,
       cblas_zgeru, cblas_zgerc, cblas_zher, cblas_zhpr, cblas_zher2,
       cblas_zhpr2


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_sgemv (order::Void, TransA::Void, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sgemv, "libgsl"), Void, (Void, Void, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        order, TransA, M, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_sgbmv (order::Void, TransA::Void, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sgbmv, "libgsl"), Void, (Void, Void, Cint, Cint, Cint,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), order, TransA, M, N, KL, KU, alpha, A, lda, x,
        incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_strmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_strmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_stbmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stbmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag,
        N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_stpmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stpmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_strsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_strsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_stbsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stbsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag,
        N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_stpsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stpsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_dgemv (order::Void, TransA::Void, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dgemv, "libgsl"), Void, (Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
        Cint), order, TransA, M, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_dgbmv (order::Void, TransA::Void, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dgbmv, "libgsl"), Void, (Void, Void, Cint, Cint, Cint,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), order, TransA, M, N, KL, KU, alpha, A, lda, x,
        incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtrmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtrmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtbmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtbmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA,
        Diag, N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtpmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtpmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtrsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtrsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtbsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtbsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA,
        Diag, N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtpsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtpsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_cgemv (order::Void, TransA::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_cgemv, "libgsl"), Void, (Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), order, TransA, M, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_cgbmv (order::Void, TransA::Void, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_cgbmv, "libgsl"), Void, (Void, Void, Cint, Cint, Cint,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, TransA, M, N, KL, KU, alpha, A, lda, x, incx,
        beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctrmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctrmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctbmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctbmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N,
        K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctpmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctpmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx
        )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctrsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctrsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctbsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctbsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N,
        K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctpsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctpsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx
        )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_zgemv (order::Void, TransA::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zgemv, "libgsl"), Void, (Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), order, TransA, M, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_zgbmv (order::Void, TransA::Void, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zgbmv, "libgsl"), Void, (Void, Void, Cint, Cint, Cint,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, TransA, M, N, KL, KU, alpha, A, lda, x, incx,
        beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztrmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztrmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztbmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztbmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N,
        K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztpmv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztpmv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx
        )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztrsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztrsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztbsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztbsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N,
        K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztpsv (order::Void, Uplo::Void, TransA::Void, Diag::Void, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztpsv, "libgsl"), Void, (Void, Void, Void, Void, Cint,
        Ptr{Void}, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx
        )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssymv (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_ssymv, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        order, Uplo, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssbmv (order::Void, Uplo::Void, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_ssbmv, "libgsl"), Void, (Void, Void, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        order, Uplo, N, K, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_sspmv (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sspmv, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), order,
        Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_sger (order::Void, M::Cint, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, A::Ptr{Cfloat}, lda::Cint)
    ccall( (:cblas_sger, "libgsl"), Void, (Void, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, M, N,
        alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssyr (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, A::Ptr{Cfloat}, lda::Cint)
    ccall( (:cblas_ssyr, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, N, alpha, x, incx,
        A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_sspr (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, Ap::Ptr{Cfloat})
    ccall( (:cblas_sspr, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}), order, Uplo, N, alpha, x, incx, Ap )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssyr2 (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, A::Ptr{Cfloat}, lda::Cint)
    ccall( (:cblas_ssyr2, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo,
        N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_sspr2 (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, A::Ptr{Cfloat})
    ccall( (:cblas_sspr2, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}), order, Uplo, N,
        alpha, x, incx, y, incy, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsymv (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dsymv, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint),
        order, Uplo, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsbmv (order::Void, Uplo::Void, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dsbmv, "libgsl"), Void, (Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
        Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dspmv (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dspmv, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), order,
        Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_dger (order::Void, M::Cint, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, A::Ptr{Cdouble}, lda::Cint)
    ccall( (:cblas_dger, "libgsl"), Void, (Void, Cint, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, M,
        N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsyr (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, A::Ptr{Cdouble}, lda::Cint)
    ccall( (:cblas_dsyr, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, N, alpha, x,
        incx, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dspr (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, Ap::Ptr{Cdouble})
    ccall( (:cblas_dspr, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}), order, Uplo, N, alpha, x, incx, Ap )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsyr2 (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, A::Ptr{Cdouble}, lda::Cint)
    ccall( (:cblas_dsyr2, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order,
        Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dspr2 (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, A::Ptr{Cdouble})
    ccall( (:cblas_dspr2, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}), order, Uplo, N,
        alpha, x, incx, y, incy, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chemv (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_chemv, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order,
        Uplo, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chbmv (order::Void, Uplo::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_chbmv, "libgsl"), Void, (Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chpmv (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_chpmv, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, Uplo,
        N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_cgeru (order::Void, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cgeru, "libgsl"), Void, (Void, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, M, N, alpha,
        x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_cgerc (order::Void, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cgerc, "libgsl"), Void, (Void, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, M, N, alpha,
        x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_cher (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, x::Ptr{Void}, incx::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cher, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N, alpha, x, incx, A,
        lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chpr (order::Void, Uplo::Void, N::Cint, alpha::Cfloat, x::Ptr{Void}, incx::Cint, A::Ptr{Void})
    ccall( (:cblas_chpr, "libgsl"), Void, (Void, Void, Cint, Cfloat,
        Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x, incx, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_cher2 (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cher2, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N,
        alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chpr2 (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, Ap::Ptr{Void})
    ccall( (:cblas_chpr2, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, y, incy, Ap )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zhemv (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zhemv, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order,
        Uplo, N, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zhbmv (order::Void, Uplo::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zhbmv, "libgsl"), Void, (Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zhpmv (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zhpmv, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, Uplo,
        N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_zgeru (order::Void, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zgeru, "libgsl"), Void, (Void, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, M, N, alpha,
        x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_zgerc (order::Void, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zgerc, "libgsl"), Void, (Void, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, M, N, alpha,
        x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zher (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, x::Ptr{Void}, incx::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zher, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N, alpha, x, incx, A,
        lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zhpr (order::Void, Uplo::Void, N::Cint, alpha::Cdouble, x::Ptr{Void}, incx::Cint, A::Ptr{Void})
    ccall( (:cblas_zhpr, "libgsl"), Void, (Void, Void, Cint, Cdouble,
        Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x, incx, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zher2 (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zher2, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N,
        alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zhpr2 (order::Void, Uplo::Void, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, Ap::Ptr{Void})
    ccall( (:cblas_zhpr2, "libgsl"), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, y, incy, Ap )
end
