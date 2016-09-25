#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 7.17.4 Ei_3(x) #
##################
export sf_expint_3, sf_expint_3_e


# These routines compute the third-order exponential integral  Ei_3(x) =
# \int_0^xdt \exp(-t^3) for  x >= 0.
# 
#   Returns: Cdouble
function sf_expint_3(x::Real)
    ccall( (:gsl_sf_expint_3, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_expint_3


# These routines compute the third-order exponential integral  Ei_3(x) =
# \int_0^xdt \exp(-t^3) for  x >= 0.
# 
#   Returns: Cint
function sf_expint_3_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_expint_3_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_expint_3_e
