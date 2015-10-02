#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.13.3 Legendre Form of Complete Elliptic Integrals #
#######################################################
export sf_ellint_Kcomp, sf_ellint_Kcomp_e, sf_ellint_Ecomp, sf_ellint_Ecomp_e,
       sf_ellint_Pcomp, sf_ellint_Pcomp_e


# These routines compute the complete elliptic integral K(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cdouble
function sf_ellint_Kcomp(k::Real, mode::Integer)
    ccall( (:gsl_sf_ellint_Kcomp, libgsl), Cdouble, (Cdouble, gsl_mode_t),
        k, mode )
end


# These routines compute the complete elliptic integral K(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cint
function sf_ellint_Kcomp_e(k::Real, mode::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_ellint_Kcomp_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ref{gsl_sf_result}), k, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These routines compute the complete elliptic integral E(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cdouble
function sf_ellint_Ecomp(k::Real, mode::Integer)
    ccall( (:gsl_sf_ellint_Ecomp, libgsl), Cdouble, (Cdouble, gsl_mode_t),
        k, mode )
end


# These routines compute the complete elliptic integral E(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
#   Returns: Cint
function sf_ellint_Ecomp_e(k::Real, mode::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_ellint_Ecomp_e, libgsl), Cint, (Cdouble,
        gsl_mode_t, Ref{gsl_sf_result}), k, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These routines compute the complete elliptic integral \Pi(k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
#   Returns: Cdouble
function sf_ellint_Pcomp(k::Real, n::Real, mode::Integer)
    ccall( (:gsl_sf_ellint_Pcomp, libgsl), Cdouble, (Cdouble, Cdouble,
        gsl_mode_t), k, n, mode )
end


# These routines compute the complete elliptic integral \Pi(k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
#   Returns: Cint
function sf_ellint_Pcomp_e(k::Real, n::Real, mode::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_ellint_Pcomp_e, libgsl), Cint, (Cdouble,
        Cdouble, gsl_mode_t, Ref{gsl_sf_result}), k, n, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
