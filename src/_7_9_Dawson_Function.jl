#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.9 Dawson Function #
#######################
export sf_dawson, sf_dawson_e


# These routines compute the value of Dawson's integral for x.
# 
#   Returns: Cdouble
function sf_dawson(x::Real)
    ccall( (:gsl_sf_dawson, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_dawson


# These routines compute the value of Dawson's integral for x.
# 
#   Returns: Cint
function sf_dawson_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_dawson_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_dawson_e
