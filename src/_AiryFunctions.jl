#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.4.1 Airy Functions #
########################
export gsl_sf_airy_Ai, gsl_sf_airy_Ai_e, gsl_sf_airy_Bi, gsl_sf_airy_Bi_e,
       gsl_sf_airy_Ai_scaled, gsl_sf_airy_Ai_scaled_e, gsl_sf_airy_Bi_scaled,
       gsl_sf_airy_Bi_scaled_e


# These routines compute the Airy function Ai(x) with an accuracy specified by
# mode.
# 
#   Returns: Cdouble
function gsl_sf_airy_Ai (x::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Ai, "libgsl"), Cdouble, (Cdouble, gsl_mode_t), x,
        mode )
end


# These routines compute the Airy function Ai(x) with an accuracy specified by
# mode.
# 
#   Returns: Cint
function gsl_sf_airy_Ai_e (x::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Ai_e, "libgsl"), Cint, (Cdouble, gsl_mode_t,
        Ptr{gsl_sf_result}), x, mode, result )
end


# These routines compute the Airy function Bi(x) with an accuracy specified by
# mode.
# 
#   Returns: Cdouble
function gsl_sf_airy_Bi (x::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Bi, "libgsl"), Cdouble, (Cdouble, gsl_mode_t), x,
        mode )
end


# These routines compute the Airy function Bi(x) with an accuracy specified by
# mode.
# 
#   Returns: Cint
function gsl_sf_airy_Bi_e (x::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Bi_e, "libgsl"), Cint, (Cdouble, gsl_mode_t,
        Ptr{gsl_sf_result}), x, mode, result )
end


# These routines compute a scaled version of the Airy function S_A(x) Ai(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
# 
#   {$\exp(+(2/3) x^{3/2})$} 
#   Returns: Cdouble
function gsl_sf_airy_Ai_scaled (x::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Ai_scaled, "libgsl"), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute a scaled version of the Airy function S_A(x) Ai(x).
# For x>0 the scaling factor S_A(x) is  \exp(+(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cint
function gsl_sf_airy_Ai_scaled_e (x::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Ai_scaled_e, "libgsl"), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
end


# These routines compute a scaled version of the Airy function S_B(x) Bi(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
# 
#   {$\exp(-(2/3) x^{3/2})$} 
#   Returns: Cdouble
function gsl_sf_airy_Bi_scaled (x::Cdouble, mode::gsl_mode_t)
    ccall( (:gsl_sf_airy_Bi_scaled, "libgsl"), Cdouble, (Cdouble,
        gsl_mode_t), x, mode )
end


# These routines compute a scaled version of the Airy function S_B(x) Bi(x).
# For x>0 the scaling factor S_B(x) is  exp(-(2/3) x^(3/2)), and is 1 for x<0.
# 
#   Returns: Cint
function gsl_sf_airy_Bi_scaled_e (x::Cdouble, mode::gsl_mode_t, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_airy_Bi_scaled_e, "libgsl"), Cint, (Cdouble,
        gsl_mode_t, Ptr{gsl_sf_result}), x, mode, result )
end