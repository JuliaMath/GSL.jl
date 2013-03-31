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
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransB::Void
function cblas_sgemm{gsl_int<:Integer}(Order::Void, TransA::Void, TransB::Void, M::gsl_int, N::gsl_int, K::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, B::Ptr{Cfloat}, ldb::gsl_int, beta::Cfloat, ldc::gsl_int)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sgemm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), Order, TransA, TransB, M, N, K, alpha, A, lda, B,
        ldb, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_ssymm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, M::gsl_int, N::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, B::Ptr{Cfloat}, ldb::gsl_int, beta::Cfloat, ldc::gsl_int)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssymm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat},
        Cint), Order, Side, Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_ssyrk{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, beta::Cfloat, ldc::gsl_int)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyrk, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_ssyr2k{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, B::Ptr{Cfloat}, ldb::gsl_int, beta::Cfloat, ldc::gsl_int)
    C = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_ssyr2k, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat},
        Cint), Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_strmm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, ldb::gsl_int)
    B = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strmm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side,
        Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_strsm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Cfloat, A::Ptr{Cfloat}, lda::gsl_int, ldb::gsl_int)
    B = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_strsm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side,
        Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransB::Void
function cblas_dgemm{gsl_int<:Integer}(Order::Void, TransA::Void, TransB::Void, M::gsl_int, N::gsl_int, K::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, B::Ptr{Cdouble}, ldb::gsl_int, beta::Cdouble, ldc::gsl_int)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dgemm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), Order, TransA, TransB, M, N, K, alpha, A, lda, B,
        ldb, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_dsymm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, M::gsl_int, N::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, B::Ptr{Cdouble}, ldb::gsl_int, beta::Cdouble, ldc::gsl_int)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsymm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
        Cint), Order, Side, Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_dsyrk{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, beta::Cdouble, ldc::gsl_int)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyrk, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_dsyr2k{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, B::Ptr{Cdouble}, ldb::gsl_int, beta::Cdouble, ldc::gsl_int)
    C = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dsyr2k, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
        Cint), Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
    return unsafe_ref(C)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtrmm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, ldb::gsl_int)
    B = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrmm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order,
        Side, Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_dtrsm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Cdouble, A::Ptr{Cdouble}, lda::gsl_int, ldb::gsl_int)
    B = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dtrsm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order,
        Side, Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
    return unsafe_ref(B)
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransB::Void
function cblas_cgemm{gsl_int<:Integer}(Order::Void, TransA::Void, TransB::Void, M::gsl_int, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_cgemm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), Order, TransA, TransB, M, N, K, alpha, A, lda, B,
        ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_csymm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_csymm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), Order, Side, Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_csyrk{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_csyrk, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_csyr2k{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_csyr2k, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctrmm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int)
    ccall( (:cblas_ctrmm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
        Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ctrsm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int)
    ccall( (:cblas_ctrsm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
        Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransB::Void
function cblas_zgemm{gsl_int<:Integer}(Order::Void, TransA::Void, TransB::Void, M::gsl_int, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zgemm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void},
        Ptr{Void}, Cint), Order, TransA, TransB, M, N, K, alpha, A, lda, B,
        ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zsymm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zsymm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), Order, Side, Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_zsyrk{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zsyrk, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_zsyr2k{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zsyr2k, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztrmm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int)
    ccall( (:cblas_ztrmm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
        Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
#XXX Coerced type for TransA::Void
#XXX Unknown input type Diag::enumCBLAS_DIAG
#XXX Coerced type for Diag::Void
function cblas_ztrsm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int)
    ccall( (:cblas_ztrsm, :libgsl), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
        Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_chemm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_chemm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), Order, Side, Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_cherk{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Cfloat, A::Ptr{Void}, lda::gsl_int, beta::Cfloat, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_cherk, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Void}, Cint, Cfloat, Ptr{Void}, Cint), Order, Uplo, Trans,
        N, K, alpha, A, lda, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_cher2k{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Cfloat, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_cher2k, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Cfloat, Ptr{Void}, Cint),
        Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Side::enumCBLAS_SIDE
#XXX Coerced type for Side::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
function cblas_zhemm{gsl_int<:Integer}(Order::Void, Side::Void, Uplo::Void, M::gsl_int, N::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Ptr{Void}, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zhemm, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void},
        Cint), Order, Side, Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_zherk{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Cdouble, A::Ptr{Void}, lda::gsl_int, beta::Cdouble, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zherk, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Void}, Cint, Cdouble, Ptr{Void}, Cint), Order, Uplo,
        Trans, N, K, alpha, A, lda, beta, C, ldc )
end


# 
# 
#   Returns: Void
#XXX Unknown input type Order::enumCBLAS_ORDER
#XXX Coerced type for Order::Void
#XXX Unknown input type Uplo::enumCBLAS_UPLO
#XXX Coerced type for Uplo::Void
#XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
#XXX Coerced type for Trans::Void
function cblas_zher2k{gsl_int<:Integer}(Order::Void, Uplo::Void, Trans::Void, N::gsl_int, K::gsl_int, alpha::Ptr{Void}, A::Ptr{Void}, lda::gsl_int, B::Ptr{Void}, ldb::gsl_int, beta::Cdouble, C::Ptr{Void}, ldc::gsl_int)
    ccall( (:cblas_zher2k, :libgsl), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Cdouble, Ptr{Void}, Cint),
        Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_xerbla{gsl_int<:Integer}(p::gsl_int...)
    rout = convert(Ptr{Cchar}, Array(Cchar, 1))
    form = convert(Ptr{Cchar}, Array(Cchar, 1))
    ccall( (:cblas_xerbla, :libgsl), Void, (Cint, Ptr{Cchar}, Ptr{Cchar}),
        p, rout, form )
    return unsafe_ref(rout) ,unsafe_ref(form)
end
