#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################
# 7.31.5 Restriction Functions #
################################
export sf_angle_restrict_symm, sf_angle_restrict_symm_e, sf_angle_restrict_pos,
       sf_angle_restrict_pos_e


# These routines force the angle theta to lie in the range (-\pi,\pi].
# Note that the mathematical value of \pi is slightly greater than M_PI, so the
# machine numbers M_PI and -M_PI are included in the range.
# 
#   Returns: Cdouble
function sf_angle_restrict_symm(theta::Real)
    ccall( (:gsl_sf_angle_restrict_symm, :libgsl), Cdouble, (Cdouble, ),
        theta )
end
@vectorize_1arg Number sf_angle_restrict_symm


# These routines force the angle theta to lie in the range (-\pi,\pi].
# Note that the mathematical value of \pi is slightly greater than M_PI, so the
# machine numbers M_PI and -M_PI are included in the range.
# 
#   Returns: Cint
function sf_angle_restrict_symm_e()
    theta = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sf_angle_restrict_symm_e, :libgsl), Cint,
        (Ptr{Cdouble}, ), theta )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(theta)
end


# These routines force the angle theta to lie in the range [0, 2\pi).
# Note that the mathematical value of 2\pi is slightly greater than 2*M_PI, so
# the machine number 2*M_PI is included in the range.
# 
#   Returns: Cdouble
function sf_angle_restrict_pos(theta::Real)
    ccall( (:gsl_sf_angle_restrict_pos, :libgsl), Cdouble, (Cdouble, ),
        theta )
end
@vectorize_1arg Number sf_angle_restrict_pos


# These routines force the angle theta to lie in the range [0, 2\pi).
# Note that the mathematical value of 2\pi is slightly greater than 2*M_PI, so
# the machine number 2*M_PI is included in the range.
# 
#   Returns: Cint
function sf_angle_restrict_pos_e()
    theta = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_sf_angle_restrict_pos_e, :libgsl), Cint,
        (Ptr{Cdouble}, ), theta )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(theta)
end
