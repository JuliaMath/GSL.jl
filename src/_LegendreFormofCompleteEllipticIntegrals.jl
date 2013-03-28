#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################################
# 7.13.3 Legendre Form of Complete Elliptic Integrals #
#######################################################
export gsl_sf_ellint_Kcomp, gsl_sf_ellint_Kcomp_e, gsl_sf_ellint_Ecomp,
       gsl_sf_ellint_Ecomp_e, gsl_sf_ellint_Pcomp, gsl_sf_ellint_Pcomp_e


### Function uses unknown type; disabled
### # These routines compute the complete elliptic integral K(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
### #   Exceptional Return Values:  GSL_EDOM 
### #   Returns: Cdouble
### #XXX Unknown input type mode::gsl_mode_t
### function gsl_sf_ellint_Kcomp (k::Cdouble, mode::gsl_mode_t)
###     ccall( (:gsl_sf_ellint_Kcomp, "libgsl"), Cdouble, (Cdouble,
###         gsl_mode_t), k, mode )
### end


### Function uses unknown type; disabled
### # These routines compute the complete elliptic integral K(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
### #   Returns: Cint
### #XXX Unknown input type mode::gsl_mode_t
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_ellint_Kcomp_e (k::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_ellint_Kcomp_e, "libgsl"), Cint, (Cdouble, gsl_mode_t,
###         Ptr{gsl_sf_result}), k, mode, result )
### end


### Function uses unknown type; disabled
### # These routines compute the complete elliptic integral E(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
### #   Exceptional Return Values:  GSL_EDOM 
### #   Returns: Cdouble
### #XXX Unknown input type mode::gsl_mode_t
### function gsl_sf_ellint_Ecomp (k::Cdouble, mode::gsl_mode_t)
###     ccall( (:gsl_sf_ellint_Ecomp, "libgsl"), Cdouble, (Cdouble,
###         gsl_mode_t), k, mode )
### end


### Function uses unknown type; disabled
### # These routines compute the complete elliptic integral E(k) to the accuracy
# specified by the mode variable mode.  Note that Abramowitz & Stegun define
# this function in terms of the parameter m = k^2.
# 
### #   Returns: Cint
### #XXX Unknown input type mode::gsl_mode_t
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_ellint_Ecomp_e (k::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_ellint_Ecomp_e, "libgsl"), Cint, (Cdouble, gsl_mode_t,
###         Ptr{gsl_sf_result}), k, mode, result )
### end


### Function uses unknown type; disabled
### # These routines compute the complete elliptic integral \Pi(k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
### #   Exceptional Return Values:  GSL_EDOM 
### #   Returns: Cdouble
### #XXX Unknown input type mode::gsl_mode_t
### function gsl_sf_ellint_Pcomp (k::Cdouble, n::Cdouble, mode::gsl_mode_t)
###     ccall( (:gsl_sf_ellint_Pcomp, "libgsl"), Cdouble, (Cdouble, Cdouble,
###         gsl_mode_t), k, n, mode )
### end


### Function uses unknown type; disabled
### # These routines compute the complete elliptic integral \Pi(k,n) to the
# accuracy specified by the mode variable mode.  Note that Abramowitz & Stegun
# define this function in terms of the parameters m = k^2 and \sin^2(\alpha) =
# k^2, with the change of sign n \to -n.
# 
### #   Returns: Cint
### #XXX Unknown input type mode::gsl_mode_t
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_ellint_Pcomp_e (k::Cdouble, n::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_ellint_Pcomp_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         gsl_mode_t, Ptr{gsl_sf_result}), k, n, mode, result )
### end