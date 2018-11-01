#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_blas.h ###############################################################


"""
    gsl_blas_sdsdot(alpha, X, Y, result) -> Cint

C signature:
`int gsl_blas_sdsdot (float alpha, const gsl_vector_float * X, const gsl_vector_float * Y, float * result )`
"""
function gsl_blas_sdsdot(alpha, X, Y, result)
    ccall((:gsl_blas_sdsdot, libgsl), Cint, (Cfloat, Ref{gsl_vector_float}, Ref{gsl_vector_float}, Ref{Cfloat}), alpha, X, Y, result)
end

"""
    gsl_blas_dsdot(X, Y, result) -> Cint

C signature:
`int gsl_blas_dsdot (const gsl_vector_float * X, const gsl_vector_float * Y, double * result )`
"""
function gsl_blas_dsdot(X, Y, result)
    ccall((:gsl_blas_dsdot, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}, Ref{Cdouble}), X, Y, result)
end

"""
    gsl_blas_sdot(X, Y, result) -> Cint

C signature:
`int gsl_blas_sdot (const gsl_vector_float * X, const gsl_vector_float * Y, float * result )`
"""
function gsl_blas_sdot(X, Y, result)
    ccall((:gsl_blas_sdot, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}, Ref{Cfloat}), X, Y, result)
end

"""
    gsl_blas_ddot(X, Y, result) -> Cint

C signature:
`int gsl_blas_ddot (const gsl_vector * X, const gsl_vector * Y, double * result )`
"""
function gsl_blas_ddot(X, Y, result)
    ccall((:gsl_blas_ddot, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}), X, Y, result)
end

"""
    gsl_blas_cdotu(X, Y, dotu) -> Cint

C signature:
`int gsl_blas_cdotu (const gsl_vector_complex_float * X, const gsl_vector_complex_float * Y, gsl_complex_float * dotu)`
"""
function gsl_blas_cdotu(X, Y, dotu)
    ccall((:gsl_blas_cdotu, libgsl), Cint, (Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}, Ref{gsl_complex_float}), X, Y, dotu)
end

"""
    gsl_blas_cdotc(X, Y, dotc) -> Cint

C signature:
`int gsl_blas_cdotc (const gsl_vector_complex_float * X, const gsl_vector_complex_float * Y, gsl_complex_float * dotc)`
"""
function gsl_blas_cdotc(X, Y, dotc)
    ccall((:gsl_blas_cdotc, libgsl), Cint, (Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}, Ref{gsl_complex_float}), X, Y, dotc)
end

"""
    gsl_blas_zdotu(X, Y, dotu) -> Cint

C signature:
`int gsl_blas_zdotu (const gsl_vector_complex * X, const gsl_vector_complex * Y, gsl_complex * dotu)`
"""
function gsl_blas_zdotu(X, Y, dotu)
    ccall((:gsl_blas_zdotu, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}, Ref{gsl_complex}), X, Y, dotu)
end

"""
    gsl_blas_zdotc(X, Y, dotc) -> Cint

C signature:
`int gsl_blas_zdotc (const gsl_vector_complex * X, const gsl_vector_complex * Y, gsl_complex * dotc)`
"""
function gsl_blas_zdotc(X, Y, dotc)
    ccall((:gsl_blas_zdotc, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}, Ref{gsl_complex}), X, Y, dotc)
end

"""
    gsl_blas_snrm2(X) -> Cfloat

C signature:
`float gsl_blas_snrm2 (const gsl_vector_float * X)`
"""
function gsl_blas_snrm2(X)
    ccall((:gsl_blas_snrm2, libgsl), Cfloat, (Ptr{gsl_vector_float},), X)
end

"""
    gsl_blas_sasum(X) -> Cfloat

C signature:
`float gsl_blas_sasum (const gsl_vector_float * X)`
"""
function gsl_blas_sasum(X)
    ccall((:gsl_blas_sasum, libgsl), Cfloat, (Ptr{gsl_vector_float},), X)
end

"""
    gsl_blas_dnrm2(X) -> Cdouble

C signature:
`double gsl_blas_dnrm2 (const gsl_vector * X)`
"""
function gsl_blas_dnrm2(X)
    ccall((:gsl_blas_dnrm2, libgsl), Cdouble, (Ptr{gsl_vector},), X)
end

"""
    gsl_blas_dasum(X) -> Cdouble

C signature:
`double gsl_blas_dasum (const gsl_vector * X)`
"""
function gsl_blas_dasum(X)
    ccall((:gsl_blas_dasum, libgsl), Cdouble, (Ptr{gsl_vector},), X)
end

"""
    gsl_blas_scnrm2(X) -> Cfloat

C signature:
`float gsl_blas_scnrm2 (const gsl_vector_complex_float * X)`
"""
function gsl_blas_scnrm2(X)
    ccall((:gsl_blas_scnrm2, libgsl), Cfloat, (Ptr{gsl_vector_complex_float},), X)
end

"""
    gsl_blas_scasum(X) -> Cfloat

C signature:
`float gsl_blas_scasum (const gsl_vector_complex_float * X)`
"""
function gsl_blas_scasum(X)
    ccall((:gsl_blas_scasum, libgsl), Cfloat, (Ptr{gsl_vector_complex_float},), X)
end

"""
    gsl_blas_dznrm2(X) -> Cdouble

C signature:
`double gsl_blas_dznrm2 (const gsl_vector_complex * X)`
"""
function gsl_blas_dznrm2(X)
    ccall((:gsl_blas_dznrm2, libgsl), Cdouble, (Ptr{gsl_vector_complex},), X)
