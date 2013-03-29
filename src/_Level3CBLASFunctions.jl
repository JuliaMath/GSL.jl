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
function cblas_sgemm (Order::Void, TransA::Void, TransB::Void, M::Cint, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
    ccall( (:cblas_sgemm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat,
        Ptr{Cfloat}, Cint), Order, TransA, TransB, M, N, K, alpha, A, lda, B,
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
function cblas_ssymm (Order::Void, Side::Void, Uplo::Void, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
    ccall( (:cblas_ssymm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat},
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
function cblas_ssyrk (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
    ccall( (:cblas_ssyrk, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Uplo,
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
function cblas_ssyr2k (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
    ccall( (:cblas_ssyr2k, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat},
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
function cblas_strmm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint)
    ccall( (:cblas_strmm, "libgsl"), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side,
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
function cblas_strsm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint)
    ccall( (:cblas_strsm, "libgsl"), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side,
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
function cblas_dgemm (Order::Void, TransA::Void, TransB::Void, M::Cint, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
    ccall( (:cblas_dgemm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble,
        Ptr{Cdouble}, Cint), Order, TransA, TransB, M, N, K, alpha, A, lda, B,
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
function cblas_dsymm (Order::Void, Side::Void, Uplo::Void, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
    ccall( (:cblas_dsymm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
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
function cblas_dsyrk (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
    ccall( (:cblas_dsyrk, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Uplo,
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
function cblas_dsyr2k (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
    ccall( (:cblas_dsyr2k, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble},
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
function cblas_dtrmm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint)
    ccall( (:cblas_dtrmm, "libgsl"), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order,
        Side, Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
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
function cblas_dtrsm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint)
    ccall( (:cblas_dtrsm, "libgsl"), Void, (Void, Void, Void, Void, Void,
        Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order,
        Side, Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
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
function cblas_cgemm (Order::Void, TransA::Void, TransB::Void, M::Cint, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_cgemm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_csymm (Order::Void, Side::Void, Uplo::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_csymm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_csyrk (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_csyrk, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_csyr2k (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_csyr2k, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_ctrmm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
    ccall( (:cblas_ctrmm, "libgsl"), Void, (Void, Void, Void, Void, Void,
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
function cblas_ctrsm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
    ccall( (:cblas_ctrsm, "libgsl"), Void, (Void, Void, Void, Void, Void,
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
function cblas_zgemm (Order::Void, TransA::Void, TransB::Void, M::Cint, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zgemm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_zsymm (Order::Void, Side::Void, Uplo::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zsymm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_zsyrk (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zsyrk, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_zsyr2k (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zsyr2k, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_ztrmm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
    ccall( (:cblas_ztrmm, "libgsl"), Void, (Void, Void, Void, Void, Void,
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
function cblas_ztrsm (Order::Void, Side::Void, Uplo::Void, TransA::Void, Diag::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
    ccall( (:cblas_ztrsm, "libgsl"), Void, (Void, Void, Void, Void, Void,
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
function cblas_chemm (Order::Void, Side::Void, Uplo::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_chemm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_cherk (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Void}, lda::Cint, beta::Cfloat, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_cherk, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_cher2k (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Cfloat, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_cher2k, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_zhemm (Order::Void, Side::Void, Uplo::Void, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zhemm, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_zherk (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Void}, lda::Cint, beta::Cdouble, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zherk, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
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
function cblas_zher2k (Order::Void, Uplo::Void, Trans::Void, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Cdouble, C::Ptr{Void}, ldc::Cint)
    ccall( (:cblas_zher2k, "libgsl"), Void, (Void, Void, Void, Cint, Cint,
        Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint, Cdouble, Ptr{Void}, Cint),
        Order, Uplo, Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
end


# 
# 
#   Returns: Void
function cblas_xerbla (p::Cint, rout::Ptr{Cchar}, form::Ptr{Cchar}...)
    ccall( (:cblas_xerbla, "libgsl"), Void, (Cint, Ptr{Cchar}, Ptr{Cchar}),
        p, rout, form )
end
