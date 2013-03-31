#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 32.2 Functions #
##################
export gsl_dht_alloc, gsl_dht_init, gsl_dht_new, gsl_dht_free, gsl_dht_apply,
       gsl_dht_x_sample, gsl_dht_k_sample


# This function allocates a Discrete Hankel transform object of size size.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_dht}
#XXX Coerced type for output Ptr{Void}
function gsl_dht_alloc{gsl_int<:Integer}(size::gsl_int)
    ccall( (:gsl_dht_alloc, :libgsl), Ptr{Void}, (Csize_t, ), size )
end


# This function initializes the transform t for the given values of nu and
# xmax.
# 
#   Returns: Cint
#XXX Unknown input type t::Ptr{gsl_dht}
#XXX Coerced type for t::Ptr{Void}
function gsl_dht_init(t::Ptr{Void}, nu::Cdouble, xmax::Cdouble)
    gsl_errno = ccall( (:gsl_dht_init, :libgsl), Cint, (Ptr{Void}, Cdouble,
        Cdouble), t, nu, xmax )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# This function allocates a Discrete Hankel transform object of size size and
# initializes it for the given values of nu and xmax.
# 
#   Returns: Ptr{Void}
#XXX Unknown output type Ptr{gsl_dht}
#XXX Coerced type for output Ptr{Void}
function gsl_dht_new{gsl_int<:Integer}(size::gsl_int, nu::Cdouble, xmax::Cdouble)
    ccall( (:gsl_dht_new, :libgsl), Ptr{Void}, (Csize_t, Cdouble, Cdouble),
        size, nu, xmax )
end


# This function frees the transform t.
# 
#   Returns: Void
#XXX Unknown input type t::Ptr{gsl_dht}
#XXX Coerced type for t::Ptr{Void}
function gsl_dht_free(t::Ptr{Void})
    ccall( (:gsl_dht_free, :libgsl), Void, (Ptr{Void}, ), t )
end


# This function applies the transform t to the array f_in whose size is equal
# to the size of the transform.  The result is stored in the array f_out which
# must be of the same length.          Applying this function to its output
# gives the original data multiplied by  (1/j_(\nu,M))^2, up to numerical
# errors.
# 
#   Returns: Cint
#XXX Unknown input type t::Ptr{gsl_dht}
#XXX Coerced type for t::Ptr{Void}
function gsl_dht_apply(t::Ptr{Void})
    f_in = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    f_out = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_dht_apply, :libgsl), Cint, (Ptr{Void},
        Ptr{Cdouble}, Ptr{Cdouble}), t, f_in, f_out )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(f_in) ,unsafe_ref(f_out)
end


# This function returns the value of the n-th sample point in the unit
# interval,  (j_{\nu,n+1}/j_{\nu,M}) X. These are the points where the function
# f(t) is assumed to be sampled.
# 
#   Returns: Cdouble
#XXX Unknown input type t::Ptr{gsl_dht}
#XXX Coerced type for t::Ptr{Void}
function gsl_dht_x_sample{gsl_int<:Integer}(t::Ptr{Void}, n::gsl_int)
    ccall( (:gsl_dht_x_sample, :libgsl), Cdouble, (Ptr{Void}, Cint), t, n )
end


# This function returns the value of the n-th sample point in “k-space”,
# j_{\nu,n+1}/X.
# 
#   Returns: Cdouble
#XXX Unknown input type t::Ptr{gsl_dht}
#XXX Coerced type for t::Ptr{Void}
function gsl_dht_k_sample{gsl_int<:Integer}(t::Ptr{Void}, n::gsl_int)
    ccall( (:gsl_dht_k_sample, :libgsl), Cdouble, (Ptr{Void}, Cint), t, n )
end
