#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 7.26.4 Radial Mathieu Functions #
###################################
export gsl_sf_mathieu_Mc, gsl_sf_mathieu_Ms, gsl_sf_mathieu_Mc_array,
       gsl_sf_mathieu_Ms_array


# These routines compute the radial j-th kind Mathieu functions
# Mc_n^{(j)}(q,x) and  Ms_n^{(j)}(q,x) of order n.          The allowed values
# of j are 1 and 2.  The functions for j = 3,4 can be computed as  M_n^{(3)} =
# M_n^{(1)} + iM_n^{(2)} and  M_n^{(4)} = M_n^{(1)} - iM_n^{(2)}, where
# M_n^{(j)} = Mc_n^{(j)} or  Ms_n^{(j)}.
# 
#   Returns: Cint
function gsl_sf_mathieu_Mc{gsl_int<:Integer}(j::gsl_int, n::gsl_int, q::Cdouble, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_Mc, :libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), j, n, q, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the radial j-th kind Mathieu functions
# Mc_n^{(j)}(q,x) and  Ms_n^{(j)}(q,x) of order n.          The allowed values
# of j are 1 and 2.  The functions for j = 3,4 can be computed as  M_n^{(3)} =
# M_n^{(1)} + iM_n^{(2)} and  M_n^{(4)} = M_n^{(1)} - iM_n^{(2)}, where
# M_n^{(j)} = Mc_n^{(j)} or  Ms_n^{(j)}.
# 
#   Returns: Cint
function gsl_sf_mathieu_Ms{gsl_int<:Integer}(j::gsl_int, n::gsl_int, q::Cdouble, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_Ms, :libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), j, n, q, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute a series of the radial Mathieu functions of kind j,
# with order from nmin to nmax inclusive, storing the results in the array
# result_array.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_Mc_array{gsl_int<:Integer}(j::gsl_int, nmin::gsl_int, nmax::gsl_int, q::Cdouble, x::Cdouble, work::Ptr{Void})
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_Mc_array, :libgsl), Cint, (Cint,
        Cint, Cint, Cdouble, Cdouble, Ptr{Void}, Cdouble), j, nmin, nmax, q, x,
        work, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute a series of the radial Mathieu functions of kind j,
# with order from nmin to nmax inclusive, storing the results in the array
# result_array.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_Ms_array{gsl_int<:Integer}(j::gsl_int, nmin::gsl_int, nmax::gsl_int, q::Cdouble, x::Cdouble, work::Ptr{Void})
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_Ms_array, :libgsl), Cint, (Cint,
        Cint, Cint, Cdouble, Cdouble, Ptr{Void}, Cdouble), j, nmin, nmax, q, x,
        work, result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end
