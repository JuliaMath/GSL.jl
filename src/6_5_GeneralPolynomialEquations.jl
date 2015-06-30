#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 6.5 General Polynomial Equations #
####################################

export roots, poly_complex_solve

# roots(c) returns the roots of the (real-coefficient) polynomial
#    c[1] * z^(n-1) + ... + c[n]
# roots(c, true) only returns real roots
function roots{T<:Real}(c::AbstractVector{T}, realOnly::Bool)
    n = length(c)
    a = Array(Cdouble, n)
    # follow Matlab convention: c[1] is the highest-degree coefficient,
    # while in GSL a[1] is the lowest-degree coefficient.
    for i = 1:n
        a[i] = c[n+1-i]
    end
    while n > 0 && a[n] == 0
        n -= 1 # leading coefficient should be non-zero
    end
    if n<2
        return Cdouble[] # No solution
    elseif n==2
        [ -a[1]/a[2] ]
    elseif n==3
        if realOnly
            [poly_solve_quadratic(a[3], a[2], a[1])...]
        else
            [poly_complex_solve_quadratic(a[3], a[2], a[1])...]
        end
    elseif n==4
        if realOnly
            [poly_solve_cubic(a[3]/a[4], a[2]/a[4], a[1]/a[4])...]
        else
            [poly_complex_solve_cubic(a[3]/a[4], a[2]/a[4], a[1]/a[4])...]
        end
    else #Use general solver
        if realOnly throw(ArgumentError("real-only roots not implemented for degree > 3")); end
        w = poly_complex_workspace_alloc(n)
        if (w == C_NULL)
            throw(MemoryError())
        end
        try
            return poly_complex_solve(a, n, w)
        finally
            poly_complex_workspace_free(w)
        end
    end
end

# By default, all complex roots
roots{T<:Real}(c::AbstractVector{T}) = roots(c, false)


# This function computes the roots of the general polynomial  P(x) = a_0 + a_1
# x + a_2 x^2 + ... + a_{n-1} x^{n-1} using balanced-QR reduction of the
# companion matrix.  The parameter n specifies the length of the coefficient
# array.  The coefficient of the highest order term must be non-zero.  The
# function requires a workspace w of the appropriate size.  The n-1 roots are
# returned in the packed complex array z of length 2(n-1), alternating real and
# imaginary parts.          The function returns gsl_SUCCESS if all the roots
# are found. If the QR reduction does not converge, the error handler is
# invoked with an error code of gsl_EFAILED.  Note that due to finite
# precision, roots of higher multiplicity are returned as a cluster of simple
# roots with reduced accuracy.  The solution of polynomials with higher-order
# roots requires specialized algorithms that take the multiplicity structure
# into account (see e.g. Z. Zeng, Algorithm 835, ACM Transactions on
# Mathematical Software, Volume 30, Issue 2 (2004), pp 218–236).
# 
#   Returns: Cint

function poly_complex_solve{tA<:Real}(a_in::AbstractVector{tA}, n::Integer, w::Ptr{gsl_poly_complex_workspace})
    a = convert(Vector{Cdouble}, a_in)
    z = Array(Complex{Cdouble}, n-1)
    errno = ccall( (:gsl_poly_complex_solve, libgsl), Cint,
        (Ptr{Cdouble}, Csize_t, Ptr{Void}, Ptr{Complex{Cdouble}}), a, n, w, z )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    z#complex_packed_ptr(z)
end

