#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 7.14 Elliptic Functions (Jacobi) #
####################################
export gsl_sf_elljac_e


# This function computes the Jacobian elliptic functions sn(u|m), cn(u|m),
# dn(u|m) by descending Landen transformations.
# 
#   Returns: Cint
function gsl_sf_elljac_e (u::Cdouble, m::Cdouble, sn::Ptr{Cdouble}, cn::Ptr{Cdouble}, dn::Ptr{Cdouble})
    ccall( (:gsl_sf_elljac_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), u, m, sn, cn, dn )
end
