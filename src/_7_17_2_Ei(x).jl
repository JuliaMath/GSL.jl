#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################
# 7.17.2 Ei(x) #
################
export gsl_sf_expint_Ei, gsl_sf_expint_Ei_e




# These routines compute the exponential integral  Ei(x),                 Ei(x)
# := - PV(\int_{-x}^\infty dt \exp(-t)/t)  where PV denotes the principal value
# of the integral.
# 
#   Returns: Cdouble
function gsl_sf_expint_Ei(x::Cdouble)
    ccall( (:gsl_sf_expint_Ei, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the exponential integral  Ei(x),                 Ei(x)
# := - PV(\int_{-x}^\infty dt \exp(-t)/t)  where PV denotes the principal value
# of the integral.
# 
#   Returns: Cint
function gsl_sf_expint_Ei_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_expint_Ei_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
