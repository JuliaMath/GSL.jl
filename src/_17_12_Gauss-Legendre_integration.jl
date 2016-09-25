#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################
# 17.12 Gauss-Legendre integration #
####################################
export integration_glfixed_table_alloc, integration_glfixed,
       integration_glfixed_point, integration_glfixed_table_free


# This function determines the Gauss-Legendre abscissae and weights necessary
# for an n-point fixed order integration scheme.  If possible, high precision
# precomputed coefficients are used.  If precomputed weights are not available,
# lower precision coefficients are computed on the fly.
#
#   Returns: Ptr{gsl_integration_glfixed_table}
function integration_glfixed_table_alloc(n::Integer)
    output_ptr = ccall( (:gsl_integration_glfixed_table_alloc, libgsl),
        Ptr{gsl_integration_glfixed_table}, (Csize_t, ), n )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
Compat.@dep_vectorize_1arg Number integration_glfixed_table_alloc


# This function applies the Gauss-Legendre integration rule contained in table
# t and returns the result.
#
#   Returns: Cdouble
function integration_glfixed(f::Ref{gsl_function}, a::Real, b::Real, t::Ref{gsl_integration_glfixed_table})
    ccall( (:gsl_integration_glfixed, libgsl), Cdouble,
        (Ref{gsl_function}, Cdouble, Cdouble,
        Ref{gsl_integration_glfixed_table}), f, a, b, t )
end


# For i in [0, ..., t->n - 1], this function obtains the i-th Gauss-Legendre
# point xi and weight wi on the interval [a,b].  The points and weights are
# ordered by increasing point value.  A function f may be integrated on [a,b]
# by summing wi * f(xi) over i.
#
#   Returns: Cint
function integration_glfixed_point(a::Real, b::Real, i::Integer, t::Ref{gsl_integration_glfixed_table})
    xi = Ref{Cdouble}()
    wi = Ref{Cdouble}()
    errno = ccall( (:gsl_integration_glfixed_point, libgsl), Cint,
        (Cdouble, Cdouble, Csize_t, Ref{Cdouble}, Ref{Cdouble},
        Ref{gsl_integration_glfixed_table}), a, b, i, xi, wi, t )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return xi[], wi[]
end


# This function frees the memory associated with the table t.
#
#   Returns: Void
function integration_glfixed_table_free(t::Ref{gsl_integration_glfixed_table})
    ccall( (:gsl_integration_glfixed_table_free, libgsl), Void,
        (Ref{gsl_integration_glfixed_table}, ), t )
end
