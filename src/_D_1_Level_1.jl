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
function cblas_sdsdot{tB<:Real ,tA<:Real}(N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer)
    ccall( (:cblas_sdsdot, :libgsl), Cfloat, (Cint, Cfloat, Ptr{Cfloat},
        Cint, Ptr{Cfloat}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Cdouble
function cblas_dsdot{tB<:Real ,tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer)
    ccall( (:cblas_dsdot, :libgsl), Cdouble, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Cfloat
function cblas_sdot{tB<:Real ,tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer)
    ccall( (:cblas_sdot, :libgsl), Cfloat, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Cdouble
function cblas_ddot{tB<:Real ,tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer, y::Ptr{tB}, incy::Integer)
    ccall( (:cblas_ddot, :libgsl), Cdouble, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_cdotu_sub(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, dotu::Ptr{Void})
    ccall( (:cblas_cdotu_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotu )
end


# 
# 
#   Returns: Void
function cblas_cdotc_sub(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, dotc::Ptr{Void})
    ccall( (:cblas_cdotc_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotc )
end


# 
# 
#   Returns: Void
function cblas_zdotu_sub(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, dotu::Ptr{Void})
    ccall( (:cblas_zdotu_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotu )
end


# 
# 
#   Returns: Void
function cblas_zdotc_sub(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer, dotc::Ptr{Void})
    ccall( (:cblas_zdotc_sub, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint, Ptr{Void}), N, x, incx, y, incy, dotc )
end


# 
# 
#   Returns: Cfloat
function cblas_snrm2{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer)
    ccall( (:cblas_snrm2, :libgsl), Cfloat, (Cint, Ptr{Cfloat}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_sasum{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer)
    ccall( (:cblas_sasum, :libgsl), Cfloat, (Cint, Ptr{Cfloat}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dnrm2{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer)
    ccall( (:cblas_dnrm2, :libgsl), Cdouble, (Cint, Ptr{Cdouble}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dasum{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer)
    ccall( (:cblas_dasum, :libgsl), Cdouble, (Cint, Ptr{Cdouble}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cfloat
function cblas_scnrm2(N::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_scnrm2, :libgsl), Cfloat, (Cint, Ptr{Void}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Cfloat
function cblas_scasum(N::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_scasum, :libgsl), Cfloat, (Cint, Ptr{Void}, Cint), N, x,
        incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dznrm2(N::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_dznrm2, :libgsl), Cdouble, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: Cdouble
function cblas_dzasum(N::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_dzasum, :libgsl), Cdouble, (Cint, Ptr{Void}, Cint), N,
        x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
function cblas_isamax{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer)
    ccall( (:cblas_isamax, :libgsl), CBLAS_INDEX, (Cint, Ptr{Cfloat},
        Cint), N, x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
function cblas_idamax{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer)
    ccall( (:cblas_idamax, :libgsl), CBLAS_INDEX, (Cint, Ptr{Cdouble},
        Cint), N, x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
function cblas_icamax(N::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_icamax, :libgsl), CBLAS_INDEX, (Cint, Ptr{Void}, Cint),
        N, x, incx )
end


# 
# 
#   Returns: CBLAS_INDEX
function cblas_izamax(N::Integer, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_izamax, :libgsl), CBLAS_INDEX, (Cint, Ptr{Void}, Cint),
        N, x, incx )
end


# 
# 
#   Returns: Void
function cblas_sswap(N::Integer, incx::Integer, incy::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sswap, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number cblas_sswap


# 
# 
#   Returns: Void
function cblas_scopy{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_scopy, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, x, incx, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_saxpy{tA<:Real}(N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, incy::Integer)
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_saxpy, :libgsl), Void, (Cint, Cfloat, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint), N, alpha, x, incx, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_dswap(N::Integer, incx::Integer, incy::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dswap, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number cblas_dswap


# 
# 
#   Returns: Void
function cblas_dcopy{tA<:Real}(N::Integer, x::Ptr{tA}, incx::Integer, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dcopy, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint), N, x, incx, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_daxpy{tA<:Real}(N::Integer, alpha::Real, x::Ptr{tA}, incx::Integer, incy::Integer)
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_daxpy, :libgsl), Void, (Cint, Cdouble, Ptr{Cdouble},
        Cint, Ptr{Cdouble}, Cint), N, alpha, x, incx, y, incy )
    return unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_cswap(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_cswap, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_ccopy(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_ccopy, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_caxpy(N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_caxpy, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint, Ptr{Void}, Cint), N, alpha, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zswap(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zswap, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zcopy(N::Integer, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer)
    ccall( (:cblas_zcopy, :libgsl), Void, (Cint, Ptr{Void}, Cint,
        Ptr{Void}, Cint), N, x, incx, y, incy )
end


# 
# 
#   Returns: Void
function cblas_zaxpy(N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer, y::Ptr{Void}, incy::Integer)
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
    return unsafe_ref(a)[1] ,unsafe_ref(b)[1] ,unsafe_ref(c)[1] ,unsafe_ref(s)[1]
end


# 
# 
#   Returns: Void
function cblas_srotmg(b2::Real)
    d1 = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    d2 = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    b1 = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    P = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srotmg, :libgsl), Void, (Ptr{Cfloat}, Ptr{Cfloat},
        Ptr{Cfloat}, Cfloat, Ptr{Cfloat}), d1, d2, b1, b2, P )
    return unsafe_ref(d1)[1] ,unsafe_ref(d2)[1] ,unsafe_ref(b1)[1] ,unsafe_ref(P)[1]
end
@vectorize_1arg Number cblas_srotmg


# 
# 
#   Returns: Void
function cblas_srot(N::Integer, incx::Integer, incy::Integer, c::Real, s::Real)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srot, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Cfloat, Cfloat), N, x, incx, y, incy, c, s )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_5arg Number cblas_srot


# 
# 
#   Returns: Void
function cblas_srotm{tA<:Real}(N::Integer, incx::Integer, incy::Integer, P::Ptr{tA})
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    y = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_srotm, :libgsl), Void, (Cint, Ptr{Cfloat}, Cint,
        Ptr{Cfloat}, Cint, Ptr{Cfloat}), N, x, incx, y, incy, P )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
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
    return unsafe_ref(a)[1] ,unsafe_ref(b)[1] ,unsafe_ref(c)[1] ,unsafe_ref(s)[1]
end


# 
# 
#   Returns: Void
function cblas_drotmg(b2::Real)
    d1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    d2 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    b1 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    P = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drotmg, :libgsl), Void, (Ptr{Cdouble}, Ptr{Cdouble},
        Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), d1, d2, b1, b2, P )
    return unsafe_ref(d1)[1] ,unsafe_ref(d2)[1] ,unsafe_ref(b1)[1] ,unsafe_ref(P)[1]
end
@vectorize_1arg Number cblas_drotmg


# 
# 
#   Returns: Void
function cblas_drot(N::Integer, incx::Integer, incy::Integer, c::Real, s::Real)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drot, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Cdouble, Cdouble), N, x, incx, y, incy, c, s )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_5arg Number cblas_drot


# 
# 
#   Returns: Void
function cblas_drotm{tA<:Real}(N::Integer, incx::Integer, incy::Integer, P::Ptr{tA})
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_drotm, :libgsl), Void, (Cint, Ptr{Cdouble}, Cint,
        Ptr{Cdouble}, Cint, Ptr{Cdouble}), N, x, incx, y, incy, P )
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end


# 
# 
#   Returns: Void
function cblas_sscal(N::Integer, alpha::Real, incx::Integer)
    x = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    ccall( (:cblas_sscal, :libgsl), Void, (Cint, Cfloat, Ptr{Cfloat},
        Cint), N, alpha, x, incx )
    return unsafe_ref(x)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number cblas_sscal


# 
# 
#   Returns: Void
function cblas_dscal(N::Integer, alpha::Real, incx::Integer)
    x = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:cblas_dscal, :libgsl), Void, (Cint, Cdouble, Ptr{Cdouble},
        Cint), N, alpha, x, incx )
    return unsafe_ref(x)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number cblas_dscal


# 
# 
#   Returns: Void
function cblas_cscal(N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_cscal, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zscal(N::Integer, alpha::Ptr{Void}, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_zscal, :libgsl), Void, (Cint, Ptr{Void}, Ptr{Void},
        Cint), N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_csscal(N::Integer, alpha::Real, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_csscal, :libgsl), Void, (Cint, Cfloat, Ptr{Void}, Cint),
        N, alpha, x, incx )
end


# 
# 
#   Returns: Void
function cblas_zdscal(N::Integer, alpha::Real, x::Ptr{Void}, incx::Integer)
    ccall( (:cblas_zdscal, :libgsl), Void, (Cint, Cdouble, Ptr{Void},
        Cint), N, alpha, x, incx )
end
