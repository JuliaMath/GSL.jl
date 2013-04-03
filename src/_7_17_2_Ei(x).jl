#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################
# 7.17.2 Ei(x) #
################
export sf_expint_Ei, sf_expint_Ei_e




# These routines compute the exponential integral  Ei(x),                 Ei(x)
# := - PV(\int_{-x}^\infty dt \exp(-t)/t)  where PV denotes the principal value
# of the integral.
# 
#   Returns: Cdouble
function sf_expint_Ei(x::Real)
    ccall( (:gsl_sf_expint_Ei, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_expint_Ei


# These routines compute the exponential integral  Ei(x),                 Ei(x)
# := - PV(\int_{-x}^\infty dt \exp(-t)/t)  where PV denotes the principal value
# of the integral.
# 
#   Returns: Cint
function sf_expint_Ei_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_expint_Ei_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number sf_expint_Ei_e
