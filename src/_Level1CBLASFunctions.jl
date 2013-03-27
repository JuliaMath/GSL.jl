#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############
# D.1 Level 1 #
###############
export cblas_sdsdot, cblas_dsdot, cblas_sdot, cblas_ddot, cblas_cdotu_sub,
       cblas_cdotc_sub, cblas_zdotu_sub, cblas_zdotc_sub, cblas_snrm2,
       cblas_sasum, cblas_dnrm2, cblas_dasum, cblas_scnrm2, cblas_scasum,
       cblas_dznrm2, cblas_dzasum, cblas_isamax, cblas_idamax, cblas_icamax,
       cblas_izamax, cblas_sswap, cblas_scopy, cblas_saxpy, cblas_dswap,
       cblas_dcopy, cblas_daxpy, cblas_cswap, cblas_ccopy, cblas_caxpy,
       cblas_zswap, cblas_zcopy, cblas_zaxpy, cblas_srotg, cblas_srotmg,
       cblas_srot, cblas_srotm, cblas_drotg, cblas_drotmg, cblas_drot,
       cblas_drotm, cblas_sscal, cblas_dscal, cblas_cscal, cblas_zscal,
       cblas_csscal, cblas_zdscal


# 
# 
#   Returns: Cfloat
function cblas_sdsdot (N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sdsdot, "libgsl"), Cfloat, (Cint, Cfloat, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Cdouble
function cblas_dsdot (N::Cint, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_dsdot, "libgsl"), Cdouble, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Cfloat
function cblas_sdot (N::Cint, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sdot, "libgsl"), Cfloat, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Cdouble
function cblas_ddot (N::Cint, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_ddot, "libgsl"), Cdouble, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_cdotu_sub (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, dotu::Ptr{Void})
    ccall( (:cblas_cdotu_sub, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotu )
end


# 
# 
#   Returns: Void
function cblas_cdotc_sub (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, dotc::Ptr{Void})
    ccall( (:cblas_cdotc_sub, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotc )
end


# 
# 
#   Returns: Void
function cblas_zdotu_sub (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, dotu::Ptr{Void})
    ccall( (:cblas_zdotu_sub, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotu )
end


# 
# 
#   Returns: Void
function cblas_zdotc_sub (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint, dotc::Ptr{Void})
    ccall( (:cblas_zdotc_sub, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotc )
end


# 
# 
#   Returns: Cfloat
function cblas_snrm2 (N::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_snrm2, "libgsl"), Cfloat, (Cint, Ptr{Cfloat}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_sasum (N::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_sasum, "libgsl"), Cfloat, (Cint, Ptr{Cfloat}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dnrm2 (N::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dnrm2, "libgsl"), Cdouble, (Cint, Ptr{Cdouble}, Cint),
        N, x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dasum (N::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dasum, "libgsl"), Cdouble, (Cint, Ptr{Cdouble}, Cint),
        N, x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_scnrm2 (N::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_scnrm2, "libgsl"), Cfloat, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_scasum (N::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_scasum, "libgsl"), Cfloat, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dznrm2 (N::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_dznrm2, "libgsl"), Cdouble, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dzasum (N::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_dzasum, "libgsl"), Cdouble, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
#XXX Unknown output type CBLAS_INDEX
function cblas_isamax (N::Cint, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_isamax, "libgsl"), CBLAS_INDEX, (Cint, Ptr{Cfloat},
        Cint), N, x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
#XXX Unknown output type CBLAS_INDEX
function cblas_idamax (N::Cint, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_idamax, "libgsl"), CBLAS_INDEX, (Cint, Ptr{Cdouble},
        Cint), N, x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
#XXX Unknown output type CBLAS_INDEX
function cblas_icamax (N::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_icamax, "libgsl"), CBLAS_INDEX, (Cint, Ptr{Void}, Cint),
        N, x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
#XXX Unknown output type CBLAS_INDEX
function cblas_izamax (N::Cint, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_izamax, "libgsl"), CBLAS_INDEX, (Cint, Ptr{Void}, Cint),
        N, x, incx )
end


# 
# 
#   Returns: Void
function cblas_sswap (N::Cint, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_sswap, "libgsl"), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_scopy (N::Cint, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_scopy, "libgsl"), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_saxpy (N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint)
    ccall( (:cblas_saxpy, "libgsl"), Void, (Cint, Cfloat, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_dswap (N::Cint, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dswap, "libgsl"), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_dcopy (N::Cint, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_dcopy, "libgsl"), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_daxpy (N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint)
    ccall( (:cblas_daxpy, "libgsl"), Void, (Cint, Cdouble, Ptr{Cdouble},
        Cint, Ptr{Cdouble}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_cswap (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_cswap, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_ccopy (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_ccopy, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_caxpy (N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_caxpy, "libgsl"), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zswap (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zswap, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zcopy (N::Cint, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zcopy, "libgsl"), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zaxpy (N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint, y::Ptr{Void}, incy::Cint)
    ccall( (:cblas_zaxpy, "libgsl"), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_srotg (a::Ptr{Cfloat}, b::Ptr{Cfloat}, c::Ptr{Cfloat}, s::Ptr{Cfloat})
    ccall( (:cblas_srotg, "libgsl"), Void, (Ptr{Cfloat}, Ptr{Cfloat},
        Ptr{Cfloat}, Ptr{Cfloat}), a, b, c, s )
end


# 
# 
#   Returns: Void
function cblas_srotmg (d1::Ptr{Cfloat}, d2::Ptr{Cfloat}, b1::Ptr{Cfloat}, b2::Cfloat, P::Ptr{Cfloat})
    ccall( (:cblas_srotmg, "libgsl"), Void, (Ptr{Cfloat}, Ptr{Cfloat},
        Ptr{Cfloat}, Cfloat, Ptr{Cfloat}), d1, d2, b1, b2, P )
end


# 
# 
#   Returns: Void
function cblas_srot (N::Cint, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, c::Cfloat, s::Cfloat)
    ccall( (:cblas_srot, "libgsl"), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Cfloat), N, x, incx, y, incy, c, s )
end


# 
# 
#   Returns: Void
function cblas_srotm (N::Cint, x::Ptr{Cfloat}, incx::Cint, y::Ptr{Cfloat}, incy::Cint, P::Ptr{Cfloat})
    ccall( (:cblas_srotm, "libgsl"), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}), N, x, incx, y, incy, P )
end


# 
# 
#   Returns: Void
function cblas_drotg (a::Ptr{Cdouble}, b::Ptr{Cdouble}, c::Ptr{Cdouble}, s::Ptr{Cdouble})
    ccall( (:cblas_drotg, "libgsl"), Void, (Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Ptr{Cdouble}), a, b, c, s )
end


# 
# 
#   Returns: Void
function cblas_drotmg (d1::Ptr{Cdouble}, d2::Ptr{Cdouble}, b1::Ptr{Cdouble}, b2::Cdouble, P::Ptr{Cdouble})
    ccall( (:cblas_drotmg, "libgsl"), Void, (Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), d1, d2, b1, b2, P )
end


# 
# 
#   Returns: Void
function cblas_drot (N::Cint, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, c::Cdouble, s::Cdouble)
    ccall( (:cblas_drot, "libgsl"), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Cdouble, Cdouble), N, x, incx, y, incy, c, s )
end


# 
# 
#   Returns: Void
function cblas_drotm (N::Cint, x::Ptr{Cdouble}, incx::Cint, y::Ptr{Cdouble}, incy::Cint, P::Ptr{Cdouble})
    ccall( (:cblas_drotm, "libgsl"), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}), N, x, incx, y, incy, P )
end


# 
# 
#   Returns: Void
function cblas_sscal (N::Cint, alpha::Cfloat, x::Ptr{Cfloat}, incx::Cint)
    ccall( (:cblas_sscal, "libgsl"), Void, (Cint, Cfloat, Ptr{Cfloat},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_dscal (N::Cint, alpha::Cdouble, x::Ptr{Cdouble}, incx::Cint)
    ccall( (:cblas_dscal, "libgsl"), Void, (Cint, Cdouble, Ptr{Cdouble},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_cscal (N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_cscal, "libgsl"), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zscal (N::Cint, alpha::Ptr{Void}, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_zscal, "libgsl"), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_csscal (N::Cint, alpha::Cfloat, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_csscal, "libgsl"), Void, (Cint, Cfloat, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zdscal (N::Cint, alpha::Cdouble, x::Ptr{Void}, incx::Cint)
    ccall( (:cblas_zdscal, "libgsl"), Void, (Cint, Cdouble, Ptr{Void},
        Cint), N, alpha, x, incx )
end