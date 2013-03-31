#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 7.31.3 Hyperbolic Trigonometric Functions #
#############################################
export gsl_sf_lnsinh, gsl_sf_lnsinh_e, gsl_sf_lncosh, gsl_sf_lncosh_e


# These routines compute \log(\sinh(x)) for x > 0.
# 
#   Returns: Cdouble
function gsl_sf_lnsinh(x::Cdouble)
    ccall( (:gsl_sf_lnsinh, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute \log(\sinh(x)) for x > 0.
# 
#   Returns: Cint
function gsl_sf_lnsinh_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_lnsinh_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute \log(\cosh(x)) for any x.
# 
#   Returns: Cdouble
function gsl_sf_lncosh(x::Cdouble)
    ccall( (:gsl_sf_lncosh, :libgsl), Cdouble, (Cdouble, ), x )
end


# These routines compute \log(\cosh(x)) for any x.
# 
#   Returns: Cint
function gsl_sf_lncosh_e(x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_lncosh_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
