#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.29 Synchrotron Functions #
##############################
export sf_synchrotron_1, sf_synchrotron_1_e, sf_synchrotron_2,
       sf_synchrotron_2_e


# These routines compute the first synchrotron function  x \int_x^\infty dt
# K_{5/3}(t) for  x >= 0.
# 
#   Returns: Cdouble
function sf_synchrotron_1(x::Real)
    ccall( (:gsl_sf_synchrotron_1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_synchrotron_1


# These routines compute the first synchrotron function  x \int_x^\infty dt
# K_{5/3}(t) for  x >= 0.
# 
#   Returns: Cint
function sf_synchrotron_1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_synchrotron_1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_synchrotron_1_e


# These routines compute the second synchrotron function  x K_{2/3}(x) for  x
# >= 0.
# 
#   Returns: Cdouble
function sf_synchrotron_2(x::Real)
    ccall( (:gsl_sf_synchrotron_2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_synchrotron_2


# These routines compute the second synchrotron function  x K_{2/3}(x) for  x
# >= 0.
# 
#   Returns: Cint
function sf_synchrotron_2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_synchrotron_2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_synchrotron_2_e
