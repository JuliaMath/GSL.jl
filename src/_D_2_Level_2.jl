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
function cblas_sgemv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, beta::Cfloat, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sgemv, :libgsl), Void, (Void, Void, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        order, TransA, M, N, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_sgbmv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, KL::gsl_int, KU::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, beta::Cfloat, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sgbmv, :libgsl), Void, (Void, Void, Cint, Cint, Cint,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), order, TransA, M, N, KL, KU, alpha, A, lda, x,
        incx, beta, y, incy )
    return unsafe_ref(y)
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
function cblas_strmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Cfloat}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
    return unsafe_ref(x)
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
function cblas_stbmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Cfloat}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stbmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag,
        N, K, A, lda, x, incx )
    return unsafe_ref(x)
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
function cblas_stpmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Cfloat}, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stpmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
    return unsafe_ref(x)
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
function cblas_strsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Cfloat}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A,
        lda, x, incx )
    return unsafe_ref(x)
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
function cblas_stbsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Cfloat}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stbsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag,
        N, K, A, lda, x, incx )
    return unsafe_ref(x)
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
function cblas_stpsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Cfloat}, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stpsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cfloat}, Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
    return unsafe_ref(x)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_dgemv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, x::Ptr{Cdouble}, incx::gsl_int, beta::Cdouble, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dgemv, :libgsl), Void, (Void, Void, Cint, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint),
        order, TransA, M, N, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_dgbmv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, KL::gsl_int, KU::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, x::Ptr{Cdouble}, incx::gsl_int, beta::Cdouble, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dgbmv, :libgsl), Void, (Void, Void, Cint, Cint, Cint,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), order, TransA, M, N, KL, KU, alpha, A, lda, x,
        incx, beta, y, incy )
    return unsafe_ref(y)
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
function cblas_dtrmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Cdouble}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        A, lda, x, incx )
    return unsafe_ref(x)
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
function cblas_dtbmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Cdouble}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtbmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA,
        Diag, N, K, A, lda, x, incx )
    return unsafe_ref(x)
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
function cblas_dtpmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Cdouble}, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtpmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
    return unsafe_ref(x)
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
function cblas_dtrsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Cdouble}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N,
        A, lda, x, incx )
    return unsafe_ref(x)
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
function cblas_dtbsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Cdouble}, lda::gsl_int, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtbsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, TransA,
        Diag, N, K, A, lda, x, incx )
    return unsafe_ref(x)
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
function cblas_dtpsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Cdouble}, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtpsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, Ap, x,
        incx )
    return unsafe_ref(x)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
