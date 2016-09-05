#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 6.5 General Polynomial Equations #
####################################
export poly_complex_workspace_alloc, poly_complex_workspace_free,
       poly_complex_solve


# This function allocates space for a gsl_poly_complex_workspace struct and a
# workspace suitable for solving a polynomial with n coefficients using the
# routine gsl_poly_complex_solve.          The function returns a pointer to
# the newly allocated gsl_poly_complex_workspace if no errors were detected,
# and a null pointer in the case of error.
#
#   Returns: Ptr{gsl_poly_complex_workspace}
function poly_complex_workspace_alloc(n::Integer)
    output_ptr = ccall( (:gsl_poly_complex_workspace_alloc, libgsl),
        Ptr{gsl_poly_complex_workspace}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number poly_complex_workspace_alloc


# This function frees all the memory associated with the workspace w.
#
#   Returns: Void
function poly_complex_workspace_free(w::Ref{gsl_poly_complex_workspace})
    ccall( (:gsl_poly_complex_workspace_free, libgsl), Void,
        (Ref{gsl_poly_complex_workspace}, ), w )
end


# This function computes the roots of the general polynomial  P(x) = a_0 + a_1
# x + a_2 x^2 + ... + a_{n-1} x^{n-1} using balanced-QR reduction of the
# companion matrix.  The parameter n specifies the length of the coefficient
# array.  The coefficient of the highest order term must be non-zero.  The
# function requires a workspace w of the appropriate size.  The n-1 roots are
# returned in the packed complex array z of length 2(n-1), alternating real and
# imaginary parts.          The function returns GSL_SUCCESS if all the roots
# are found. If the QR reduction does not converge, the error handler is
# invoked with an error code of GSL_EFAILED.  Note that due to finite
# precision, roots of higher multiplicity are returned as a cluster of simple
# roots with reduced accuracy.  The solution of polynomials with higher-order
# roots requires specialized algorithms that take the multiplicity structure
# into account (see e.g. Z. Zeng, Algorithm 835, ACM Transactions on
# Mathematical Software, Volume 30, Issue 2 (2004), pp 218–236).
#
#   Returns: Cint
function poly_complex_solve{tA<:Real}(a_in::AbstractVector{tA}, z::gsl_complex_packed_ptr)
    n = length(a_in)
    a = convert(Vector{Cdouble}, a_in)
    w = Ref{gsl_poly_complex_workspace}()
    errno = ccall( (:gsl_poly_complex_solve, libgsl), Cint, (Ref{Cdouble},
        Csize_t, Ref{gsl_poly_complex_workspace}, gsl_complex_packed_ptr), a,
        n, w, z )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return w[]
end
