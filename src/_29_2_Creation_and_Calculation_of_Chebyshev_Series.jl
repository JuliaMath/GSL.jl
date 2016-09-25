#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################################################
# 29.2 Creation and Calculation of Chebyshev Series #
#####################################################
export cheb_alloc, cheb_free, cheb_init


# This function allocates space for a Chebyshev series of order n and returns a
# pointer to a new gsl_cheb_series struct.
#
#   Returns: Ptr{gsl_cheb_series}
function cheb_alloc(n::Integer)
    output_ptr = ccall( (:gsl_cheb_alloc, libgsl), Ptr{gsl_cheb_series},
        (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number cheb_alloc


# This function frees a previously allocated Chebyshev series cs.
#
#   Returns: Void
function cheb_free(cs::Ref{gsl_cheb_series})
    ccall( (:gsl_cheb_free, libgsl), Void, (Ref{gsl_cheb_series}, ), cs )
end


# This function computes the Chebyshev approximation cs for the function f over
# the range (a,b) to the previously specified order.  The computation of the
# Chebyshev approximation is an O(n^2) process, and requires n function
# evaluations.
#
#   Returns: Cint
function cheb_init(cs::Ref{gsl_cheb_series}, f::Ref{gsl_function}, a::Real, b::Real)
    errno = ccall( (:gsl_cheb_init, libgsl), Cint, (Ref{gsl_cheb_series},
        Ref{gsl_function}, Cdouble, Cdouble), cs, f, a, b )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
