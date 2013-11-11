#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 32.2 Functions #
##################
export dht_alloc, dht_init, dht_new, dht_free, dht_apply, dht_x_sample,
       dht_k_sample


# This function allocates a Discrete Hankel transform object of size size.
# 
#   Returns: Ptr{gsl_dht}
function dht_alloc(size::Integer)
    output_ptr = ccall( (:gsl_dht_alloc, :libgsl), Ptr{gsl_dht}, (Csize_t,
        ), size )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
@vectorize_1arg Number dht_alloc


# This function initializes the transform t for the given values of nu and
# xmax.
# 
#   Returns: Cint
function dht_init(t::Ptr{gsl_dht}, nu::Real, xmax::Real)
    errno = ccall( (:gsl_dht_init, :libgsl), Cint, (Ptr{gsl_dht}, Cdouble,
        Cdouble), t, nu, xmax )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# This function allocates a Discrete Hankel transform object of size size and
# initializes it for the given values of nu and xmax.
# 
#   Returns: Ptr{gsl_dht}
function dht_new(size::Integer, nu::Real, xmax::Real)
    output_ptr = ccall( (:gsl_dht_new, :libgsl), Ptr{gsl_dht}, (Csize_t,
        Cdouble, Cdouble), size, nu, xmax )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number dht_new


# This function frees the transform t.
# 
#   Returns: Void
function dht_free(t::Ptr{gsl_dht})
    ccall( (:gsl_dht_free, :libgsl), Void, (Ptr{gsl_dht}, ), t )
end


# This function applies the transform t to the array f_in whose size is equal
# to the size of the transform.  The result is stored in the array f_out which
# must be of the same length.          Applying this function to its output
# gives the original data multiplied by  (1/j_(\nu,M))^2, up to numerical
# errors.
# 
#   Returns: Cint
function dht_apply(t::Ptr{gsl_dht})
    f_in = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    f_out = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_dht_apply, :libgsl), Cint, (Ptr{gsl_dht},
        Ptr{Cdouble}, Ptr{Cdouble}), t, f_in, f_out )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(f_in), unsafe_load(f_out)
end


# This function returns the value of the n-th sample point in the unit
# interval,  (j_{\nu,n+1}/j_{\nu,M}) X. These are the points where the function
# f(t) is assumed to be sampled.
# 
#   Returns: Cdouble
function dht_x_sample(t::Ptr{gsl_dht}, n::Integer)
    ccall( (:gsl_dht_x_sample, :libgsl), Cdouble, (Ptr{gsl_dht}, Cint), t,
        n )
end


# This function returns the value of the n-th sample point in “k-space”,
# j_{\nu,n+1}/X.
# 
#   Returns: Cdouble
function dht_k_sample(t::Ptr{gsl_dht}, n::Integer)
    ccall( (:gsl_dht_k_sample, :libgsl), Cdouble, (Ptr{gsl_dht}, Cint), t,
        n )
end
