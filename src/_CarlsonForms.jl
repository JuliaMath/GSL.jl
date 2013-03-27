#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.13.5 Carlson Forms #
########################
export gsl_sf_ellint_RC, gsl_sf_ellint_RC_e, gsl_sf_ellint_RD,
       gsl_sf_ellint_RD_e, gsl_sf_ellint_RF, gsl_sf_ellint_RF_e,
       gsl_sf_ellint_RJ, gsl_sf_ellint_RJ_e


# These routines compute the incomplete elliptic integral RC(x,y) to the
# accuracy specified by the mode variable mode.
# 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_ellint_RC (x::Cdouble, y::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_RC, "libgsl"), Cdouble, (Cdouble, Cdouble,
        gsl_mode_t), x, y, mode )
end


# These routines compute the incomplete elliptic integral RC(x,y) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
function gsl_sf_ellint_RC_e (x::Cdouble, y::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_ellint_RC_e, "libgsl"), Cint, (Cdouble, Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, y, mode, result )
end


# These routines compute the incomplete elliptic integral RD(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_ellint_RD (x::Cdouble, y::Cdouble, z::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_RD, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t), x, y, z, mode )
end


# These routines compute the incomplete elliptic integral RD(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
function gsl_sf_ellint_RD_e (x::Cdouble, y::Cdouble, z::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_ellint_RD_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), x, y, z, mode, result )
end


# These routines compute the incomplete elliptic integral RF(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_ellint_RF (x::Cdouble, y::Cdouble, z::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_RF, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t), x, y, z, mode )
end


# These routines compute the incomplete elliptic integral RF(x,y,z) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
function gsl_sf_ellint_RF_e (x::Cdouble, y::Cdouble, z::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_ellint_RF_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), x, y, z, mode, result )
end


# These routines compute the incomplete elliptic integral RJ(x,y,z,p) to the
# accuracy specified by the mode variable mode.
# 
#   Exceptional Return Values: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_ellint_RJ (x::Cdouble, y::Cdouble, z::Cdouble, p::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_ellint_RJ, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble, Cdouble, gsl_mode_t), x, y, z, p, mode )
end


# These routines compute the incomplete elliptic integral RJ(x,y,z,p) to the
# accuracy specified by the mode variable mode.
# 
#   Returns: Cint
function gsl_sf_ellint_RJ_e (x::Cdouble, y::Cdouble, z::Cdouble, p::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_ellint_RJ_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Cdouble, Cdouble, gsl_mode_t, Ptr{gsl_sf_result}), x, y, z, p, mode,
        result )
end