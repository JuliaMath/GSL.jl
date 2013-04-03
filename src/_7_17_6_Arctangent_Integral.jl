#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.17.6 Arctangent Integral #
##############################
export sf_atanint, sf_atanint_e


# These routines compute the Arctangent integral, which is defined as
# AtanInt(x) = \int_0^x dt \arctan(t)/t.
# 
#   Returns: Cdouble
function sf_atanint(x::Real)
    ccall( (:gsl_sf_atanint, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_atanint


# These routines compute the Arctangent integral, which is defined as
# AtanInt(x) = \int_0^x dt \arctan(t)/t.
# 
#   Returns: Cint
function sf_atanint_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_atanint_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end
@vectorize_1arg Number sf_atanint_e
