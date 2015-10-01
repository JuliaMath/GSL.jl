#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################################
# 7.26.4 Radial Mathieu Functions #
###################################
export sf_mathieu_Mc, sf_mathieu_Ms, sf_mathieu_Mc_array, sf_mathieu_Ms_array


# These routines compute the radial j-th kind Mathieu functions
# Mc_n^{(j)}(q,x) and  Ms_n^{(j)}(q,x) of order n.          The allowed values
# of j are 1 and 2.  The functions for j = 3,4 can be computed as  M_n^{(3)} =
# M_n^{(1)} + iM_n^{(2)} and  M_n^{(4)} = M_n^{(1)} - iM_n^{(2)}, where
# M_n^{(j)} = Mc_n^{(j)} or  Ms_n^{(j)}.
# 
#   Returns: Cint
function sf_mathieu_Mc(j::Integer, n::Integer, q::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_mathieu_Mc, libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), j, n, q, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number sf_mathieu_Mc


# These routines compute the radial j-th kind Mathieu functions
# Mc_n^{(j)}(q,x) and  Ms_n^{(j)}(q,x) of order n.          The allowed values
# of j are 1 and 2.  The functions for j = 3,4 can be computed as  M_n^{(3)} =
# M_n^{(1)} + iM_n^{(2)} and  M_n^{(4)} = M_n^{(1)} - iM_n^{(2)}, where
# M_n^{(j)} = Mc_n^{(j)} or  Ms_n^{(j)}.
# 
#   Returns: Cint
function sf_mathieu_Ms(j::Integer, n::Integer, q::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_mathieu_Ms, libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), j, n, q, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number sf_mathieu_Ms


# These routines compute a series of the radial Mathieu functions of kind j,
# with order from nmin to nmax inclusive, storing the results in the array
# result_array.
# 
#   Returns: Cint
function sf_mathieu_Mc_array(j::Integer, nmin::Integer, nmax::Integer, q::Real, x::Real)
    work = Ref{gsl_sf_mathieu_workspace}()
    result_array = Array(Cdouble, 1)
    errno = ccall( (:gsl_sf_mathieu_Mc_array, libgsl), Cint, (Cint, Cint,
        Cint, Cdouble, Cdouble, Ptr{gsl_sf_mathieu_workspace}, Cdouble), j,
        nmin, nmax, q, x, work, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(work), unsafe_load(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_5arg Number sf_mathieu_Mc_array


# These routines compute a series of the radial Mathieu functions of kind j,
# with order from nmin to nmax inclusive, storing the results in the array
# result_array.
# 
#   Returns: Cint
function sf_mathieu_Ms_array(j::Integer, nmin::Integer, nmax::Integer, q::Real, x::Real)
    work = Ref{gsl_sf_mathieu_workspace}()
    result_array = Array(Cdouble, 1)
    errno = ccall( (:gsl_sf_mathieu_Ms_array, libgsl), Cint, (Cint, Cint,
        Cint, Cdouble, Cdouble, Ptr{gsl_sf_mathieu_workspace}, Cdouble), j,
        nmin, nmax, q, x, work, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(work), unsafe_load(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_5arg Number sf_mathieu_Ms_array