end

"""
    gsl_blas_dzasum(X) -> Cdouble

C signature:
`double gsl_blas_dzasum (const gsl_vector_complex * X)`
"""
function gsl_blas_dzasum(X)
    ccall((:gsl_blas_dzasum, libgsl), Cdouble, (Ptr{gsl_vector_complex},), X)
end

"""
    gsl_blas_isamax(X) -> CBLAS_INDEX_t

C signature:
`CBLAS_INDEX_t gsl_blas_isamax (const gsl_vector_float * X)`
"""
function gsl_blas_isamax(X)
    ccall((:gsl_blas_isamax, libgsl), CBLAS_INDEX_t, (Ptr{gsl_vector_float},), X)
end

"""
    gsl_blas_idamax(X) -> CBLAS_INDEX_t

C signature:
`CBLAS_INDEX_t gsl_blas_idamax (const gsl_vector * X)`
"""
function gsl_blas_idamax(X)
    ccall((:gsl_blas_idamax, libgsl), CBLAS_INDEX_t, (Ptr{gsl_vector},), X)
end

"""
    gsl_blas_icamax(X) -> CBLAS_INDEX_t

C signature:
`CBLAS_INDEX_t gsl_blas_icamax (const gsl_vector_complex_float * X)`
"""
function gsl_blas_icamax(X)
    ccall((:gsl_blas_icamax, libgsl), CBLAS_INDEX_t, (Ptr{gsl_vector_complex_float},), X)
end

"""
    gsl_blas_izamax(X) -> CBLAS_INDEX_t

C signature:
`CBLAS_INDEX_t gsl_blas_izamax (const gsl_vector_complex * X)`
"""
function gsl_blas_izamax(X)
    ccall((:gsl_blas_izamax, libgsl), CBLAS_INDEX_t, (Ptr{gsl_vector_complex},), X)
end

"""
    gsl_blas_sswap(X, Y) -> Cint

C signature:
`int gsl_blas_sswap (gsl_vector_float * X, gsl_vector_float * Y)`
"""
function gsl_blas_sswap(X, Y)
    ccall((:gsl_blas_sswap, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), X, Y)
end

"""
    gsl_blas_scopy(X, Y) -> Cint

C signature:
`int gsl_blas_scopy (const gsl_vector_float * X, gsl_vector_float * Y)`
"""
function gsl_blas_scopy(X, Y)
    ccall((:gsl_blas_scopy, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}), X, Y)
end

"""
    gsl_blas_saxpy(alpha, X, Y) -> Cint

C signature:
`int gsl_blas_saxpy (float alpha, const gsl_vector_float * X, gsl_vector_float * Y)`
"""
function gsl_blas_saxpy(alpha, X, Y)
    ccall((:gsl_blas_saxpy, libgsl), Cint, (Cfloat, Ref{gsl_vector_float}, Ref{gsl_vector_float}), alpha, X, Y)
end

"""
    gsl_blas_dswap(X, Y) -> Cint

C signature:
`int gsl_blas_dswap (gsl_vector * X, gsl_vector * Y)`
"""
function gsl_blas_dswap(X, Y)
    ccall((:gsl_blas_dswap, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), X, Y)
end

"""
    gsl_blas_dcopy(X, Y) -> Cint

C signature:
`int gsl_blas_dcopy (const gsl_vector * X, gsl_vector * Y)`
"""
function gsl_blas_dcopy(X, Y)
    ccall((:gsl_blas_dcopy, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}), X, Y)
end

"""
    gsl_blas_daxpy(alpha, X, Y) -> Cint

C signature:
`int gsl_blas_daxpy (double alpha, const gsl_vector * X, gsl_vector * Y)`
"""
function gsl_blas_daxpy(alpha, X, Y)
    ccall((:gsl_blas_daxpy, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_vector}), alpha, X, Y)
end

"""
    gsl_blas_cswap(X, Y) -> Cint

C signature:
`int gsl_blas_cswap (gsl_vector_complex_float * X, gsl_vector_complex_float * Y)`
"""
function gsl_blas_cswap(X, Y)
    ccall((:gsl_blas_cswap, libgsl), Cint, (Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}), X, Y)
end

"""
    gsl_blas_ccopy(X, Y) -> Cint

C signature:
`int gsl_blas_ccopy (const gsl_vector_complex_float * X, gsl_vector_complex_float * Y)`
"""
function gsl_blas_ccopy(X, Y)
    ccall((:gsl_blas_ccopy, libgsl), Cint, (Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}), X, Y)
end

"""
    gsl_blas_caxpy(alpha, X, Y) -> Cint

C signature:
`int gsl_blas_caxpy (const gsl_complex_float alpha, const gsl_vector_complex_float * X, gsl_vector_complex_float * Y)`
"""
function gsl_blas_caxpy(alpha, X, Y)
    ccall((:gsl_blas_caxpy, libgsl), Cint, (gsl_complex_float, Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}), alpha, X, Y)
end

"""
    gsl_blas_zswap(X, Y) -> Cint

C signature:
`int gsl_blas_zswap (gsl_vector_complex * X, gsl_vector_complex * Y)`
"""
function gsl_blas_zswap(X, Y)
    ccall((:gsl_blas_zswap, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), X, Y)
end

