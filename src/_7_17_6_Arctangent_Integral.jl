#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.17.6 Arctangent Integral #
##############################
export gsl_sf_atanint, gsl_sf_atanint_e


# These routines compute the Arctangent integral, which is defined as
# AtanInt(x) = \int_0^x dt \arctan(t)/t.
# 
#   Returns: Cdouble
function gsl_sf_atanint(x::Cdouble)
    ccall( (:gsl_sf_atanint, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute the Arctangent integral, which is defined as
# AtanInt(x) = \int_0^x dt \arctan(t)/t.
# 
#   Returns: Cint
function gsl_sf_atanint_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_atanint_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
