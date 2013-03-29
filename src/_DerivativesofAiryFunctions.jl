#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#######################################
# 7.4.2 Derivatives of Airy Functions #
#######################################
export gsl_sf_airy_Ai_deriv, gsl_sf_airy_Ai_deriv_e, gsl_sf_airy_Bi_deriv,
       gsl_sf_airy_Bi_deriv_e, gsl_sf_airy_Ai_deriv_scaled,
       gsl_sf_airy_Ai_deriv_scaled_e, gsl_sf_airy_Bi_deriv_scaled,
       gsl_sf_airy_Bi_deriv_scaled_e


# These routines compute the Airy function derivative Ai'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Ai_deriv (x::Cdouble, mode::Void)
    ccall( (:gsl_sf_airy_Ai_deriv, "libgsl"), Cdouble, (Cdouble, Void), x,
        mode )
end


# These routines compute the Airy function derivative Ai'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Ai_deriv_e (x::Cdouble, mode::Void, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Ai_deriv_e, "libgsl"), Cint, (Cdouble, Void,
        Ptr{gsl_sf_result}), x, mode, result )
end


# These routines compute the Airy function derivative Bi'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Bi_deriv (x::Cdouble, mode::Void)
    ccall( (:gsl_sf_airy_Bi_deriv, "libgsl"), Cdouble, (Cdouble, Void), x,
        mode )
end


# These routines compute the Airy function derivative Bi'(x) with an accuracy
# specified by mode.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Bi_deriv_e (x::Cdouble, mode::Void, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Bi_deriv_e, "libgsl"), Cint, (Cdouble, Void,
        Ptr{gsl_sf_result}), x, mode, result )
end


# These routines compute the scaled Airy function derivative S_A(x) Ai'(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Ai_deriv_scaled (x::Cdouble, mode::Void)
    ccall( (:gsl_sf_airy_Ai_deriv_scaled, "libgsl"), Cdouble, (Cdouble,
        Void), x, mode )
end


# These routines compute the scaled Airy function derivative S_A(x) Ai'(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Ai_deriv_scaled_e (x::Cdouble, mode::Void, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Ai_deriv_scaled_e, "libgsl"), Cint, (Cdouble,
        Void, Ptr{gsl_sf_result}), x, mode, result )
end


# These routines compute the scaled Airy function derivative S_B(x) Bi'(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cdouble
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Bi_deriv_scaled (x::Cdouble, mode::Void)
    ccall( (:gsl_sf_airy_Bi_deriv_scaled, "libgsl"), Cdouble, (Cdouble,
        Void), x, mode )
end


# These routines compute the scaled Airy function derivative S_B(x) Bi'(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cint
#XXX Unknown input type mode::gsl_mode_t
#XXX Coerced type for mode::Void
function gsl_sf_airy_Bi_deriv_scaled_e (x::Cdouble, mode::Void, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Bi_deriv_scaled_e, "libgsl"), Cint, (Cdouble,
        Void, Ptr{gsl_sf_result}), x, mode, result )
end
