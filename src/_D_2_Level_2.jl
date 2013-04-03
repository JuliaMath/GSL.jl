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
function cblas_sgemv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sgemv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), order, TransA, M, N,
        alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_sgbmv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, KL::Integer, KU::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sgbmv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), order, TransA, M, N, KL,
        KU, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_strmv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_stbmv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_stpmv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{tA}, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stpmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat}, Ptr{Cfloat},
        Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_strsv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_stbsv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stbsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_stpsv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{tA}, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_stpsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cfloat}, Ptr{Cfloat},
        Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_dgemv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dgemv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), order, TransA, M, N,
        alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_dgbmv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, KL::Integer, KU::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dgbmv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Cdouble, Ptr{Cdouble},
        Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), order, TransA,
        M, N, KL, KU, alpha, A, lda, x, incx, beta, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_dtrmv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_dtbmv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_dtpmv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{tA}, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtpmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cdouble}, Ptr{Cdouble},
        Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_dtrsv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_dtbsv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{tA}, lda::Integer, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtbsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_dtpsv{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{tA}, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtpsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Cdouble}, Ptr{Cdouble},
        Cint), order, Uplo, TransA, Diag, N, Ap, x, incx )
    return unsafe_ref(x)[1]
end


# 
# 
#   Returns: Void
function cblas_cgemv(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_cgemv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M, N, alpha, A, lda,
        x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
function cblas_cgbmv(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, KL::Integer, KU::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_cgbmv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M,
        N, KL, KU, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
function cblas_ctrmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ctrmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Cint, Ptr{Void},
        Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ctbmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ctbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ctpmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{Void}, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ctpmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Ptr{Void}, Cint),
        order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ctrsv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ctrsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Cint, Ptr{Void},
        Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ctbsv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ctbsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ctpsv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{Void}, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ctpsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Ptr{Void}, Cint),
        order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zgemv(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zgemv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M, N, alpha, A, lda,
        x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zgbmv(order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, KL::Integer, KU::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zgbmv, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), order, TransA, M,
        N, KL, KU, alpha, A, lda, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
function cblas_ztrmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ztrmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Cint, Ptr{Void},
        Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ztbmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ztbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ztpmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{Void}, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ztpmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Ptr{Void}, Cint),
        order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ztrsv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ztrsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Cint, Ptr{Void},
        Cint), order, Uplo, TransA, Diag, N, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ztbsv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, K::Integer, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ztbsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), order, Uplo, TransA, Diag, N, K, A, lda, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ztpsv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, N::Integer, Ap::Ptr{Void}, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_ztpsv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Ptr{Void}, Ptr{Void}, Cint),
        order, Uplo, TransA, Diag, N, Ap, x, incx )
end


# 
# 
#   Returns: Void
function cblas_ssymv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssymv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), order, Uplo, N, alpha, A, lda, x, incx, beta, y,
        incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_ssbmv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta, y,
        incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_sspmv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, Ap::Ptr{tA}, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sspmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat},
        Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_sger{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, M::Integer, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer, lda::Integer)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sger, :libgsl), Void, (enumCBLAS_ORDER, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint),
        order, M, N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_ssyr{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, lda::Integer)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyr, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), order, Uplo, N,
        alpha, x, incx, A, lda )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_sspr{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer)
    Ap = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sspr, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}), order, Uplo, N, alpha,
        x, incx, Ap )
    return unsafe_ref(Ap)[1]
end


# 
# 
#   Returns: Void
function cblas_ssyr2{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer, lda::Integer)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyr2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint),
        order, Uplo, N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_sspr2{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer)
    A = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sspr2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Ptr{Cfloat}),
        order, Uplo, N, alpha, x, incx, y, incy, A )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_dsymv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsymv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), order, Uplo, N, alpha, A, lda, x, incx, beta, y,
        incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_dsbmv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta,
        y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_dspmv{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, Ap::Ptr{tA}, x::Ptr{tB}, incx::Integer, beta::Real, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dspmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
        Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_dger{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, M::Integer, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer, lda::Integer)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dger, :libgsl), Void, (enumCBLAS_ORDER, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint),
        order, M, N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_dsyr{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, lda::Integer)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyr, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), order, Uplo, N,
        alpha, x, incx, A, lda )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_dspr{tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer)
    Ap = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dspr, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}), order, Uplo, N,
        alpha, x, incx, Ap )
    return unsafe_ref(Ap)[1]
