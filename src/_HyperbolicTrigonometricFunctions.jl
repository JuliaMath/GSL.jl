#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 7.31.3 Hyperbolic Trigonometric Functions #
#############################################
export gsl_sf_lnsinh, gsl_sf_lnsinh_e, gsl_sf_lncosh, gsl_sf_lncosh_e


# These routines compute \log(\sinh(x)) for x > 0.
# 
#   Domain: x > 0 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_lnsinh (x::Cdouble)
    ccall( (:gsl_sf_lnsinh, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute \log(\sinh(x)) for x > 0.
# 
#   Returns: Cint
function gsl_sf_lnsinh_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_lnsinh_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute \log(\cosh(x)) for any x.
# 
#   Exceptional Return Values: none 
#   Returns: Cdouble
function gsl_sf_lncosh (x::Cdouble)
    ccall( (:gsl_sf_lncosh, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute \log(\cosh(x)) for any x.
# 
#   Returns: Cint
function gsl_sf_lncosh_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_lncosh_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end