"""
    gsl_blas_zcopy(X, Y) -> Cint

C signature:
`int gsl_blas_zcopy (const gsl_vector_complex * X, gsl_vector_complex * Y)`
"""
function gsl_blas_zcopy(X, Y)
    ccall((:gsl_blas_zcopy, libgsl), Cint, (Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), X, Y)
end

"""
    gsl_blas_zaxpy(alpha, X, Y) -> Cint

C signature:
`int gsl_blas_zaxpy (const gsl_complex alpha, const gsl_vector_complex * X, gsl_vector_complex * Y)`
"""
function gsl_blas_zaxpy(alpha, X, Y)
    ccall((:gsl_blas_zaxpy, libgsl), Cint, (gsl_complex, Ref{gsl_vector_complex}, Ref{gsl_vector_complex}), alpha, X, Y)
end

"""
    gsl_blas_srotg(a, b, c, s) -> Cint

C signature:
`int gsl_blas_srotg (float a[], float b[], float c[], float s[])`
"""
function gsl_blas_srotg(a, b, c, s)
    ccall((:gsl_blas_srotg, libgsl), Cint, (Ref{Cfloat}, Ref{Cfloat}, Ref{Cfloat}, Ref{Cfloat}), a, b, c, s)
end

"""
    gsl_blas_srotmg(d1, d2, b1, b2, P) -> Cint

C signature:
`int gsl_blas_srotmg (float d1[], float d2[], float b1[], float b2, float P[])`
"""
function gsl_blas_srotmg(d1, d2, b1, b2, P)
    ccall((:gsl_blas_srotmg, libgsl), Cint, (Ref{Cfloat}, Ref{Cfloat}, Ref{Cfloat}, Cfloat, Ref{Cfloat}), d1, d2, b1, b2, P)
end

"""
    gsl_blas_srot(X, Y, c, s) -> Cint

C signature:
`int gsl_blas_srot (gsl_vector_float * X, gsl_vector_float * Y, float c, float s)`
"""
function gsl_blas_srot(X, Y, c, s)
    ccall((:gsl_blas_srot, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}, Cfloat, Cfloat), X, Y, c, s)
end

"""
    gsl_blas_srotm(X, Y, P) -> Cint

C signature:
`int gsl_blas_srotm (gsl_vector_float * X, gsl_vector_float * Y, const float P[])`
"""
function gsl_blas_srotm(X, Y, P)
    ccall((:gsl_blas_srotm, libgsl), Cint, (Ref{gsl_vector_float}, Ref{gsl_vector_float}, Ref{Cfloat}), X, Y, P)
end

"""
    gsl_blas_drotg(a, b, c, s) -> Cint

C signature:
`int gsl_blas_drotg (double a[], double b[], double c[], double s[])`
"""
function gsl_blas_drotg(a, b, c, s)
    ccall((:gsl_blas_drotg, libgsl), Cint, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), a, b, c, s)
end

"""
    gsl_blas_drotmg(d1, d2, b1, b2, P) -> Cint

C signature:
`int gsl_blas_drotmg (double d1[], double d2[], double b1[], double b2, double P[])`
"""
function gsl_blas_drotmg(d1, d2, b1, b2, P)
    ccall((:gsl_blas_drotmg, libgsl), Cint, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{Cdouble}), d1, d2, b1, b2, P)
end

"""
    gsl_blas_drot(X, Y, c, s) -> Cint

C signature:
`int gsl_blas_drot (gsl_vector * X, gsl_vector * Y, const double c, const double s)`
"""
function gsl_blas_drot(X, Y, c, s)
    ccall((:gsl_blas_drot, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Cdouble), X, Y, c, s)
end

"""
    gsl_blas_drotm(X, Y, P) -> Cint

C signature:
`int gsl_blas_drotm (gsl_vector * X, gsl_vector * Y, const double P[])`
"""
function gsl_blas_drotm(X, Y, P)
    ccall((:gsl_blas_drotm, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}), X, Y, P)
end

"""
    gsl_blas_sscal(alpha, X) -> Cvoid

C signature:
`void gsl_blas_sscal (float alpha, gsl_vector_float * X)`
"""
function gsl_blas_sscal(alpha, X)
    ccall((:gsl_blas_sscal, libgsl), Cvoid, (Cfloat, Ref{gsl_vector_float}), alpha, X)
end

"""
    gsl_blas_dscal(alpha, X) -> Cvoid

C signature:
`void gsl_blas_dscal (double alpha, gsl_vector * X)`
"""
function gsl_blas_dscal(alpha, X)
    ccall((:gsl_blas_dscal, libgsl), Cvoid, (Cdouble, Ref{gsl_vector}), alpha, X)
end

"""
    gsl_blas_cscal(alpha, X) -> Cvoid

C signature:
`void gsl_blas_cscal (const gsl_complex_float alpha, gsl_vector_complex_float * X)`
"""
function gsl_blas_cscal(alpha, X)
    ccall((:gsl_blas_cscal, libgsl), Cvoid, (gsl_complex_float, Ref{gsl_vector_complex_float}), alpha, X)
end

"""
    gsl_blas_zscal(alpha, X) -> Cvoid

C signature:
`void gsl_blas_zscal (const gsl_complex alpha, gsl_vector_complex * X)`
"""
function gsl_blas_zscal(alpha, X)
    ccall((:gsl_blas_zscal, libgsl), Cvoid, (gsl_complex, Ref{gsl_vector_complex}), alpha, X)
end

