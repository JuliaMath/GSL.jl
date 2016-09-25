#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################################
# 7.31.3 Hyperbolic Trigonometric Functions #
#############################################
export sf_lnsinh, sf_lnsinh_e, sf_lncosh, sf_lncosh_e


# These routines compute \log(\sinh(x)) for x > 0.
# 
#   Returns: Cdouble
function sf_lnsinh(x::Real)
    ccall( (:gsl_sf_lnsinh, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_lnsinh


# These routines compute \log(\sinh(x)) for x > 0.
# 
#   Returns: Cint
function sf_lnsinh_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lnsinh_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_lnsinh_e


# These routines compute \log(\cosh(x)) for any x.
# 
#   Returns: Cdouble
function sf_lncosh(x::Real)
    ccall( (:gsl_sf_lncosh, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_lncosh


# These routines compute \log(\cosh(x)) for any x.
# 
#   Returns: Cint
function sf_lncosh_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lncosh_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_lncosh_e
