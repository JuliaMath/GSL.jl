#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################
# 7.32.4 Eta Function #
#######################
export gsl_sf_eta_int, gsl_sf_eta_int_e, gsl_sf_eta, gsl_sf_eta_e


# These routines compute the eta function \eta(n) for integer n.
# 
#   Returns: Cdouble
function gsl_sf_eta_int(n::Integer)
    ccall( (:gsl_sf_eta_int, :libgsl), Cdouble, (Cint, ), n )
end
@vectorize_1arg Number gsl_sf_eta_int


# These routines compute the eta function \eta(n) for integer n.
# 
#   Returns: Cint
function gsl_sf_eta_int_e(n::Integer)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_eta_int_e, :libgsl), Cint, (Cint,
        Ptr{gsl_sf_result}), n, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_eta_int_e


# These routines compute the eta function \eta(s) for arbitrary s.
# 
#   Returns: Cdouble
function gsl_sf_eta(s::Real)
    ccall( (:gsl_sf_eta, :libgsl), Cdouble, (Cdouble, ), s )
end
@vectorize_1arg Number gsl_sf_eta


# These routines compute the eta function \eta(s) for arbitrary s.
# 
#   Returns: Cint
function gsl_sf_eta_e(s::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_eta_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), s, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_1arg Number gsl_sf_eta_e
