#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 29.3 Auxiliary Functions #
############################
export gsl_cheb_order, gsl_cheb_size, gsl_cheb_coeffs


# This function returns the order of Chebyshev series cs.
# 
#   Returns: Csize_t
function gsl_cheb_order(cs::Ptr{gsl_cheb_series})
    ccall( (:gsl_cheb_order, :libgsl), Csize_t, (Ptr{gsl_cheb_series}, ),
        cs )
end


# These functions return the size of the Chebyshev coefficient array c[] and a
# pointer to its location in memory for the Chebyshev series cs.
# 
#   Returns: Csize_t
function gsl_cheb_size(cs::Ptr{gsl_cheb_series})
    ccall( (:gsl_cheb_size, :libgsl), Csize_t, (Ptr{gsl_cheb_series}, ), cs
        )
end


# These functions return the size of the Chebyshev coefficient array c[] and a
# pointer to its location in memory for the Chebyshev series cs.
# 
#   Returns: Ptr{Cdouble}
function gsl_cheb_coeffs(cs::Ptr{gsl_cheb_series})
    ccall( (:gsl_cheb_coeffs, :libgsl), Ptr{Cdouble},
        (Ptr{gsl_cheb_series}, ), cs )
end
