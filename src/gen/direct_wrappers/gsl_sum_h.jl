#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sum.h ################################################################


"""
    gsl_sum_levin_u_alloc(n) -> Ptr{gsl_sum_levin_u_workspace}

C signature:
`gsl_sum_levin_u_workspace *gsl_sum_levin_u_alloc (size_t n)`
"""
function gsl_sum_levin_u_alloc(n)
    ccall((:gsl_sum_levin_u_alloc, libgsl), Ptr{gsl_sum_levin_u_workspace}, (Csize_t,), n)
end

"""
    gsl_sum_levin_u_free(w) -> Cvoid

C signature:
`void gsl_sum_levin_u_free (gsl_sum_levin_u_workspace * w)`
"""
function gsl_sum_levin_u_free(w)
    ccall((:gsl_sum_levin_u_free, libgsl), Cvoid, (Ptr{gsl_sum_levin_u_workspace},), w)
end

"""
    gsl_sum_levin_u_accel(array, n, w, sum_accel, abserr) -> Cint

C signature:
`int gsl_sum_levin_u_accel (const double *array, const size_t n, gsl_sum_levin_u_workspace * w, double *sum_accel, double *abserr)`
"""
function gsl_sum_levin_u_accel(array, n, w, sum_accel, abserr)
    ccall((:gsl_sum_levin_u_accel, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, w, sum_accel, abserr)
end

"""
    gsl_sum_levin_u_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr) -> Cint

C signature:
`int gsl_sum_levin_u_minmax (const double *array, const size_t n, const size_t min_terms, const size_t max_terms, gsl_sum_levin_u_workspace * w, double *sum_accel, double *abserr)`
"""
function gsl_sum_levin_u_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr)
    ccall((:gsl_sum_levin_u_minmax, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, min_terms, max_terms, w, sum_accel, abserr)
end

"""
    gsl_sum_levin_u_step(term, n, nmax, w, sum_accel) -> Cint

C signature:
`int gsl_sum_levin_u_step (const double term, const size_t n, const size_t nmax, gsl_sum_levin_u_workspace * w, double *sum_accel)`
"""
function gsl_sum_levin_u_step(term, n, nmax, w, sum_accel)
    ccall((:gsl_sum_levin_u_step, libgsl), Cint, (Cdouble, Csize_t, Csize_t, Ref{gsl_sum_levin_u_workspace}, Ref{Cdouble}), term, n, nmax, w, sum_accel)
end

"""
    gsl_sum_levin_utrunc_alloc(n) -> Ptr{gsl_sum_levin_utrunc_workspace}

C signature:
`gsl_sum_levin_utrunc_workspace *gsl_sum_levin_utrunc_alloc (size_t n)`
"""
function gsl_sum_levin_utrunc_alloc(n)
    ccall((:gsl_sum_levin_utrunc_alloc, libgsl), Ptr{gsl_sum_levin_utrunc_workspace}, (Csize_t,), n)
end

"""
    gsl_sum_levin_utrunc_free(w) -> Cvoid

C signature:
`void gsl_sum_levin_utrunc_free (gsl_sum_levin_utrunc_workspace * w)`
"""
function gsl_sum_levin_utrunc_free(w)
    ccall((:gsl_sum_levin_utrunc_free, libgsl), Cvoid, (Ptr{gsl_sum_levin_utrunc_workspace},), w)
end

"""
    gsl_sum_levin_utrunc_accel(array, n, w, sum_accel, abserr_trunc) -> Cint

C signature:
`int gsl_sum_levin_utrunc_accel (const double *array, const size_t n, gsl_sum_levin_utrunc_workspace * w, double *sum_accel, double *abserr_trunc)`
"""
function gsl_sum_levin_utrunc_accel(array, n, w, sum_accel, abserr_trunc)
    ccall((:gsl_sum_levin_utrunc_accel, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{gsl_sum_levin_utrunc_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, w, sum_accel, abserr_trunc)
end

"""
    gsl_sum_levin_utrunc_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr_trunc) -> Cint

C signature:
`int gsl_sum_levin_utrunc_minmax (const double *array, const size_t n, const size_t min_terms, const size_t max_terms, gsl_sum_levin_utrunc_workspace * w, double *sum_accel, double *abserr_trunc)`
"""
function gsl_sum_levin_utrunc_minmax(array, n, min_terms, max_terms, w, sum_accel, abserr_trunc)
    ccall((:gsl_sum_levin_utrunc_minmax, libgsl), Cint, (Ref{Cdouble}, Csize_t, Csize_t, Csize_t, Ref{gsl_sum_levin_utrunc_workspace}, Ref{Cdouble}, Ref{Cdouble}), array, n, min_terms, max_terms, w, sum_accel, abserr_trunc)
end

"""
    gsl_sum_levin_utrunc_step(term, n, w, sum_accel) -> Cint

C signature:
`int gsl_sum_levin_utrunc_step (const double term, const size_t n, gsl_sum_levin_utrunc_workspace * w, double *sum_accel)`
"""
function gsl_sum_levin_utrunc_step(term, n, w, sum_accel)
    ccall((:gsl_sum_levin_utrunc_step, libgsl), Cint, (Cdouble, Csize_t, Ref{gsl_sum_levin_utrunc_workspace}, Ref{Cdouble}), term, n, w, sum_accel)
end

