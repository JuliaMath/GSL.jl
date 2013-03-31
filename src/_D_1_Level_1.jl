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
function cblas_sdsdot{gsl_int<:Integer}(N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int, y::Ptr{Cfloat}, incy::gsl_int)
    ccall( (:cblas_sdsdot, :libgsl), Cfloat, (Cint, Cfloat, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Cdouble
function cblas_dsdot{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, y::Ptr{Cfloat}, incy::gsl_int)
    ccall( (:cblas_dsdot, :libgsl), Cdouble, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Cfloat
function cblas_sdot{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, y::Ptr{Cfloat}, incy::gsl_int)
    ccall( (:cblas_sdot, :libgsl), Cfloat, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Cdouble
function cblas_ddot{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cdouble}, incx::gsl_int, y::Ptr{Cdouble}, incy::gsl_int)
    ccall( (:cblas_ddot, :libgsl), Cdouble, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_cdotu_sub{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, dotu::Ptr{Void})
    ccall( (:cblas_cdotu_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotu )
end


# 
# 
#   Returns: Void
function cblas_cdotc_sub{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, dotc::Ptr{Void})
    ccall( (:cblas_cdotc_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotc )
end


# 
# 
#   Returns: Void
function cblas_zdotu_sub{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, dotu::Ptr{Void})
    ccall( (:cblas_zdotu_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotu )
end


# 
# 
#   Returns: Void
function cblas_zdotc_sub{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int, dotc::Ptr{Void})
    ccall( (:cblas_zdotc_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotc )
end


# 
# 
#   Returns: Cfloat
function cblas_snrm2{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cfloat}, incx::gsl_int)
    ccall( (:cblas_snrm2, :libgsl), Cfloat, (Cint, Ptr{Cfloat}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_sasum{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cfloat}, incx::gsl_int)
    ccall( (:cblas_sasum, :libgsl), Cfloat, (Cint, Ptr{Cfloat}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dnrm2{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cdouble}, incx::gsl_int)
    ccall( (:cblas_dnrm2, :libgsl), Cdouble, (Cint, Ptr{Cdouble}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dasum{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cdouble}, incx::gsl_int)
    ccall( (:cblas_dasum, :libgsl), Cdouble, (Cint, Ptr{Cdouble}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_scnrm2{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_scnrm2, :libgsl), Cfloat, (Cint, Ptr{Void}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Cfloat
function cblas_scasum{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_scasum, :libgsl), Cfloat, (Cint, Ptr{Void}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dznrm2{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_dznrm2, :libgsl), Cdouble, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dzasum{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_dzasum, :libgsl), Cdouble, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown output type CBLAS_INDEX
#XXX Coerced type for output Void
function cblas_isamax{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cfloat}, incx::gsl_int)
    ccall( (:cblas_isamax, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown output type CBLAS_INDEX
#XXX Coerced type for output Void
function cblas_idamax{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cdouble}, incx::gsl_int)
    ccall( (:cblas_idamax, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Void
#XXX Unknown output type CBLAS_INDEX
#XXX Coerced type for output Void
function cblas_icamax{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_icamax, :libgsl), Void, (Cint, Ptr{Void}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Void
#XXX Unknown output type CBLAS_INDEX
#XXX Coerced type for output Void
function cblas_izamax{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_izamax, :libgsl), Void, (Cint, Ptr{Void}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Void
function cblas_sswap{gsl_int<:Integer}(N::gsl_int, incx::gsl_int, incy::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sswap, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
    return unsafe_ref(x) ,unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_scopy{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cfloat}, incx::gsl_int, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_scopy, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_saxpy{gsl_int<:Integer}(N::gsl_int, alpha::Cfloat, x::Ptr{Cfloat}, incx::gsl_int, incy::gsl_int)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_saxpy, :libgsl), Void, (Cint, Cfloat, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, alpha, x, incx, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_dswap{gsl_int<:Integer}(N::gsl_int, incx::gsl_int, incy::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dswap, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
    return unsafe_ref(x) ,unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_dcopy{gsl_int<:Integer}(N::gsl_int, x::Ptr{Cdouble}, incx::gsl_int, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dcopy, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_daxpy{gsl_int<:Integer}(N::gsl_int, alpha::Cdouble, x::Ptr{Cdouble}, incx::gsl_int, incy::gsl_int)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_daxpy, :libgsl), Void, (Cint, Cdouble, Ptr{Cdouble},
        Cint, Ptr{Cdouble}, Cint), N, alpha, x, incx, y, incy )
    return unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_cswap{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_cswap, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_ccopy{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_ccopy, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_caxpy{gsl_int<:Integer}(N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_caxpy, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zswap{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zswap, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zcopy{gsl_int<:Integer}(N::gsl_int, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zcopy, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zaxpy{gsl_int<:Integer}(N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int, y::Ptr{Void}, incy::gsl_int)
    ccall( (:cblas_zaxpy, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_srotg()
    a = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    b = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    c = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    s = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srotg, :libgsl), Void, (Ptr{Cfloat}, Ptr{Cfloat},
        Ptr{Cfloat}, Ptr{Cfloat}), a, b, c, s )
    return unsafe_ref(a) ,unsafe_ref(b) ,unsafe_ref(c) ,unsafe_ref(s)
end


# 
# 
#   Returns: Void
function cblas_srotmg(b2::Cfloat)
    d1 = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    d2 = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    b1 = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    P = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srotmg, :libgsl), Void, (Ptr{Cfloat}, Ptr{Cfloat},
        Ptr{Cfloat}, Cfloat, Ptr{Cfloat}), d1, d2, b1, b2, P )
    return unsafe_ref(d1) ,unsafe_ref(d2) ,unsafe_ref(b1) ,unsafe_ref(P)
end


# 
# 
#   Returns: Void
function cblas_srot{gsl_int<:Integer}(N::gsl_int, incx::gsl_int, incy::gsl_int, c::Cfloat, s::Cfloat)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srot, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Cfloat), N, x, incx, y, incy, c, s )
    return unsafe_ref(x) ,unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_srotm{gsl_int<:Integer}(N::gsl_int, incx::gsl_int, incy::gsl_int, P::Ptr{Cfloat})
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srotm, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}), N, x, incx, y, incy, P )
    return unsafe_ref(x) ,unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_drotg()
    a = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    b = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    c = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    s = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drotg, :libgsl), Void, (Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Ptr{Cdouble}), a, b, c, s )
    return unsafe_ref(a) ,unsafe_ref(b) ,unsafe_ref(c) ,unsafe_ref(s)
end


# 
# 
#   Returns: Void
function cblas_drotmg(b2::Cdouble)
    d1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    d2 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    b1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    P = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drotmg, :libgsl), Void, (Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), d1, d2, b1, b2, P )
    return unsafe_ref(d1) ,unsafe_ref(d2) ,unsafe_ref(b1) ,unsafe_ref(P)
end


# 
# 
#   Returns: Void
function cblas_drot{gsl_int<:Integer}(N::gsl_int, incx::gsl_int, incy::gsl_int, c::Cdouble, s::Cdouble)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drot, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Cdouble, Cdouble), N, x, incx, y, incy, c, s )
    return unsafe_ref(x) ,unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_drotm{gsl_int<:Integer}(N::gsl_int, incx::gsl_int, incy::gsl_int, P::Ptr{Cdouble})
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drotm, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}), N, x, incx, y, incy, P )
    return unsafe_ref(x) ,unsafe_ref(y)
end


# 
# 
#   Returns: Void
function cblas_sscal{gsl_int<:Integer}(N::gsl_int, alpha::Cfloat, incx::gsl_int)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sscal, :libgsl), Void, (Cint, Cfloat, Ptr{Cfloat},
        Cint), N, alpha, x, incx )
    return unsafe_ref(x)
end


# 
# 
#   Returns: Void
function cblas_dscal{gsl_int<:Integer}(N::gsl_int, alpha::Cdouble, incx::gsl_int)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dscal, :libgsl), Void, (Cint, Cdouble, Ptr{Cdouble},
        Cint), N, alpha, x, incx )
    return unsafe_ref(x)
end


# 
# 
#   Returns: Void
function cblas_cscal{gsl_int<:Integer}(N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_cscal, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zscal{gsl_int<:Integer}(N::gsl_int, alpha::Ptr{Void}, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_zscal, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_csscal{gsl_int<:Integer}(N::gsl_int, alpha::Cfloat, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_csscal, :libgsl), Void, (Cint, Cfloat, Ptr{Void}, Cint),
        N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zdscal{gsl_int<:Integer}(N::gsl_int, alpha::Cdouble, x::Ptr{Void}, incx::gsl_int)
    ccall( (:cblas_zdscal, :libgsl), Void, (Cint, Cdouble, Ptr{Void},
        Cint), N, alpha, x, incx )
end
