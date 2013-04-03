#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.32.3 Hurwitz Zeta Function #
################################
export gsl_sf_hzeta, gsl_sf_hzeta_e


# These routines compute the Hurwitz zeta function \zeta(s,q) for s > 1, q > 0.
# 
#   Returns: Cdouble
function gsl_sf_hzeta(s::Real, q::Real)
    ccall( (:gsl_sf_hzeta, :libgsl), Cdouble, (Cdouble, Cdouble), s, q )
end
@vectorize_2arg Number gsl_sf_hzeta


# These routines compute the Hurwitz zeta function \zeta(s,q) for s > 1, q > 0.
# 
#   Returns: Cint
function gsl_sf_hzeta_e(s::Real, q::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hzeta_e, :libgsl), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), s, q, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_hzeta_e
