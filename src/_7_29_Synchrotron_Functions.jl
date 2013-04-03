#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 7.29 Synchrotron Functions #
##############################
export gsl_sf_synchrotron_1, gsl_sf_synchrotron_1_e, gsl_sf_synchrotron_2,
       gsl_sf_synchrotron_2_e


# These routines compute the first synchrotron function  x \int_x^\infty dt
# K_{5/3}(t) for  x >= 0.
# 
#   Returns: Cdouble
function gsl_sf_synchrotron_1(x::Real)
    ccall( (:gsl_sf_synchrotron_1, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_synchrotron_1


# These routines compute the first synchrotron function  x \int_x^\infty dt
# K_{5/3}(t) for  x >= 0.
# 
#   Returns: Cint
function gsl_sf_synchrotron_1_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_synchrotron_1_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_synchrotron_1_e


# These routines compute the second synchrotron function  x K_{2/3}(x) for  x
# >= 0.
# 
#   Returns: Cdouble
function gsl_sf_synchrotron_2(x::Real)
    ccall( (:gsl_sf_synchrotron_2, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number gsl_sf_synchrotron_2


# These routines compute the second synchrotron function  x K_{2/3}(x) for  x
# >= 0.
# 
#   Returns: Cint
function gsl_sf_synchrotron_2_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_synchrotron_2_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_synchrotron_2_e
