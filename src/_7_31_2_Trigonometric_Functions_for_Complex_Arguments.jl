#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################################
# 7.31.2 Trigonometric Functions for Complex Arguments #
########################################################
export sf_complex_sin_e, sf_complex_cos_e, sf_complex_logsin_e


# This function computes the complex sine, \sin(z_r + i z_i) storing the real
# and imaginary parts in szr, szi.
# 
#   Returns: Cint
function sf_complex_sin_e(zr::Real, zi::Real)
    szr = Ref{gsl_sf_result}()
    szi = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_complex_sin_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, szr, szi )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return szr[], szi[]
end
Compat.@dep_vectorize_2arg Number sf_complex_sin_e


# This function computes the complex cosine, \cos(z_r + i z_i) storing the real
# and imaginary parts in czr, czi.
# 
#   Returns: Cint
function sf_complex_cos_e(zr::Real, zi::Real)
    czr = Ref{gsl_sf_result}()
    czi = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_complex_cos_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, czr, czi )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return czr[], czi[]
end
Compat.@dep_vectorize_2arg Number sf_complex_cos_e


# This function computes the logarithm of the complex sine, \log(\sin(z_r + i
# z_i)) storing the real and imaginary parts in lszr, lszi.
# 
#   Returns: Cint
function sf_complex_logsin_e(zr::Real, zi::Real)
    lszr = Ref{gsl_sf_result}()
    lszi = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_complex_logsin_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}, Ref{gsl_sf_result}), zr, zi, lszr, lszi )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return lszr[], lszi[]
end
Compat.@dep_vectorize_2arg Number sf_complex_logsin_e
