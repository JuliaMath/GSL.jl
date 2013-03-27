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
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_sgemv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sgemv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), order, TransA, M, N,
        alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_sgbmv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sgbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), order, TransA, M, N, KL,
        KU, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_strmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_strmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx
        )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_stbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, K,
        A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_stpmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stpmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat},
        Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_strsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_strsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx
        )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_stbsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stbsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, K,
        A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_stpsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_stpsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat},
        Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_dgemv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dgemv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), order, TransA, M, N,
        alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_dgbmv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dgbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Cdouble, Ptr{Cdouble},
        Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), order, TransA,
        M, N, KL, KU, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_dtrmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtrmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_dtbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_dtpmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtpmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_dtrsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtrsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_dtbsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtbsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_dtpsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dtpsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_cgemv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_cgemv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M, N, alpha, A, lda,
        x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_cgbmv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_cgbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M,
        N, KL, KU, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ctrmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctrmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ctbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ctpmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctpmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ctrsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctrsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ctbsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctbsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ctpsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ctpsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_zgemv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zgemv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M, N, alpha, A, lda,
        x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
function cblas_zgbmv (order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, KL::Cint, KU::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zgbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M,
        N, KL, KU, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ztrmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztrmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ztbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ztpmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztpmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ztrsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztrsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ztbsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, K::Cint, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztbsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A,
        lda, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Unknown input type Diag::enumCBLAS_DIAG
function cblas_ztpsv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Cint, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_ztpsv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_ssymv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_ssymv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint,
        Cfloat, Ptr{Cfloat}, Cint), order, Uplo, N, alpha, A, lda, x, incx,
        beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_ssbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_ssbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat},
        Cint, Cfloat, Ptr{Cfloat}, Cint), order, Uplo, N, K, alpha, A, lda, x,
        incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_sspmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::Cint, beta::Cfloat, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sspmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cfloat, Ptr{Cfloat}, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
function cblas_sger (order::enumCBLAS_ORDER, M::Cint, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, A::Ptr{Cfloat}, lda::Cint)
    ccall( (:cblas_sger, "libgsl"), Void, (enumCBLAS_ORDER, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint),
        order, M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_ssyr (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, A::Ptr{Cfloat}, lda::Cint)
    ccall( (:cblas_ssyr, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, N,
        alpha, x, incx, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_sspr (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, Ap::Ptr{Cfloat})
    ccall( (:cblas_sspr, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}), order, Uplo, N, alpha,
        x, incx, Ap )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_ssyr2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, A::Ptr{Cfloat}, lda::Cint)
    ccall( (:cblas_ssyr2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), order, Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_sspr2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, A::Ptr{Cfloat})
    ccall( (:cblas_sspr2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}), order, Uplo, N, alpha, x, incx, y, incy, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dsymv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dsymv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint,
        Cdouble, Ptr{Cdouble}, Cint), order, Uplo, N, alpha, A, lda, x, incx,
        beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dsbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dsbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble},
        Cint, Cdouble, Ptr{Cdouble}, Cint), order, Uplo, N, K, alpha, A, lda,
        x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dspmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::Cint, beta::Cdouble, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dspmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Cint,
        Cdouble, Ptr{Cdouble}, Cint), order, Uplo, N, alpha, Ap, x, incx, beta,
        y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
function cblas_dger (order::enumCBLAS_ORDER, M::Cint, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, A::Ptr{Cdouble}, lda::Cint)
    ccall( (:cblas_dger, "libgsl"), Void, (enumCBLAS_ORDER, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint),
        order, M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dsyr (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, A::Ptr{Cdouble}, lda::Cint)
    ccall( (:cblas_dsyr, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, N,
        alpha, x, incx, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dspr (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, Ap::Ptr{Cdouble})
    ccall( (:cblas_dspr, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}), order, Uplo, N,
        alpha, x, incx, Ap )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dsyr2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, A::Ptr{Cdouble}, lda::Cint)
    ccall( (:cblas_dsyr2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), order, Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_dspr2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, A::Ptr{Cdouble})
    ccall( (:cblas_dspr2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}), order, Uplo, N, alpha, x, incx, y, incy, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_chemv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_chemv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Ptr{Void}, Cint), order, Uplo, N, alpha, A, lda, x, incx,
        beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_chbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_chbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), order, Uplo, N, K, alpha, A, lda, x,
        incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_chpmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_chpmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
function cblas_cgeru (order::enumCBLAS_ORDER, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cgeru, "libgsl"), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
function cblas_cgerc (order::enumCBLAS_ORDER, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cgerc, "libgsl"), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_cher (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, x::Ptr{Void}, incx::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cher, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N, alpha,
        x, incx, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_chpr (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cfloat, x::Ptr{Void}, incx::Cint, A::Ptr{Void})
    ccall( (:cblas_chpr, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_cher2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_cher2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), order, Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_chpr2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, Ap::Ptr{Void})
    ccall( (:cblas_chpr2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint,
        Ptr{Void}), order, Uplo, N, alpha, x, incx, y, incy, Ap )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zhemv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zhemv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Ptr{Void}, Cint), order, Uplo, N, alpha, A, lda, x, incx,
        beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zhbmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zhbmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), order, Uplo, N, K, alpha, A, lda, x,
        incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zhpmv (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::Cint, beta::Ptr{Void}, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zhpmv, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
function cblas_zgeru (order::enumCBLAS_ORDER, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zgeru, "libgsl"), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
function cblas_zgerc (order::enumCBLAS_ORDER, M::Cint, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zgerc, "libgsl"), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zher (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, x::Ptr{Void}, incx::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zher, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N,
        alpha, x, incx, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zhpr (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Cdouble, x::Ptr{Void}, incx::Cint, A::Ptr{Void})
    ccall( (:cblas_zhpr, "libgsl"), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zher2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, A::Ptr{Void}, lda::Cint)
    ccall( (:cblas_zher2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), order, Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Unknown input type Uplo::enumCBLAS_UPLO
function cblas_zhpr2 (order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, Ap::Ptr{Void})
    ccall( (:cblas_zhpr2, "libgsl"), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint,
        Ptr{Void}), order, Uplo, N, alpha, x, incx, y, incy, Ap )
end