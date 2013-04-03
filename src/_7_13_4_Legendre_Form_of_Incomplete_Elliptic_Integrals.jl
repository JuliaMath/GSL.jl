#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################################
# 7.13.4 Legendre Form of Incomplete Elliptic Integrals #
#########################################################
export sf_ellint_F, sf_ellint_F_e, sf_ellint_E, sf_ellint_E_e, sf_ellint_P,
       sf_ellint_P_e, sf_ellint_D, sf_ellint_D_e




# These routines compute the incomplete elliptic integral F(\phi,k) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameter m = k^2.
# 
#   Returns: Cdouble
function sf_ellint_F(phi::Real, k::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_F, :libgsl), Cdouble, (Cdouble, Cdouble,
        gsl_mode_t), phi, k, mode )
end


# These routines compute the incomplete elliptic integral F(\phi,k) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameter m = k^2.
# 
#   Returns: Cint
function sf_ellint_F_e(phi::Real, k::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_ellint_F_e, :libgsl), Cint, (Cdouble, Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), phi, k, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end


# These routines compute the incomplete elliptic integral E(\phi,k) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameter m = k^2.
# 
#   Returns: Cdouble
function sf_ellint_E(phi::Real, k::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_E, :libgsl), Cdouble, (Cdouble, Cdouble,
        gsl_mode_t), phi, k, mode )
end


# These routines compute the incomplete elliptic integral E(\phi,k) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameter m = k^2.
# 
#   Returns: Cint
function sf_ellint_E_e(phi::Real, k::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_ellint_E_e, :libgsl), Cint, (Cdouble, Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), phi, k, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end


# These routines compute the incomplete elliptic integral \Pi(\phi,k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
#   Returns: Cdouble
function sf_ellint_P(phi::Real, k::Real, n::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_P, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t), phi, k, n, mode )
end


# These routines compute the incomplete elliptic integral \Pi(\phi,k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
#   Returns: Cint
function sf_ellint_P_e(phi::Real, k::Real, n::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_ellint_P_e, :libgsl), Cint, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), phi, k, n, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end


# These functions compute the incomplete elliptic integral D(\phi,k) which is
# defined through the Carlson form RD(x,y,z) by the following relation,
# D(\phi,k,n) = (1/3)(\sin(\phi))^3 RD (1-\sin^2(\phi), 1-k^2 \sin^2(\phi), 1).
# The argument n is not used and will be removed in a future release.
# 
#   Returns: Cdouble
function sf_ellint_D(phi::Real, k::Real, n::Real, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_D, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t), phi, k, n, mode )
end


# These functions compute the incomplete elliptic integral D(\phi,k) which is
# defined through the Carlson form RD(x,y,z) by the following relation,
# D(\phi,k,n) = (1/3)(\sin(\phi))^3 RD (1-\sin^2(\phi), 1-k^2 \sin^2(\phi), 1).
# The argument n is not used and will be removed in a future release.
# 
#   Returns: Cint
function sf_ellint_D_e(phi::Real, k::Real, n::Real, mode::gsl_mode_t)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_ellint_D_e, :libgsl), Cint, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), phi, k, n, mode, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)
end
