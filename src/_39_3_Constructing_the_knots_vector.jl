#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 39.3 Constructing the knots vector #
######################################
export bspline_knots, bspline_knots_uniform


# This function computes the knots associated with the given breakpoints and
# stores them internally in w->knots.
# 
#   Returns: Cint
function bspline_knots(breakpts::Ptr{gsl_vector})
    w = convert(Ptr{gsl_bspline_workspace}, Array(gsl_bspline_workspace, 1))
    errno = ccall( (:gsl_bspline_knots, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_bspline_workspace}), breakpts, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(w)[1]
end


# This function assumes uniformly spaced breakpoints on [a,b] and constructs
# the corresponding knot vector using the previously specified nbreak
# parameter. The knots are stored in w->knots.
# 
#   Returns: Cint
function bspline_knots_uniform(a::Real, b::Real)
    w = convert(Ptr{gsl_bspline_workspace}, Array(gsl_bspline_workspace, 1))
    errno = ccall( (:gsl_bspline_knots_uniform, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_bspline_workspace}), a, b, w )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(w)[1]
end
@vectorize_2arg Number bspline_knots_uniform