"""
    gsl_blas_csscal(alpha, X) -> Cvoid

C signature:
`void gsl_blas_csscal (float alpha, gsl_vector_complex_float * X)`
"""
function gsl_blas_csscal(alpha, X)
    ccall((:gsl_blas_csscal, libgsl), Cvoid, (Cfloat, Ref{gsl_vector_complex_float}), alpha, X)
end

"""
    gsl_blas_zdscal(alpha, X) -> Cvoid

C signature:
`void gsl_blas_zdscal (double alpha, gsl_vector_complex * X)`
"""
function gsl_blas_zdscal(alpha, X)
    ccall((:gsl_blas_zdscal, libgsl), Cvoid, (Cdouble, Ref{gsl_vector_complex}), alpha, X)
end

"""
    gsl_blas_sgemv(TransA, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_sgemv (CBLAS_TRANSPOSE_t TransA, float alpha, const gsl_matrix_float * A, const gsl_vector_float * X, float beta, gsl_vector_float * Y)`
"""
function gsl_blas_sgemv(TransA, alpha, A, X, beta, Y)
    ccall((:gsl_blas_sgemv, libgsl), Cint, (CBLAS_TRANSPOSE_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_vector_float}, Cfloat, Ref{gsl_vector_float}), TransA, alpha, A, X, beta, Y)
end

"""
    gsl_blas_strmv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_strmv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix_float * A, gsl_vector_float * X)`
"""
function gsl_blas_strmv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_strmv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix_float}, Ref{gsl_vector_float}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_strsv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_strsv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix_float * A, gsl_vector_float * X)`
"""
function gsl_blas_strsv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_strsv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix_float}, Ref{gsl_vector_float}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_dgemv(TransA, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_dgemv (CBLAS_TRANSPOSE_t TransA, double alpha, const gsl_matrix * A, const gsl_vector * X, double beta, gsl_vector * Y)`
"""
function gsl_blas_dgemv(TransA, alpha, A, X, beta, Y)
    ccall((:gsl_blas_dgemv, libgsl), Cint, (CBLAS_TRANSPOSE_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}), TransA, alpha, A, X, beta, Y)
end

"""
    gsl_blas_dtrmv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_dtrmv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix * A, gsl_vector * X)`
"""
function gsl_blas_dtrmv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_dtrmv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix}, Ref{gsl_vector}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_dtrsv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_dtrsv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix * A, gsl_vector * X)`
"""
function gsl_blas_dtrsv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_dtrsv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix}, Ref{gsl_vector}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_cgemv(TransA, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_cgemv (CBLAS_TRANSPOSE_t TransA, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_vector_complex_float * X, const gsl_complex_float beta, gsl_vector_complex_float * Y)`
"""
function gsl_blas_cgemv(TransA, alpha, A, X, beta, Y)
    ccall((:gsl_blas_cgemv, libgsl), Cint, (CBLAS_TRANSPOSE_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_vector_complex_float}, gsl_complex_float, Ref{gsl_vector_complex_float}), TransA, alpha, A, X, beta, Y)
end

"""
    gsl_blas_ctrmv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_ctrmv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix_complex_float * A, gsl_vector_complex_float * X)`
"""
function gsl_blas_ctrmv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_ctrmv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix_complex_float}, Ref{gsl_vector_complex_float}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_ctrsv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_ctrsv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix_complex_float * A, gsl_vector_complex_float * X)`
"""
function gsl_blas_ctrsv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_ctrsv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix_complex_float}, Ref{gsl_vector_complex_float}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_zgemv(TransA, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_zgemv (CBLAS_TRANSPOSE_t TransA, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_vector_complex * X, const gsl_complex beta, gsl_vector_complex * Y)`
"""
function gsl_blas_zgemv(TransA, alpha, A, X, beta, Y)
    ccall((:gsl_blas_zgemv, libgsl), Cint, (CBLAS_TRANSPOSE_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_vector_complex}, gsl_complex, Ref{gsl_vector_complex}), TransA, alpha, A, X, beta, Y)
end

"""
    gsl_blas_ztrmv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_ztrmv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix_complex * A, gsl_vector_complex * X)`
"""
function gsl_blas_ztrmv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_ztrmv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix_complex}, Ref{gsl_vector_complex}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_ztrsv(Uplo, TransA, Diag, A, X) -> Cint

C signature:
`int gsl_blas_ztrsv (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_matrix_complex * A, gsl_vector_complex *X)`
"""
function gsl_blas_ztrsv(Uplo, TransA, Diag, A, X)
    ccall((:gsl_blas_ztrsv, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Ref{gsl_matrix_complex}, Ref{gsl_vector_complex}), Uplo, TransA, Diag, A, X)
end

"""
    gsl_blas_ssymv(Uplo, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_ssymv (CBLAS_UPLO_t Uplo, float alpha, const gsl_matrix_float * A, const gsl_vector_float * X, float beta, gsl_vector_float * Y)`
