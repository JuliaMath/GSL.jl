#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.31.4 Conversion Functions #
###############################
export gsl_sf_polar_to_rect, gsl_sf_rect_to_polar


# This function converts the polar coordinates (r,theta) to rectilinear
# coordinates (x,y), x = r\cos(\theta), y = r\sin(\theta).
# 
#   Returns: Cint
function gsl_sf_polar_to_rect (r::Cdouble, theta::Cdouble, x::Ptr{gsl_sf_result}, y::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_polar_to_rect, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), r, theta, x, y )
end


# This function converts the rectilinear coordinates (x,y) to polar coordinates
# (r,theta), such that x = r\cos(\theta), y = r\sin(\theta).  The argument
# theta lies in the range [-\pi, \pi].
# 
#   Returns: Cint
function gsl_sf_rect_to_polar (x::Cdouble, y::Cdouble, r::Ptr{gsl_sf_result}, theta::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_rect_to_polar, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}, Ptr{gsl_sf_result}), x, y, r, theta )
end
