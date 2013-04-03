#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 6.5 General Polynomial Equations #
####################################

export roots

function roots{T<:Real}(c::Vector{T}, realOnly::Bool)
    n = length(c)
    a = convert(Vector{Cdouble}, c)
    if n==0
        return nothing #No solution
    elseif n==1
        poly_solve_quadratic(0.0, a[2], a[1])
    elseif n==2
        if realOnly
            poly_solve_quadratic(a[3], a[2], a[1])
        else
            poly_complex_solve_quadratic(a[3], a[2], a[1])
        end
    elseif n==3
        if realOnly
            poly_solve_cubic(a[3]/a[4], a[2]/a[4], a[1]/a[4])
        else
            poly_complex_solve_cubic(a[3]/a[4], a[2]/a[4], a[1]/a[4])
        end
    else #Use general solver
        w = poly_complex_workspace_alloc(n)
        z = poly_complex_solve(a, n, w)
        poly_complex_workspace_free(w)
        complex_packed_ptr(z)
    end
end

roots{T<:Real}(c::Vector{T}) = roots(c, false) #By default, all complex roots


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
function poly_complex_solve{tA<:Real, tB<:Real}(a::Ptr{tA}, n::Integer, w::Ptr{gsl_poly_complex_workspace}, z::Vector{tB})
    errno = ccall( (:gsl_poly_complex_solve, :libgsl), Cint,
        (Ptr{Cdouble}, Csize_t, Ptr{Void}, Void), a, n, w, z )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return z
end