function cblas_cgemv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_cgemv, :libgsl), Void, (Void, Void, Cint, Cint,
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
function cblas_cgbmv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, KL::gsl_int, KU::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_cgbmv, :libgsl), Void, (Void, Void, Cint, Cint, Cint,
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
function cblas_ctrmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ctrmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ctbmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ctbmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ctpmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Void}, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ctpmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ctrsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ctrsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ctbsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ctbsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ctpsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Void}, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ctpsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_zgemv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zgemv, :libgsl), Void, (Void, Void, Cint, Cint,
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
function cblas_zgbmv{gsl_int<:Integer}(order::Void, TransA::Void, M::gsl_int, N::gsl_int, KL::gsl_int, KU::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zgbmv, :libgsl), Void, (Void, Void, Cint, Cint, Cint,
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
function cblas_ztrmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ztrmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ztbmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ztbmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ztpmv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Void}, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ztpmv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ztrsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ztrsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ztbsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, K::gsl_int, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ztbsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ztpsv{gsl_int<:Integer}(order::Void, Uplo::Void, TransA::Void, Diag::Void, N::gsl_int, Ap::Ptr{Void}, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_ztpsv, :libgsl), Void, (Void, Void, Void, Void, Cint,
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
function cblas_ssymv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, beta::Cfloat, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssymv, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        order, Uplo, N, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssbmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, K::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, beta::Cfloat, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssbmv, :libgsl), Void, (Void, Void, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        order, Uplo, N, K, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_sspmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, Ap::Ptr{Cfloat}, x::Ptr{Cfloat}, incx::gsl_int, beta::Cfloat, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sspmv, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), order,
        Uplo, N, alpha, Ap, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_sger{gsl_int<:Integer}(order::Void, M::gsl_int, N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int, y::Ptr{Cfloat}, incy::gsl_int, lda::gsl_int)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sger, :libgsl), Void, (Void, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, M, N,
        alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssyr{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int, lda::gsl_int)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyr, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, N, alpha, x, incx,
        A, lda )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_sspr{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int)
    Ap = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sspr, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}), order, Uplo, N, alpha, x, incx, Ap )
    return unsafe_ref(Ap)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssyr2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int, y::Ptr{Cfloat}, incy::gsl_int, lda::gsl_int)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyr2, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo,
        N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_sspr2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int, y::Ptr{Cfloat}, incy::gsl_int)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sspr2, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}), order, Uplo, N,
        alpha, x, incx, y, incy, A )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsymv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, x::Ptr{Cdouble}, incx::gsl_int, beta::Cdouble, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsymv, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint),
        order, Uplo, N, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsbmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, K::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, x::Ptr{Cdouble}, incx::gsl_int, beta::Cdouble, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsbmv, :libgsl), Void, (Void, Void, Cint, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint),
        order, Uplo, N, K, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dspmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, Ap::Ptr{Cdouble}, x::Ptr{Cdouble}, incx::gsl_int, beta::Cdouble, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dspmv, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), order,
        Uplo, N, alpha, Ap, x, incx, beta, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_dger{gsl_int<:Integer}(order::Void, M::gsl_int, N::gsl_int, alpha::Cdouble, x::Ptr{Cdouble}, incx::gsl_int, y::Ptr{Cdouble}, incy::gsl_int, lda::gsl_int)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dger, :libgsl), Void, (Void, Cint, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, M,
        N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsyr{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, x::Ptr{Cdouble}, incx::gsl_int, lda::gsl_int)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyr, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, N, alpha, x,
        incx, A, lda )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dspr{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, x::Ptr{Cdouble}, incx::gsl_int)
    Ap = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dspr, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}), order, Uplo, N, alpha, x, incx, Ap )
    return unsafe_ref(Ap)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsyr2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, x::Ptr{Cdouble}, incx::gsl_int, y::Ptr{Cdouble}, incy::gsl_int, lda::gsl_int)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyr2, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order,
        Uplo, N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dspr2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, x::Ptr{Cdouble}, incx::gsl_int, y::Ptr{Cdouble}, incy::gsl_int)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dspr2, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}), order, Uplo, N,
        alpha, x, incx, y, incy, A )
    return unsafe_ref(A)
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chemv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_chemv, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
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
function cblas_chbmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_chbmv, :libgsl), Void, (Void, Void, Cint, Cint,
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
function cblas_chpmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_chpmv, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, Uplo,
        N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_cgeru{gsl_int<:Integer}(order::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_cgeru, :libgsl), Void, (Void, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, M, N, alpha,
        x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_cgerc{gsl_int<:Integer}(order::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_cgerc, :libgsl), Void, (Void, Cint, Cint, Ptr{Void},
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
function cblas_cher{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, x::Ptr{Void}, incx::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_cher, :libgsl), Void, (Void, Void, Cint, Cfloat,
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
function cblas_chpr{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cfloat, x::Ptr{Void}, incx::gsl_int, A::Ptr{Void})
    ccall( (:cblas_chpr, :libgsl), Void, (Void, Void, Cint, Cfloat,
        Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x, incx, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_cher2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_cher2, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
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
function cblas_chpr2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, Ap::Ptr{Void})
    ccall( (:cblas_chpr2, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
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
function cblas_zhemv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zhemv, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
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
function cblas_zhbmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zhbmv, :libgsl), Void, (Void, Void, Cint, Cint,
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
function cblas_zhpmv{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, beta::Ptr{Void}, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zhpmv, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, Uplo,
        N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_zgeru{gsl_int<:Integer}(order::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_zgeru, :libgsl), Void, (Void, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order, M, N, alpha,
        x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
function cblas_zgerc{gsl_int<:Integer}(order::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_zgerc, :libgsl), Void, (Void, Cint, Cint, Ptr{Void},
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
function cblas_zher{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, x::Ptr{Void}, incx::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_zher, :libgsl), Void, (Void, Void, Cint, Cdouble,
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
function cblas_zhpr{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Cdouble, x::Ptr{Void}, incx::gsl_int, A::Ptr{Void})
    ccall( (:cblas_zhpr, :libgsl), Void, (Void, Void, Cint, Cdouble,
        Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x, incx, A )
end


# 
# 
#   Returns: Void
#XXX Unknown input type order::enumCBLAS_ORDER
#XXX Coerced type for order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zher2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, A::Ptr{Void}, lda::gsl_int)
    ccall( (:cblas_zher2, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
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
function cblas_zhpr2{gsl_int<:Integer}(order::Void, Uplo::Void, N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, Ap::Ptr{Void})
    ccall( (:cblas_zhpr2, :libgsl), Void, (Void, Void, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, y, incy, Ap )
end
