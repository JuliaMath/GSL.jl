#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 7.26.3 Angular Mathieu Functions #
####################################
export sf_mathieu_ce, sf_mathieu_se, sf_mathieu_ce_array, sf_mathieu_se_array


# These routines compute the angular Mathieu functions ce_n(q,x) and se_n(q,x),
# respectively.
# 
#   Returns: Cint
function sf_mathieu_ce(n::Integer, q::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_mathieu_ce, :libgsl), Cint, (Cint, Cdouble,
        Cdouble, Ptr{gsl_sf_result}), n, q, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number sf_mathieu_ce


# These routines compute the angular Mathieu functions ce_n(q,x) and se_n(q,x),
# respectively.
# 
#   Returns: Cint
function sf_mathieu_se(n::Integer, q::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_mathieu_se, :libgsl), Cint, (Cint, Cdouble,
        Cdouble, Ptr{gsl_sf_result}), n, q, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number sf_mathieu_se


# These routines compute a series of the angular Mathieu functions ce_n(q,x)
# and se_n(q,x) of order n from nmin to nmax inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
function sf_mathieu_ce_array(nmin::Integer, nmax::Integer, q::Real, x::Real)
    work = convert(Ptr{gsl_sf_mathieu_workspace}, Array(gsl_sf_mathieu_workspace, 1))
    result_array = Array(Cdouble, 1)
    errno = ccall( (:gsl_sf_mathieu_ce_array, :libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_mathieu_workspace}, Cdouble), nmin, nmax,
        q, x, work, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(work) ,unsafe_ref(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number sf_mathieu_ce_array


# These routines compute a series of the angular Mathieu functions ce_n(q,x)
# and se_n(q,x) of order n from nmin to nmax inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
function sf_mathieu_se_array(nmin::Integer, nmax::Integer, q::Real, x::Real)
    work = convert(Ptr{gsl_sf_mathieu_workspace}, Array(gsl_sf_mathieu_workspace, 1))
    result_array = Array(Cdouble, 1)
    errno = ccall( (:gsl_sf_mathieu_se_array, :libgsl), Cint, (Cint, Cint,
        Cdouble, Cdouble, Ptr{gsl_sf_mathieu_workspace}, Cdouble), nmin, nmax,
        q, x, work, result_array )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(work) ,unsafe_ref(result_array)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number sf_mathieu_se_array
