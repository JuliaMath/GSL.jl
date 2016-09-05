#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.23 Lambert W Functions #
############################
export sf_lambert_W0, sf_lambert_W0_e, sf_lambert_Wm1, sf_lambert_Wm1_e


# These compute the principal branch of the Lambert W function, W_0(x).
# 
#   Returns: Cdouble
function sf_lambert_W0(x::Real)
    ccall( (:gsl_sf_lambert_W0, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_lambert_W0


# These compute the principal branch of the Lambert W function, W_0(x).
# 
#   Returns: Cint
function sf_lambert_W0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lambert_W0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_lambert_W0_e


# These compute the secondary real-valued branch of the Lambert W function,
# W_{-1}(x).
# 
#   Returns: Cdouble
function sf_lambert_Wm1(x::Real)
    ccall( (:gsl_sf_lambert_Wm1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_lambert_Wm1


# These compute the secondary real-valued branch of the Lambert W function,
# W_{-1}(x).
# 
#   Returns: Cint
function sf_lambert_Wm1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lambert_Wm1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_lambert_Wm1_e
