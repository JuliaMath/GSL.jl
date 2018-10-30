#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_dht.h ################################################################


"""
    gsl_dht_alloc(size) -> Ptr{gsl_dht}

C signature:
`gsl_dht * gsl_dht_alloc(size_t size)`
"""
function gsl_dht_alloc(size)
    ccall((:gsl_dht_alloc, libgsl), Ptr{gsl_dht}, (Csize_t,), size)
end

"""
    gsl_dht_new(size, nu, xmax) -> Ptr{gsl_dht}

C signature:
`gsl_dht * gsl_dht_new(size_t size, double nu, double xmax)`
"""
function gsl_dht_new(size, nu, xmax)
    ccall((:gsl_dht_new, libgsl), Ptr{gsl_dht}, (Csize_t, Cdouble, Cdouble), size, nu, xmax)
end

"""
    gsl_dht_init(t, nu, xmax) -> Cint

C signature:
`int gsl_dht_init(gsl_dht * t, double nu, double xmax)`
"""
function gsl_dht_init(t, nu, xmax)
    ccall((:gsl_dht_init, libgsl), Cint, (Ref{gsl_dht}, Cdouble, Cdouble), t, nu, xmax)
end

"""
    gsl_dht_x_sample(t, n) -> Cdouble

C signature:
`double gsl_dht_x_sample(const gsl_dht * t, int n)`
"""
function gsl_dht_x_sample(t, n)
    ccall((:gsl_dht_x_sample, libgsl), Cdouble, (Ref{gsl_dht}, Cint), t, n)
end

"""
    gsl_dht_k_sample(t, n) -> Cdouble

C signature:
`double gsl_dht_k_sample(const gsl_dht * t, int n)`
"""
function gsl_dht_k_sample(t, n)
    ccall((:gsl_dht_k_sample, libgsl), Cdouble, (Ref{gsl_dht}, Cint), t, n)
end

"""
    gsl_dht_free(t) -> Cvoid

C signature:
`void gsl_dht_free(gsl_dht * t)`
"""
function gsl_dht_free(t)
    ccall((:gsl_dht_free, libgsl), Cvoid, (Ptr{gsl_dht},), t)
end

"""
    gsl_dht_apply(t, f_in, f_out) -> Cint

C signature:
`int gsl_dht_apply(const gsl_dht * t, double * f_in, double * f_out)`
"""
function gsl_dht_apply(t, f_in, f_out)
    ccall((:gsl_dht_apply, libgsl), Cint, (Ref{gsl_dht}, Ref{Cdouble}, Ref{Cdouble}), t, f_in, f_out)
end

