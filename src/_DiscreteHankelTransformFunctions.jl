#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 32.2 Functions #
##################
export gsl_dht_alloc, gsl_dht_init, gsl_dht_new, gsl_dht_free, gsl_dht_apply,
       gsl_dht_x_sample, gsl_dht_k_sample


### Function uses unknown type; disabled
### # This function allocates a Discrete Hankel transform object of size size.
# 
### #   Returns: Ptr{gsl_dht}
### #XXX Unknown output type Ptr{gsl_dht}
### function gsl_dht_alloc (size::Csize_t)
###     ccall( (:gsl_dht_alloc, "libgsl"), Ptr{gsl_dht}, (Csize_t, ), size )
### end


### Function uses unknown type; disabled
### # This function initializes the transform t for the given values of nu and
# xmax.
# 
### #   Returns: Cint
### #XXX Unknown input type t::Ptr{gsl_dht}
### function gsl_dht_init (t::Ptr{gsl_dht}, nu::Cdouble, xmax::Cdouble)
###     ccall( (:gsl_dht_init, "libgsl"), Cint, (Ptr{gsl_dht}, Cdouble,
###         Cdouble), t, nu, xmax )
### end


### Function uses unknown type; disabled
### # This function allocates a Discrete Hankel transform object of size size and
# initializes it for the given values of nu and xmax.
# 
### #   Returns: Ptr{gsl_dht}
### #XXX Unknown output type Ptr{gsl_dht}
### function gsl_dht_new (size::Csize_t, nu::Cdouble, xmax::Cdouble)
###     ccall( (:gsl_dht_new, "libgsl"), Ptr{gsl_dht}, (Csize_t, Cdouble,
###         Cdouble), size, nu, xmax )
### end


### Function uses unknown type; disabled
### # This function frees the transform t.
# 
### #   Returns: Void
### #XXX Unknown input type t::Ptr{gsl_dht}
### function gsl_dht_free (t::Ptr{gsl_dht})
###     ccall( (:gsl_dht_free, "libgsl"), Void, (Ptr{gsl_dht}, ), t )
### end


### Function uses unknown type; disabled
### # This function applies the transform t to the array f_in whose size is equal
# to the size of the transform.  The result is stored in the array f_out which
# must be of the same length.          Applying this function to its output
# gives the original data multiplied by  (1/j_(\nu,M))^2, up to numerical
# errors.
# 
### #   {$(1/j_{\nu,M})^2$} 
### #   Returns: Cint
### #XXX Unknown input type t::Ptr{gsl_dht}
### function gsl_dht_apply (t::Ptr{gsl_dht}, f_in::Ptr{Cdouble}, f_out::Ptr{Cdouble})
###     ccall( (:gsl_dht_apply, "libgsl"), Cint, (Ptr{gsl_dht}, Ptr{Cdouble},
###         Ptr{Cdouble}), t, f_in, f_out )
### end


### Function uses unknown type; disabled
### # This function returns the value of the n-th sample point in the unit
# interval,  (j_{\nu,n+1}/j_{\nu,M}) X. These are the points where the function
# f(t) is assumed to be sampled.
# 
### #   {${({j_{\nu,n+1}} / {j_{\nu,M}}}) X$} 
### #   Returns: Cdouble
### #XXX Unknown input type t::Ptr{gsl_dht}
### function gsl_dht_x_sample (t::Ptr{gsl_dht}, n::Cint)
###     ccall( (:gsl_dht_x_sample, "libgsl"), Cdouble, (Ptr{gsl_dht}, Cint), t,
###         n )
### end


### Function uses unknown type; disabled
### # This function returns the value of the n-th sample point in “k-space”,
# j_{\nu,n+1}/X.
# 
### #   {${{j_{\nu,n+1}} / X}$} 
### #   Returns: Cdouble
### #XXX Unknown input type t::Ptr{gsl_dht}
### function gsl_dht_k_sample (t::Ptr{gsl_dht}, n::Cint)
###     ccall( (:gsl_dht_k_sample, "libgsl"), Cdouble, (Ptr{gsl_dht}, Cint), t,
###         n )
### end