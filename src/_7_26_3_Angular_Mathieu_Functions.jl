#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 7.26.3 Angular Mathieu Functions #
####################################
export gsl_sf_mathieu_ce, gsl_sf_mathieu_se, gsl_sf_mathieu_ce_array,
       gsl_sf_mathieu_se_array


# These routines compute the angular Mathieu functions ce_n(q,x) and se_n(q,x),
# respectively.
# 
#   Returns: Cint
function gsl_sf_mathieu_ce{gsl_int<:Integer}(n::gsl_int, q::Cdouble, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_ce, :libgsl), Cint, (Cint, Cdouble,
        Cdouble, Ptr{gsl_sf_result}), n, q, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute the angular Mathieu functions ce_n(q,x) and se_n(q,x),
# respectively.
# 
#   Returns: Cint
function gsl_sf_mathieu_se{gsl_int<:Integer}(n::gsl_int, q::Cdouble, x::Cdouble)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_se, :libgsl), Cint, (Cint, Cdouble,
        Cdouble, Ptr{gsl_sf_result}), n, q, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end


# These routines compute a series of the angular Mathieu functions ce_n(q,x)
# and se_n(q,x) of order n from nmin to nmax inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_ce_array{gsl_int<:Integer}(nmin::gsl_int, nmax::gsl_int, q::Cdouble, x::Cdouble, work::Ptr{Void})
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_ce_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble, Ptr{Void}, Cdouble), nmin, nmax, q, x, work,
        result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end


# These routines compute a series of the angular Mathieu functions ce_n(q,x)
# and se_n(q,x) of order n from nmin to nmax inclusive, storing the results in
# the array result_array.
# 
#   Returns: Cint
#XXX Unknown input type work::Ptr{gsl_sf_mathieu_workspace}
#XXX Coerced type for work::Ptr{Void}
function gsl_sf_mathieu_se_array{gsl_int<:Integer}(nmin::gsl_int, nmax::gsl_int, q::Cdouble, x::Cdouble, work::Ptr{Void})
    result_array = convert(Cdouble, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_sf_mathieu_se_array, :libgsl), Cint, (Cint,
        Cint, Cdouble, Cdouble, Ptr{Void}, Cdouble), nmin, nmax, q, x, work,
        result_array )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result_array)
end
