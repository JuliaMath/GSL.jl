#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################
# 7.17.5 Trigonometric Integrals #
##################################
export sf_Si, sf_Si_e, sf_Ci, sf_Ci_e


# These routines compute the Sine integral  Si(x) = \int_0^x dt \sin(t)/t.
# 
#   Returns: Cdouble
function sf_Si(x::Real)
    ccall( (:gsl_sf_Si, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_Si


# These routines compute the Sine integral  Si(x) = \int_0^x dt \sin(t)/t.
# 
#   Returns: Cint
function sf_Si_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_Si_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_Si_e


# These routines compute the Cosine integral  Ci(x) = -\int_x^\infty dt
# \cos(t)/t for x > 0.
# 
#   Returns: Cdouble
function sf_Ci(x::Real)
    ccall( (:gsl_sf_Ci, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_Ci


# These routines compute the Cosine integral  Ci(x) = -\int_x^\infty dt
# \cos(t)/t for x > 0.
# 
#   Returns: Cint
function sf_Ci_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_Ci_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_Ci_e
