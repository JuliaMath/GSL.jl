#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.10 Debye Functions #
########################
export gsl_sf_debye_1, gsl_sf_debye_1_e, gsl_sf_debye_2, gsl_sf_debye_2_e,
       gsl_sf_debye_3, gsl_sf_debye_3_e, gsl_sf_debye_4, gsl_sf_debye_4_e,
       gsl_sf_debye_5, gsl_sf_debye_5_e, gsl_sf_debye_6, gsl_sf_debye_6_e




# These routines compute the first-order Debye function D_1(x) = (1/x) \int_0^x
# dt (t/(e^t - 1)).
# 
#   Returns: Cdouble
function gsl_sf_debye_1 (x::Cdouble)
    ccall( (:gsl_sf_debye_1, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the first-order Debye function D_1(x) = (1/x) \int_0^x
# dt (t/(e^t - 1)).
# 
#   Returns: Cint
function gsl_sf_debye_1_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_debye_1_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the second-order Debye function D_2(x) = (2/x^2)
# \int_0^x dt (t^2/(e^t - 1)).
# 
#   Returns: Cdouble
function gsl_sf_debye_2 (x::Cdouble)
    ccall( (:gsl_sf_debye_2, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the second-order Debye function D_2(x) = (2/x^2)
# \int_0^x dt (t^2/(e^t - 1)).
# 
#   Returns: Cint
function gsl_sf_debye_2_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_debye_2_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the third-order Debye function D_3(x) = (3/x^3)
# \int_0^x dt (t^3/(e^t - 1)).
# 
#   Returns: Cdouble
function gsl_sf_debye_3 (x::Cdouble)
    ccall( (:gsl_sf_debye_3, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the third-order Debye function D_3(x) = (3/x^3)
# \int_0^x dt (t^3/(e^t - 1)).
# 
#   Returns: Cint
function gsl_sf_debye_3_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_debye_3_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the fourth-order Debye function D_4(x) = (4/x^4)
# \int_0^x dt (t^4/(e^t - 1)).
# 
#   Returns: Cdouble
function gsl_sf_debye_4 (x::Cdouble)
    ccall( (:gsl_sf_debye_4, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the fourth-order Debye function D_4(x) = (4/x^4)
# \int_0^x dt (t^4/(e^t - 1)).
# 
#   Returns: Cint
function gsl_sf_debye_4_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_debye_4_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the fifth-order Debye function D_5(x) = (5/x^5)
# \int_0^x dt (t^5/(e^t - 1)).
# 
#   Returns: Cdouble
function gsl_sf_debye_5 (x::Cdouble)
    ccall( (:gsl_sf_debye_5, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the fifth-order Debye function D_5(x) = (5/x^5)
# \int_0^x dt (t^5/(e^t - 1)).
# 
#   Returns: Cint
function gsl_sf_debye_5_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_debye_5_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end


# These routines compute the sixth-order Debye function D_6(x) = (6/x^6)
# \int_0^x dt (t^6/(e^t - 1)).
# 
#   Returns: Cdouble
function gsl_sf_debye_6 (x::Cdouble)
    ccall( (:gsl_sf_debye_6, "libgsl"), Cdouble, (Cdouble, ), x )
end


# These routines compute the sixth-order Debye function D_6(x) = (6/x^6)
# \int_0^x dt (t^6/(e^t - 1)).
# 
#   Returns: Cint
function gsl_sf_debye_6_e (x::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_debye_6_e, "libgsl"), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
end