"""
function gsl_blas_ssymv(Uplo, alpha, A, X, beta, Y)
    ccall((:gsl_blas_ssymv, libgsl), Cint, (CBLAS_UPLO_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_vector_float}, Cfloat, Ref{gsl_vector_float}), Uplo, alpha, A, X, beta, Y)
end

"""
    gsl_blas_sger(alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_sger (float alpha, const gsl_vector_float * X, const gsl_vector_float * Y, gsl_matrix_float * A)`
"""
function gsl_blas_sger(alpha, X, Y, A)
    ccall((:gsl_blas_sger, libgsl), Cint, (Cfloat, Ref{gsl_vector_float}, Ref{gsl_vector_float}, Ref{gsl_matrix_float}), alpha, X, Y, A)
end

"""
    gsl_blas_ssyr(Uplo, alpha, X, A) -> Cint

C signature:
`int gsl_blas_ssyr (CBLAS_UPLO_t Uplo, float alpha, const gsl_vector_float * X, gsl_matrix_float * A)`
"""
function gsl_blas_ssyr(Uplo, alpha, X, A)
    ccall((:gsl_blas_ssyr, libgsl), Cint, (CBLAS_UPLO_t, Cfloat, Ref{gsl_vector_float}, Ref{gsl_matrix_float}), Uplo, alpha, X, A)
end

"""
    gsl_blas_ssyr2(Uplo, alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_ssyr2 (CBLAS_UPLO_t Uplo, float alpha, const gsl_vector_float * X, const gsl_vector_float * Y, gsl_matrix_float * A)`
"""
function gsl_blas_ssyr2(Uplo, alpha, X, Y, A)
    ccall((:gsl_blas_ssyr2, libgsl), Cint, (CBLAS_UPLO_t, Cfloat, Ref{gsl_vector_float}, Ref{gsl_vector_float}, Ref{gsl_matrix_float}), Uplo, alpha, X, Y, A)
end

"""
    gsl_blas_dsymv(Uplo, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_dsymv (CBLAS_UPLO_t Uplo, double alpha, const gsl_matrix * A, const gsl_vector * X, double beta, gsl_vector * Y)`
"""
function gsl_blas_dsymv(Uplo, alpha, A, X, beta, Y)
    ccall((:gsl_blas_dsymv, libgsl), Cint, (CBLAS_UPLO_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}), Uplo, alpha, A, X, beta, Y)
end

"""
    gsl_blas_dger(alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_dger (double alpha, const gsl_vector * X, const gsl_vector * Y, gsl_matrix * A)`
"""
function gsl_blas_dger(alpha, X, Y, A)
    ccall((:gsl_blas_dger, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}), alpha, X, Y, A)
end

"""
    gsl_blas_dsyr(Uplo, alpha, X, A) -> Cint

C signature:
`int gsl_blas_dsyr (CBLAS_UPLO_t Uplo, double alpha, const gsl_vector * X, gsl_matrix * A)`
"""
function gsl_blas_dsyr(Uplo, alpha, X, A)
    ccall((:gsl_blas_dsyr, libgsl), Cint, (CBLAS_UPLO_t, Cdouble, Ref{gsl_vector}, Ref{gsl_matrix}), Uplo, alpha, X, A)
end

"""
    gsl_blas_dsyr2(Uplo, alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_dsyr2 (CBLAS_UPLO_t Uplo, double alpha, const gsl_vector * X, const gsl_vector * Y, gsl_matrix * A)`
"""
function gsl_blas_dsyr2(Uplo, alpha, X, Y, A)
    ccall((:gsl_blas_dsyr2, libgsl), Cint, (CBLAS_UPLO_t, Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}), Uplo, alpha, X, Y, A)
end

"""
    gsl_blas_chemv(Uplo, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_chemv (CBLAS_UPLO_t Uplo, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_vector_complex_float * X, const gsl_complex_float beta, gsl_vector_complex_float * Y)`
"""
function gsl_blas_chemv(Uplo, alpha, A, X, beta, Y)
    ccall((:gsl_blas_chemv, libgsl), Cint, (CBLAS_UPLO_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_vector_complex_float}, gsl_complex_float, Ref{gsl_vector_complex_float}), Uplo, alpha, A, X, beta, Y)
end

"""
    gsl_blas_cgeru(alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_cgeru (const gsl_complex_float alpha, const gsl_vector_complex_float * X, const gsl_vector_complex_float * Y, gsl_matrix_complex_float * A)`
"""
function gsl_blas_cgeru(alpha, X, Y, A)
    ccall((:gsl_blas_cgeru, libgsl), Cint, (gsl_complex_float, Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}, Ref{gsl_matrix_complex_float}), alpha, X, Y, A)
end

"""
    gsl_blas_cgerc(alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_cgerc (const gsl_complex_float alpha, const gsl_vector_complex_float * X, const gsl_vector_complex_float * Y, gsl_matrix_complex_float * A)`
"""
function gsl_blas_cgerc(alpha, X, Y, A)
    ccall((:gsl_blas_cgerc, libgsl), Cint, (gsl_complex_float, Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}, Ref{gsl_matrix_complex_float}), alpha, X, Y, A)
end

"""
    gsl_blas_cher(Uplo, alpha, X, A) -> Cint

C signature:
`int gsl_blas_cher (CBLAS_UPLO_t Uplo, float alpha, const gsl_vector_complex_float * X, gsl_matrix_complex_float * A)`
"""
function gsl_blas_cher(Uplo, alpha, X, A)
    ccall((:gsl_blas_cher, libgsl), Cint, (CBLAS_UPLO_t, Cfloat, Ref{gsl_vector_complex_float}, Ref{gsl_matrix_complex_float}), Uplo, alpha, X, A)
end

"""
    gsl_blas_cher2(Uplo, alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_cher2 (CBLAS_UPLO_t Uplo, const gsl_complex_float alpha, const gsl_vector_complex_float * X, const gsl_vector_complex_float * Y, gsl_matrix_complex_float * A)`
"""
function gsl_blas_cher2(Uplo, alpha, X, Y, A)
    ccall((:gsl_blas_cher2, libgsl), Cint, (CBLAS_UPLO_t, gsl_complex_float, Ref{gsl_vector_complex_float}, Ref{gsl_vector_complex_float}, Ref{gsl_matrix_complex_float}), Uplo, alpha, X, Y, A)
end

"""
    gsl_blas_zhemv(Uplo, alpha, A, X, beta, Y) -> Cint

C signature:
`int gsl_blas_zhemv (CBLAS_UPLO_t Uplo, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_vector_complex * X, const gsl_complex beta, gsl_vector_complex * Y)`
"""
function gsl_blas_zhemv(Uplo, alpha, A, X, beta, Y)
    ccall((:gsl_blas_zhemv, libgsl), Cint, (CBLAS_UPLO_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_vector_complex}, gsl_complex, Ref{gsl_vector_complex}), Uplo, alpha, A, X, beta, Y)
end

"""
    gsl_blas_zgeru(alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_zgeru (const gsl_complex alpha, const gsl_vector_complex * X, const gsl_vector_complex * Y, gsl_matrix_complex * A)`
"""
function gsl_blas_zgeru(alpha, X, Y, A)
    ccall((:gsl_blas_zgeru, libgsl), Cint, (gsl_complex, Ref{gsl_vector_complex}, Ref{gsl_vector_complex}, Ref{gsl_matrix_complex}), alpha, X, Y, A)
end

"""
    gsl_blas_zgerc(alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_zgerc (const gsl_complex alpha, const gsl_vector_complex * X, const gsl_vector_complex * Y, gsl_matrix_complex * A)`
"""
function gsl_blas_zgerc(alpha, X, Y, A)
    ccall((:gsl_blas_zgerc, libgsl), Cint, (gsl_complex, Ref{gsl_vector_complex}, Ref{gsl_vector_complex}, Ref{gsl_matrix_complex}), alpha, X, Y, A)
end

"""
    gsl_blas_zher(Uplo, alpha, X, A) -> Cint

C signature:
`int gsl_blas_zher (CBLAS_UPLO_t Uplo, double alpha, const gsl_vector_complex * X, gsl_matrix_complex * A)`
"""
function gsl_blas_zher(Uplo, alpha, X, A)
    ccall((:gsl_blas_zher, libgsl), Cint, (CBLAS_UPLO_t, Cdouble, Ref{gsl_vector_complex}, Ref{gsl_matrix_complex}), Uplo, alpha, X, A)
end

"""
    gsl_blas_zher2(Uplo, alpha, X, Y, A) -> Cint

C signature:
`int gsl_blas_zher2 (CBLAS_UPLO_t Uplo, const gsl_complex alpha, const gsl_vector_complex * X, const gsl_vector_complex * Y, gsl_matrix_complex * A)`
"""
function gsl_blas_zher2(Uplo, alpha, X, Y, A)
    ccall((:gsl_blas_zher2, libgsl), Cint, (CBLAS_UPLO_t, gsl_complex, Ref{gsl_vector_complex}, Ref{gsl_vector_complex}, Ref{gsl_matrix_complex}), Uplo, alpha, X, Y, A)
end

"""
    gsl_blas_sgemm(TransA, TransB, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_sgemm (CBLAS_TRANSPOSE_t TransA, CBLAS_TRANSPOSE_t TransB, float alpha, const gsl_matrix_float * A, const gsl_matrix_float * B, float beta, gsl_matrix_float * C)`
"""
function gsl_blas_sgemm(TransA, TransB, alpha, A, B, beta, C)
    ccall((:gsl_blas_sgemm, libgsl), Cint, (CBLAS_TRANSPOSE_t, CBLAS_TRANSPOSE_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_matrix_float}, Cfloat, Ref{gsl_matrix_float}), TransA, TransB, alpha, A, B, beta, C)
end

"""
    gsl_blas_ssymm(Side, Uplo, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_ssymm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, float alpha, const gsl_matrix_float * A, const gsl_matrix_float * B, float beta, gsl_matrix_float * C)`
"""
function gsl_blas_ssymm(Side, Uplo, alpha, A, B, beta, C)
    ccall((:gsl_blas_ssymm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_matrix_float}, Cfloat, Ref{gsl_matrix_float}), Side, Uplo, alpha, A, B, beta, C)
end

"""
    gsl_blas_ssyrk(Uplo, Trans, alpha, A, beta, C) -> Cint

C signature:
`int gsl_blas_ssyrk (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, float alpha, const gsl_matrix_float * A, float beta, gsl_matrix_float * C)`
"""
function gsl_blas_ssyrk(Uplo, Trans, alpha, A, beta, C)
    ccall((:gsl_blas_ssyrk, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, Cfloat, Ref{gsl_matrix_float}, Cfloat, Ref{gsl_matrix_float}), Uplo, Trans, alpha, A, beta, C)
end

"""
    gsl_blas_ssyr2k(Uplo, Trans, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_ssyr2k (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, float alpha, const gsl_matrix_float * A, const gsl_matrix_float * B, float beta, gsl_matrix_float * C)`
"""
function gsl_blas_ssyr2k(Uplo, Trans, alpha, A, B, beta, C)
    ccall((:gsl_blas_ssyr2k, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_matrix_float}, Cfloat, Ref{gsl_matrix_float}), Uplo, Trans, alpha, A, B, beta, C)
end

"""
    gsl_blas_strmm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_strmm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, float alpha, const gsl_matrix_float * A, gsl_matrix_float * B)`
"""
function gsl_blas_strmm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_strmm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_matrix_float}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_strsm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_strsm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, float alpha, const gsl_matrix_float * A, gsl_matrix_float * B)`
"""
function gsl_blas_strsm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_strsm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cfloat, Ref{gsl_matrix_float}, Ref{gsl_matrix_float}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_dgemm(TransA, TransB, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_dgemm (CBLAS_TRANSPOSE_t TransA, CBLAS_TRANSPOSE_t TransB, double alpha, const gsl_matrix * A, const gsl_matrix * B, double beta, gsl_matrix * C)`
"""
function gsl_blas_dgemm(TransA, TransB, alpha, A, B, beta, C)
    ccall((:gsl_blas_dgemm, libgsl), Cint, (CBLAS_TRANSPOSE_t, CBLAS_TRANSPOSE_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), TransA, TransB, alpha, A, B, beta, C)
end

"""
    gsl_blas_dsymm(Side, Uplo, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_dsymm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, double alpha, const gsl_matrix * A, const gsl_matrix * B, double beta, gsl_matrix * C)`
"""
function gsl_blas_dsymm(Side, Uplo, alpha, A, B, beta, C)
    ccall((:gsl_blas_dsymm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), Side, Uplo, alpha, A, B, beta, C)
end

"""
    gsl_blas_dsyrk(Uplo, Trans, alpha, A, beta, C) -> Cint

C signature:
`int gsl_blas_dsyrk (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, double alpha, const gsl_matrix * A, double beta, gsl_matrix * C)`
"""
function gsl_blas_dsyrk(Uplo, Trans, alpha, A, beta, C)
    ccall((:gsl_blas_dsyrk, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, Cdouble, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), Uplo, Trans, alpha, A, beta, C)
end

"""
    gsl_blas_dsyr2k(Uplo, Trans, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_dsyr2k (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, double alpha, const gsl_matrix * A, const gsl_matrix * B, double beta, gsl_matrix * C)`
"""
function gsl_blas_dsyr2k(Uplo, Trans, alpha, A, B, beta, C)
    ccall((:gsl_blas_dsyr2k, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), Uplo, Trans, alpha, A, B, beta, C)
end

"""
    gsl_blas_dtrmm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_dtrmm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, double alpha, const gsl_matrix * A, gsl_matrix * B)`
"""
function gsl_blas_dtrmm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_dtrmm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_dtrsm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_dtrsm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, double alpha, const gsl_matrix * A, gsl_matrix * B)`
"""
function gsl_blas_dtrsm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_dtrsm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, Cdouble, Ref{gsl_matrix}, Ref{gsl_matrix}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_cgemm(TransA, TransB, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_cgemm (CBLAS_TRANSPOSE_t TransA, CBLAS_TRANSPOSE_t TransB, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_matrix_complex_float * B, const gsl_complex_float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_cgemm(TransA, TransB, alpha, A, B, beta, C)
    ccall((:gsl_blas_cgemm, libgsl), Cint, (CBLAS_TRANSPOSE_t, CBLAS_TRANSPOSE_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}, gsl_complex_float, Ref{gsl_matrix_complex_float}), TransA, TransB, alpha, A, B, beta, C)
end

"""
    gsl_blas_csymm(Side, Uplo, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_csymm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_matrix_complex_float * B, const gsl_complex_float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_csymm(Side, Uplo, alpha, A, B, beta, C)
    ccall((:gsl_blas_csymm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}, gsl_complex_float, Ref{gsl_matrix_complex_float}), Side, Uplo, alpha, A, B, beta, C)
end

"""
    gsl_blas_csyrk(Uplo, Trans, alpha, A, beta, C) -> Cint

C signature:
`int gsl_blas_csyrk (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_complex_float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_csyrk(Uplo, Trans, alpha, A, beta, C)
    ccall((:gsl_blas_csyrk, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, gsl_complex_float, Ref{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, beta, C)
end

"""
    gsl_blas_csyr2k(Uplo, Trans, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_csyr2k (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_matrix_complex_float * B, const gsl_complex_float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_csyr2k(Uplo, Trans, alpha, A, B, beta, C)
    ccall((:gsl_blas_csyr2k, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}, gsl_complex_float, Ref{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, B, beta, C)
end

"""
    gsl_blas_ctrmm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_ctrmm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, gsl_matrix_complex_float * B)`
"""
function gsl_blas_ctrmm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_ctrmm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_ctrsm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_ctrsm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, gsl_matrix_complex_float * B)`
"""
function gsl_blas_ctrsm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_ctrsm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_zgemm(TransA, TransB, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_zgemm (CBLAS_TRANSPOSE_t TransA, CBLAS_TRANSPOSE_t TransB, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_matrix_complex * B, const gsl_complex beta, gsl_matrix_complex * C)`
"""
function gsl_blas_zgemm(TransA, TransB, alpha, A, B, beta, C)
    ccall((:gsl_blas_zgemm, libgsl), Cint, (CBLAS_TRANSPOSE_t, CBLAS_TRANSPOSE_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}, gsl_complex, Ref{gsl_matrix_complex}), TransA, TransB, alpha, A, B, beta, C)
end

"""
    gsl_blas_zsymm(Side, Uplo, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_zsymm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_matrix_complex * B, const gsl_complex beta, gsl_matrix_complex * C)`
"""
function gsl_blas_zsymm(Side, Uplo, alpha, A, B, beta, C)
    ccall((:gsl_blas_zsymm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}, gsl_complex, Ref{gsl_matrix_complex}), Side, Uplo, alpha, A, B, beta, C)
end

"""
    gsl_blas_zsyrk(Uplo, Trans, alpha, A, beta, C) -> Cint

C signature:
`int gsl_blas_zsyrk (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_complex beta, gsl_matrix_complex * C)`
"""
function gsl_blas_zsyrk(Uplo, Trans, alpha, A, beta, C)
    ccall((:gsl_blas_zsyrk, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, gsl_complex, Ref{gsl_matrix_complex}, gsl_complex, Ref{gsl_matrix_complex}), Uplo, Trans, alpha, A, beta, C)
end

"""
    gsl_blas_zsyr2k(Uplo, Trans, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_zsyr2k (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_matrix_complex * B, const gsl_complex beta, gsl_matrix_complex *C)`
"""
function gsl_blas_zsyr2k(Uplo, Trans, alpha, A, B, beta, C)
    ccall((:gsl_blas_zsyr2k, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}, gsl_complex, Ref{gsl_matrix_complex}), Uplo, Trans, alpha, A, B, beta, C)
end

"""
    gsl_blas_ztrmm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_ztrmm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_complex alpha, const gsl_matrix_complex * A, gsl_matrix_complex * B)`
"""
function gsl_blas_ztrmm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_ztrmm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_ztrsm(Side, Uplo, TransA, Diag, alpha, A, B) -> Cint

C signature:
`int gsl_blas_ztrsm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t TransA, CBLAS_DIAG_t Diag, const gsl_complex alpha, const gsl_matrix_complex * A, gsl_matrix_complex * B)`
"""
function gsl_blas_ztrsm(Side, Uplo, TransA, Diag, alpha, A, B)
    ccall((:gsl_blas_ztrsm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, CBLAS_DIAG_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}), Side, Uplo, TransA, Diag, alpha, A, B)
end

"""
    gsl_blas_chemm(Side, Uplo, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_chemm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_matrix_complex_float * B, const gsl_complex_float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_chemm(Side, Uplo, alpha, A, B, beta, C)
    ccall((:gsl_blas_chemm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}, gsl_complex_float, Ref{gsl_matrix_complex_float}), Side, Uplo, alpha, A, B, beta, C)
end

"""
    gsl_blas_cherk(Uplo, Trans, alpha, A, beta, C) -> Cint

C signature:
`int gsl_blas_cherk (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, float alpha, const gsl_matrix_complex_float * A, float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_cherk(Uplo, Trans, alpha, A, beta, C)
    ccall((:gsl_blas_cherk, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, Cfloat, Ref{gsl_matrix_complex_float}, Cfloat, Ref{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, beta, C)
end

"""
    gsl_blas_cher2k(Uplo, Trans, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_cher2k (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, const gsl_complex_float alpha, const gsl_matrix_complex_float * A, const gsl_matrix_complex_float * B, float beta, gsl_matrix_complex_float * C)`
"""
function gsl_blas_cher2k(Uplo, Trans, alpha, A, B, beta, C)
    ccall((:gsl_blas_cher2k, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, gsl_complex_float, Ref{gsl_matrix_complex_float}, Ref{gsl_matrix_complex_float}, Cfloat, Ref{gsl_matrix_complex_float}), Uplo, Trans, alpha, A, B, beta, C)
end

"""
    gsl_blas_zhemm(Side, Uplo, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_zhemm (CBLAS_SIDE_t Side, CBLAS_UPLO_t Uplo, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_matrix_complex * B, const gsl_complex beta, gsl_matrix_complex * C)`
"""
function gsl_blas_zhemm(Side, Uplo, alpha, A, B, beta, C)
    ccall((:gsl_blas_zhemm, libgsl), Cint, (CBLAS_SIDE_t, CBLAS_UPLO_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}, gsl_complex, Ref{gsl_matrix_complex}), Side, Uplo, alpha, A, B, beta, C)
end

"""
    gsl_blas_zherk(Uplo, Trans, alpha, A, beta, C) -> Cint

C signature:
`int gsl_blas_zherk (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, double alpha, const gsl_matrix_complex * A, double beta, gsl_matrix_complex * C)`
"""
function gsl_blas_zherk(Uplo, Trans, alpha, A, beta, C)
    ccall((:gsl_blas_zherk, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, Cdouble, Ref{gsl_matrix_complex}, Cdouble, Ref{gsl_matrix_complex}), Uplo, Trans, alpha, A, beta, C)
end

"""
    gsl_blas_zher2k(Uplo, Trans, alpha, A, B, beta, C) -> Cint

C signature:
`int gsl_blas_zher2k (CBLAS_UPLO_t Uplo, CBLAS_TRANSPOSE_t Trans, const gsl_complex alpha, const gsl_matrix_complex * A, const gsl_matrix_complex * B, double beta, gsl_matrix_complex * C)`
"""
function gsl_blas_zher2k(Uplo, Trans, alpha, A, B, beta, C)
    ccall((:gsl_blas_zher2k, libgsl), Cint, (CBLAS_UPLO_t, CBLAS_TRANSPOSE_t, gsl_complex, Ref{gsl_matrix_complex}, Ref{gsl_matrix_complex}, Cdouble, Ref{gsl_matrix_complex}), Uplo, Trans, alpha, A, B, beta, C)
end