end


# 
# 
#   Returns: Void
function cblas_dsyr2{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer, lda::Integer)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyr2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble},
        Cint), order, Uplo, N, alpha, x, incx, y, incy, A, lda )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_dspr2{tB<:Real ,tA<:Real}(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer)
    A = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dspr2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Ptr{Cdouble}),
        order, Uplo, N, alpha, x, incx, y, incy, A )
    return unsafe_ref(A)[1]
end


# 
# 
#   Returns: Void
function cblas_chemv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_chemv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, N, alpha, A, lda, x, incx, beta, y, incy
        )
end


# 
# 
#   Returns: Void
function cblas_chbmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_chbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta, y,
        incy )
end


# 
# 
#   Returns: Void
function cblas_chpmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_chpmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
function cblas_cgeru(order::enumCBLAS_ORDER, M::Integer, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_cgeru, :libgsl), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
function cblas_cgerc(order::enumCBLAS_ORDER, M::Integer, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_cgerc, :libgsl), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
function cblas_cher(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{Void}, incx::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_cher, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N, alpha,
        x, incx, A, lda )
end


# 
# 
#   Returns: Void
function cblas_chpr(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{Void}, incx::Integer, A::Ptr{Void})
    ccall( (:cblas_chpr, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cfloat, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, A )
end


# 
# 
#   Returns: Void
function cblas_cher2(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_cher2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint),
        order, Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
function cblas_chpr2(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, Ap::Ptr{Void})
    ccall( (:cblas_chpr2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}), order,
        Uplo, N, alpha, x, incx, y, incy, Ap )
end


# 
# 
#   Returns: Void
function cblas_zhemv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zhemv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, N, alpha, A, lda, x, incx, beta, y, incy
        )
end


# 
# 
#   Returns: Void
function cblas_zhbmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zhbmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), order, Uplo, N, K, alpha, A, lda, x, incx, beta, y,
        incy )
end


# 
# 
#   Returns: Void
function cblas_zhpmv(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, Ap::Ptr{Void}, x::Ptr{Void}, incx::Integer, beta::Ptr{Void}, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zhpmv, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), order, Uplo, N, alpha, Ap, x, incx, beta, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zgeru(order::enumCBLAS_ORDER, M::Integer, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_zgeru, :libgsl), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
function cblas_zgerc(order::enumCBLAS_ORDER, M::Integer, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_zgerc, :libgsl), Void, (enumCBLAS_ORDER, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), order,
        M, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
function cblas_zher(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{Void}, incx::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_zher, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Void}, Cint, Ptr{Void}, Cint), order, Uplo, N,
        alpha, x, incx, A, lda )
end


# 
# 
#   Returns: Void
function cblas_zhpr(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Real, x::Ptr{Void}, incx::Integer, A::Ptr{Void})
    ccall( (:cblas_zhpr, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Cdouble, Ptr{Void}, Cint, Ptr{Void}), order, Uplo, N, alpha, x,
        incx, A )
end


# 
# 
#   Returns: Void
function cblas_zher2(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, A::Ptr{Void}, lda::Integer)
    ccall( (:cblas_zher2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint),
        order, Uplo, N, alpha, x, incx, y, incy, A, lda )
end


# 
# 
#   Returns: Void
function cblas_zhpr2(order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, Ap::Ptr{Void})
    ccall( (:cblas_zhpr2, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}), order,
        Uplo, N, alpha, x, incx, y, incy, Ap )
end
