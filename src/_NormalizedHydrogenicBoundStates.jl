#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################################
# 7.7.1 Normalized Hydrogenic Bound States #
############################################
export gsl_sf_hydrogenicR_1, gsl_sf_hydrogenicR_1_e, gsl_sf_hydrogenicR,
       gsl_sf_hydrogenicR_e


# These routines compute the lowest-order normalized hydrogenic bound state
# radial wavefunction  R_1 := 2Z \sqrt{Z} \exp(-Z r).
# 
#   {$R_1 := 2Z \sqrt{Z} \exp(-Z r)$} 
#   Returns: Cdouble
function gsl_sf_hydrogenicR_1 (Z::Cdouble, r::Cdouble)
    ccall( (:gsl_sf_hydrogenicR_1, "libgsl"), Cdouble, (Cdouble, Cdouble),
        Z, r )
end


# These routines compute the lowest-order normalized hydrogenic bound state
# radial wavefunction  R_1 := 2Z \sqrt{Z} \exp(-Z r).
# 
#   Returns: Cint
function gsl_sf_hydrogenicR_1_e (Z::Cdouble, r::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_hydrogenicR_1_e, "libgsl"), Cint, (Cdouble, Cdouble,
        Ptr{gsl_sf_result}), Z, r, result )
end


# These routines compute the n-th normalized hydrogenic bound state radial
# wavefunction,                 R_n := 2 (Z^{3/2}/n^2) \sqrt{(n-l-1)!/(n+l)!}
# \exp(-Z r/n) (2Zr/n)^l                     L^{2l+1}_{n-l-1}(2Zr/n).  where
# L^a_b(x) is the generalized Laguerre polynomial (see Laguerre Functions).
# The normalization is chosen such that the wavefunction \psi is given by
# \psi(n,l,r) = R_n Y_{lm}.
# 
#   {$\psi(n,l,r) = R_n Y_{lm}$} 
#   Returns: Cdouble
function gsl_sf_hydrogenicR (n::Cint, l::Cint, Z::Cdouble, r::Cdouble)
    ccall( (:gsl_sf_hydrogenicR, "libgsl"), Cdouble, (Cint, Cint, Cdouble,
        Cdouble), n, l, Z, r )
end


# These routines compute the n-th normalized hydrogenic bound state radial
# wavefunction,                 R_n := 2 (Z^{3/2}/n^2) \sqrt{(n-l-1)!/(n+l)!}
# \exp(-Z r/n) (2Zr/n)^l                     L^{2l+1}_{n-l-1}(2Zr/n).  where
# L^a_b(x) is the generalized Laguerre polynomial (see Laguerre Functions).
# The normalization is chosen such that the wavefunction \psi is given by
# \psi(n,l,r) = R_n Y_{lm}.
# 
#   Returns: Cint
function gsl_sf_hydrogenicR_e (n::Cint, l::Cint, Z::Cdouble, r::Cdouble, result::Ptr{gsl_sf_result})
    ccall( (:gsl_sf_hydrogenicR_e, "libgsl"), Cint, (Cint, Cint, Cdouble,
        Cdouble, Ptr{gsl_sf_result}), n, l, Z, r, result )
end