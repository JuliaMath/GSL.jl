#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 7.31.4 Conversion Functions #
###############################
export sf_polar_to_rect, sf_rect_to_polar


# This function converts the polar coordinates (r,theta) to rectilinear
# coordinates (x,y), x = r\cos(\theta), y = r\sin(\theta).
# 
#   Returns: Cint
function sf_polar_to_rect(r::Real, theta::Real)
    x = Ref{gsl_sf_result}()
    y = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_polar_to_rect, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), r, theta, x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return x[], y[]
end
Compat.@dep_vectorize_2arg Number sf_polar_to_rect


# This function converts the rectilinear coordinates (x,y) to polar coordinates
# (r,theta), such that x = r\cos(\theta), y = r\sin(\theta).  The argument
# theta lies in the range [-\pi, \pi].
# 
#   Returns: Cint
function sf_rect_to_polar(x::Real, y::Real)
    r = Ref{gsl_sf_result}()
    theta = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_rect_to_polar, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), x, y, r, theta )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return r[], theta[]
end
Compat.@dep_vectorize_2arg Number sf_rect_to_polar
