#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############
# D.3 Level 3 #
###############
export cblas_sgemm, cblas_ssymm, cblas_ssyrk, cblas_ssyr2k, cblas_strmm,
       cblas_strsm, cblas_dgemm, cblas_dsymm, cblas_dsyrk, cblas_dsyr2k,
       cblas_dtrmm, cblas_dtrsm, cblas_cgemm, cblas_csymm, cblas_csyrk,
       cblas_csyr2k, cblas_ctrmm, cblas_ctrsm, cblas_zgemm, cblas_zsymm,
       cblas_zsyrk, cblas_zsyr2k, cblas_ztrmm, cblas_ztrsm, cblas_chemm,
       cblas_cherk, cblas_cher2k, cblas_zhemm, cblas_zherk, cblas_zher2k,
       cblas_xerbla


# 
# 
#   Returns: Void
function cblas_sgemm{tB<:Real ,tA<:Real}(Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, B::Ptr{tB}, ldb::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sgemm, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cfloat,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
        Order, TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_ssymm{tB<:Real ,tA<:Real}(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, B::Ptr{tB}, ldb::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssymm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat},
        Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Side, Uplo, M, N, alpha, A,
        lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_ssyrk{tA<:Real}(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyrk, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), Order, Uplo, Trans, N, K, alpha, A, lda, beta, C,
        ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_ssyr2k{tB<:Real ,tA<:Real}(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, B::Ptr{tB}, ldb::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyr2k, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_strmm{tA<:Real}(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, ldb::Integer)
    B = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strmm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)[1]
end


# 
# 
#   Returns: Void
function cblas_strsm{tA<:Real}(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, ldb::Integer)
    B = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strsm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)[1]
end


# 
# 
#   Returns: Void
function cblas_dgemm{tB<:Real ,tA<:Real}(Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, B::Ptr{tB}, ldb::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dgemm, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cdouble,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint),
        Order, TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_dsymm{tB<:Real ,tA<:Real}(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, B::Ptr{tB}, ldb::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsymm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble},
        Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Side, Uplo, M, N, alpha, A,
        lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_dsyrk{tA<:Real}(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyrk, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), Order, Uplo, Trans, N, K, alpha, A, lda, beta, C,
        ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_dsyr2k{tB<:Real ,tA<:Real}(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, B::Ptr{tB}, ldb::Integer, beta::Real, ldc::Integer)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyr2k, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Cdouble},
        Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)[1]
end


# 
# 
#   Returns: Void
function cblas_dtrmm{tA<:Real}(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, ldb::Integer)
    B = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrmm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)[1]
end


# 
# 
#   Returns: Void
function cblas_dtrsm{tA<:Real}(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Real, A::Ptr{tA}, lda::Integer, ldb::Integer)
    B = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrsm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)[1]
end


# 
# 
#   Returns: Void
function cblas_cgemm(Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_cgemm, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order,
        TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_csymm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_csymm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N, alpha, A,
        lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_csyrk(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_csyrk, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A, lda, beta, C, ldc
        )
end


# 
# 
#   Returns: Void
function cblas_csyr2k(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_csyr2k, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo, Trans,
        N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_ctrmm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer)
    ccall( (:cblas_ctrmm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
function cblas_ctrsm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer)
    ccall( (:cblas_ctrsm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
function cblas_zgemm(Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Integer, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zgemm, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Ptr{Void},
        Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order,
        TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_zsymm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zsymm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N, alpha, A,
        lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_zsyrk(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zsyrk, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A, lda, beta, C, ldc
        )
end


# 
# 
#   Returns: Void
function cblas_zsyr2k(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zsyr2k, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo, Trans,
        N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_ztrmm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer)
    ccall( (:cblas_ztrmm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
function cblas_ztrsm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer)
    ccall( (:cblas_ztrsm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side, Uplo,
        TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
function cblas_chemm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_chemm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N, alpha, A,
        lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_cherk(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Real, A::Ptr{Void}, lda::Integer, beta::Real, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_cherk, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Void}, Cint, Cfloat,
        Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A, lda, beta, C, ldc
        )
end


# 
# 
#   Returns: Void
function cblas_cher2k(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Real, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_cher2k, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Cfloat, Ptr{Void}, Cint), Order, Uplo, Trans, N,
        K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_zhemm(Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Integer, N::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Ptr{Void}, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zhemm, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_SIDE,
        enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void},
        Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N, alpha, A,
        lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_zherk(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Real, A::Ptr{Void}, lda::Integer, beta::Real, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zherk, :libgsl), Void, (enumCBLAS_ORDER, enumCBLAS_UPLO,
        enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Void}, Cint, Cdouble,
        Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A, lda, beta, C, ldc
        )
end


# 
# 
#   Returns: Void
function cblas_zher2k(Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Integer, K::Integer, alpha::Ptr{Void}, A::Ptr{Void}, lda::Integer, B::Ptr{Void}, ldb::Integer, beta::Real, C::Ptr{Void}, ldc::Integer)
    ccall( (:cblas_zher2k, :libgsl), Void, (enumCBLAS_ORDER,
        enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint, Cdouble, Ptr{Void}, Cint), Order, Uplo, Trans,
        N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_xerbla(p::Integer...)
    rout = convert(Ptr{Cchar}, Array(Cchar, 1))
    form = convert(Ptr{Cchar}, Array(Cchar, 1))
    ccall( (:cblas_xerbla, :libgsl), Void, (Cint, Ptr{Cchar}, Ptr{Cchar}),
        p, rout, form )
    return unsafe_ref(rout)[1] ,unsafe_ref(form)[1]
end
@vectorize_1arg Number cblas_xerbla
