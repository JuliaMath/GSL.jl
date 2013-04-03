#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 7.14 Elliptic Functions (Jacobi) #
####################################
export sf_elljac_e


# This function computes the Jacobian elliptic functions sn(u|m), cn(u|m),
# dn(u|m) by descending Landen transformations.
# 
#   Returns: Cint
function sf_elljac_e(u::Real, m::Real)
    sn = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    cn = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    dn = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sf_elljac_e, :libgsl), Cint, (Cdouble, Cdouble,
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), u, m, sn, cn, dn )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(sn)[1] ,unsafe_ref(cn)[1] ,unsafe_ref(dn)[1]
end
@vectorize_2arg Number sf_elljac_e
