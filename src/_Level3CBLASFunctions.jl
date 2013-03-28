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


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
### function cblas_sgemm (Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
###     ccall( (:cblas_sgemm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cfloat,
###         Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint),
###         Order, TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### function cblas_ssymm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
###     ccall( (:cblas_ssymm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, Cint, Cint, Cfloat, Ptr{Cfloat}, Cint,
###         Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Side, Uplo, M, N,
###         alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_ssyrk (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
###     ccall( (:cblas_ssyrk, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Cfloat},
###         Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Uplo, Trans, N, K, alpha, A,
###         lda, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_ssyr2k (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint, beta::Cfloat, C::Ptr{Cfloat}, ldc::Cint)
###     ccall( (:cblas_ssyr2k, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Cfloat},
###         Cint, Ptr{Cfloat}, Cint, Cfloat, Ptr{Cfloat}, Cint), Order, Uplo,
###         Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_strmm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint)
###     ccall( (:cblas_strmm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side,
###         Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_strsm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Cfloat, A::Ptr{Cfloat}, lda::Cint, B::Ptr{Cfloat}, ldb::Cint)
###     ccall( (:cblas_strsm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Cfloat, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), Order, Side,
###         Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
### function cblas_dgemm (Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
###     ccall( (:cblas_dgemm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Cdouble,
###         Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint),
###         Order, TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### function cblas_dsymm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
###     ccall( (:cblas_dsymm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, Cint, Cint, Cdouble, Ptr{Cdouble},
###         Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Side,
###         Uplo, M, N, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_dsyrk (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
###     ccall( (:cblas_dsyrk, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Cdouble},
###         Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Uplo, Trans, N, K, alpha, A,
###         lda, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_dsyr2k (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint, beta::Cdouble, C::Ptr{Cdouble}, ldc::Cint)
###     ccall( (:cblas_dsyr2k, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Cdouble},
###         Cint, Ptr{Cdouble}, Cint, Cdouble, Ptr{Cdouble}, Cint), Order, Uplo,
###         Trans, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_dtrmm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint)
###     ccall( (:cblas_dtrmm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order,
###         Side, Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_dtrsm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Cdouble, A::Ptr{Cdouble}, lda::Cint, B::Ptr{Cdouble}, ldb::Cint)
###     ccall( (:cblas_dtrsm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Cdouble, Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), Order,
###         Side, Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
### function cblas_cgemm (Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_cgemm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Ptr{Void},
###         Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order,
###         TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### function cblas_csymm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_csymm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint,
###         Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N,
###         alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_csyrk (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_csyrk, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
###         Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A,
###         lda, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_csyr2k (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_csyr2k, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
###         Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo, Trans,
###         N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_ctrmm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
###     ccall( (:cblas_ctrmm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
###         Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_ctrsm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
###     ccall( (:cblas_ctrsm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
###         Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type TransB::enumCBLAS_TRANSPOSE
### function cblas_zgemm (Order::enumCBLAS_ORDER, TransA::enumCBLAS_TRANSPOSE, TransB::enumCBLAS_TRANSPOSE, M::Cint, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zgemm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_TRANSPOSE, enumCBLAS_TRANSPOSE, Cint, Cint, Cint, Ptr{Void},
###         Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order,
###         TransA, TransB, M, N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### function cblas_zsymm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zsymm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint,
###         Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N,
###         alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_zsyrk (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zsyrk, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
###         Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A,
###         lda, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_zsyr2k (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zsyr2k, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
###         Cint, Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Uplo, Trans,
###         N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_ztrmm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
###     ccall( (:cblas_ztrmm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
###         Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type TransA::enumCBLAS_TRANSPOSE
### #XXX Unknown input type Diag::enumCBLAS_DIAG
### function cblas_ztrsm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, TransA::enumCBLAS_TRANSPOSE, Diag::enumCBLAS_DIAG, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint)
###     ccall( (:cblas_ztrsm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, enumCBLAS_DIAG,
###         Cint, Cint, Ptr{Void}, Ptr{Void}, Cint, Ptr{Void}, Cint), Order, Side,
###         Uplo, TransA, Diag, M, N, alpha, A, lda, B, ldb )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### function cblas_chemm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_chemm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint,
###         Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N,
###         alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_cherk (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Cfloat, A::Ptr{Void}, lda::Cint, beta::Cfloat, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_cherk, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cfloat, Ptr{Void},
###         Cint, Cfloat, Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A,
###         lda, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_cher2k (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Cfloat, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_cher2k, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
###         Cint, Ptr{Void}, Cint, Cfloat, Ptr{Void}, Cint), Order, Uplo, Trans, N,
###         K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Side::enumCBLAS_SIDE
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### function cblas_zhemm (Order::enumCBLAS_ORDER, Side::enumCBLAS_SIDE, Uplo::enumCBLAS_UPLO, M::Cint, N::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Ptr{Void}, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zhemm, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_SIDE, enumCBLAS_UPLO, Cint, Cint, Ptr{Void}, Ptr{Void}, Cint,
###         Ptr{Void}, Cint, Ptr{Void}, Ptr{Void}, Cint), Order, Side, Uplo, M, N,
###         alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_zherk (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Cdouble, A::Ptr{Void}, lda::Cint, beta::Cdouble, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zherk, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Cdouble, Ptr{Void},
###         Cint, Cdouble, Ptr{Void}, Cint), Order, Uplo, Trans, N, K, alpha, A,
###         lda, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type Order::enumCBLAS_ORDER
### #XXX Unknown input type Uplo::enumCBLAS_UPLO
### #XXX Unknown input type Trans::enumCBLAS_TRANSPOSE
### function cblas_zher2k (Order::enumCBLAS_ORDER, Uplo::enumCBLAS_UPLO, Trans::enumCBLAS_TRANSPOSE, N::Cint, K::Cint, alpha::Ptr{Void}, A::Ptr{Void}, lda::Cint, B::Ptr{Void}, ldb::Cint, beta::Cdouble, C::Ptr{Void}, ldc::Cint)
###     ccall( (:cblas_zher2k, "libgsl"), Void, (enumCBLAS_ORDER,
###         enumCBLAS_UPLO, enumCBLAS_TRANSPOSE, Cint, Cint, Ptr{Void}, Ptr{Void},
###         Cint, Ptr{Void}, Cint, Cdouble, Ptr{Void}, Cint), Order, Uplo, Trans,
###         N, K, alpha, A, lda, B, ldb, beta, C, ldc )
### end


### Function uses unknown type; disabled
### # 
# 
### #   Returns: Void
### #XXX Unknown input type ...::
### function cblas_xerbla (p::Cint, rout::Ptr{Cchar}, form::Ptr{Cchar}, ...::)
###     ccall( (:cblas_xerbla, "libgsl"), Void, (Cint, Ptr{Cchar}, Ptr{Cchar},
###         ), p, rout, form, ... )
### end