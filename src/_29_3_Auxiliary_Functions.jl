#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 29.3 Auxiliary Functions #
############################
export cheb_order, cheb_size, cheb_coeffs


# This function returns the order of Chebyshev series cs.
# 
#   Returns: Csize_t
function cheb_order(cs::Ref{gsl_cheb_series})
    ccall( (:gsl_cheb_order, libgsl), Csize_t, (Ref{gsl_cheb_series}, ),
        cs )
end


# These functions return the size of the Chebyshev coefficient array c[] and a
# pointer to its location in memory for the Chebyshev series cs.
# 
#   Returns: Csize_t
function cheb_size(cs::Ref{gsl_cheb_series})
    ccall( (:gsl_cheb_size, libgsl), Csize_t, (Ref{gsl_cheb_series}, ), cs
        )
end


# These functions return the size of the Chebyshev coefficient array c[] and a
# pointer to its location in memory for the Chebyshev series cs.
# 
#   Returns: Ref{Cdouble}
function cheb_coeffs(cs::Ref{gsl_cheb_series})
    output_ptr = ccall( (:gsl_cheb_coeffs, libgsl), Ref{Cdouble},
        (Ref{gsl_cheb_series}, ), cs )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
