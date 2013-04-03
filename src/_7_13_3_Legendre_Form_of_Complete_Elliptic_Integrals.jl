#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.13.3 Legendre Form of Complete Elliptic Integrals #
#######################################################
export gsl_sf_ellint_Kcomp, gsl_sf_ellint_Kcomp_e, gsl_sf_ellint_Ecomp,
       gsl_sf_ellint_Ecomp_e, gsl_sf_ellint_Pcomp, gsl_sf_ellint_Pcomp_e


# These routines compute the complete elliptic integral K(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cdouble
function gsl_sf_ellint_Kcomp(k::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_Kcomp, :libgsl), Cdouble, (Cdouble, gsl_mode_t),
        k, mode )
end


# These routines compute the complete elliptic integral K(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cint
function gsl_sf_ellint_Kcomp_e(k::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_Kcomp_e, :libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), k, mode, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end


# These routines compute the complete elliptic integral E(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cdouble
function gsl_sf_ellint_Ecomp(k::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_Ecomp, :libgsl), Cdouble, (Cdouble, gsl_mode_t),
        k, mode )
end


# These routines compute the complete elliptic integral E(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cint
function gsl_sf_ellint_Ecomp_e(k::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_Ecomp_e, :libgsl), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), k, mode, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end


# These routines compute the complete elliptic integral \Pi(k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
#   Returns: Cdouble
function gsl_sf_ellint_Pcomp(k::Real, n::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_Pcomp, :libgsl), Cdouble, (Cdouble, Cdouble,
        gsl_mode_t), k, n, mode )
end


# These routines compute the complete elliptic integral \Pi(k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
#   Returns: Cint
function gsl_sf_ellint_Pcomp_e(k::Real, n::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_ellint_Pcomp_e, :libgsl), Cint, (Cdouble,
        Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), k, n, mode, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
