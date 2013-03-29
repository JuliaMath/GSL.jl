#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################################################
# 7.24.4 Radial Functions for Hyperbolic Space #
################################################
export gsl_sf_legendre_H3d_0, gsl_sf_legendre_H3d_0_e, gsl_sf_legendre_H3d_1,
       gsl_sf_legendre_H3d_1_e, gsl_sf_legendre_H3d, gsl_sf_legendre_H3d_e,
       gsl_sf_legendre_H3d_array


# These routines compute the zeroth radial eigenfunction of the Laplacian on
# the 3-dimensional hyperbolic space,  L^{H3d}_0(\lambda,\eta) :=
# \sin(\lambda\eta)/(\lambda\sinh(\eta)) for  \eta >= 0.  In the flat limit
# this takes the form  L^{H3d}_0(\lambda,\eta) = j_0(\lambda\eta).
# 
#   Returns: Cdouble
function gsl_sf_legendre_H3d_0 (lambda::Cdouble, eta::Cdouble)
    ccall( (:gsl_sf_legendre_H3d_0, "libgsl"), Cdouble, (Cdouble, Cdouble),
        lambda, eta )
end


# These routines compute the zeroth radial eigenfunction of the Laplacian on
# the 3-dimensional hyperbolic space,  L^{H3d}_0(\lambda,\eta) :=
# \sin(\lambda\eta)/(\lambda\sinh(\eta)) for  \eta >= 0.  In the flat limit
# this takes the form  L^{H3d}_0(\lambda,\eta) = j_0(\lambda\eta).
# 
#   Returns: Cint
function gsl_sf_legendre_H3d_0_e (lambda::Cdouble, eta::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_legendre_H3d_0_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), lambda, eta, result )
end


# These routines compute the first radial eigenfunction of the Laplacian on the
# 3-dimensional hyperbolic space,  L^{H3d}_1(\lambda,\eta) := 1/\sqrt{\lambda^2
# + 1} \sin(\lambda \eta)/(\lambda \sinh(\eta)) (\coth(\eta) - \lambda
# \cot(\lambda\eta)) for  \eta >= 0.  In the flat limit this takes the form
# L^{H3d}_1(\lambda,\eta) = j_1(\lambda\eta).
# 
#   Returns: Cdouble
function gsl_sf_legendre_H3d_1 (lambda::Cdouble, eta::Cdouble)
    ccall( (:gsl_sf_legendre_H3d_1, "libgsl"), Cdouble, (Cdouble, Cdouble),
        lambda, eta )
end


# These routines compute the first radial eigenfunction of the Laplacian on the
# 3-dimensional hyperbolic space,  L^{H3d}_1(\lambda,\eta) := 1/\sqrt{\lambda^2
# + 1} \sin(\lambda \eta)/(\lambda \sinh(\eta)) (\coth(\eta) - \lambda
# \cot(\lambda\eta)) for  \eta >= 0.  In the flat limit this takes the form
# L^{H3d}_1(\lambda,\eta) = j_1(\lambda\eta).
# 
#   Returns: Cint
function gsl_sf_legendre_H3d_1_e (lambda::Cdouble, eta::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_legendre_H3d_1_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), lambda, eta, result )
end


# These routines compute the l-th radial eigenfunction of the Laplacian on the
# 3-dimensional hyperbolic space  \eta >= 0,  l >= 0. In the flat limit this
# takes the form  L^{H3d}_l(\lambda,\eta) = j_l(\lambda\eta).
# 
#   Returns: Cdouble
function gsl_sf_legendre_H3d (l::Cint, lambda::Cdouble, eta::Cdouble)
    ccall( (:gsl_sf_legendre_H3d, "libgsl"), Cdouble, (Cint, Cdouble,
        Cdouble), l, lambda, eta )
end


# These routines compute the l-th radial eigenfunction of the Laplacian on the
# 3-dimensional hyperbolic space  \eta >= 0,  l >= 0. In the flat limit this
# takes the form  L^{H3d}_l(\lambda,\eta) = j_l(\lambda\eta).
# 
#   Returns: Cint
function gsl_sf_legendre_H3d_e (l::Cint, lambda::Cdouble, eta::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_legendre_H3d_e, "libgsl"), Cint, (Cint, Cdouble,
        Cdouble, Ptr{gsl_sf_result}), l, lambda, eta, result )
end


# This function computes an array of radial eigenfunctions  L^{H3d}_l(\lambda,
# \eta) for  0 <= l <= lmax.
# 
#   Returns: Cint
function gsl_sf_legendre_H3d_array (lmax::Cint, lambda::Cdouble, eta::Cdouble, result_array::Cdouble)
    ccall( (:gsl_sf_legendre_H3d_array, "libgsl"), Cint, (Cint, Cdouble,
        Cdouble, Cdouble), lmax, lambda, eta, result_array )
end
