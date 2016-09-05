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
    sn = Ref{Cdouble}()
    cn = Ref{Cdouble}()
    dn = Ref{Cdouble}()
    errno = ccall( (:gsl_sf_elljac_e, libgsl), Cint, (Cdouble, Cdouble,
        Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), u, m, sn, cn, dn )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return sn[], cn[], dn[]
end
Compat.@dep_vectorize_2arg Number sf_elljac_e
