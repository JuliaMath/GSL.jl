#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_chebyshev.h ##########################################################


"""
    gsl_cheb_alloc(order) -> Ptr{gsl_cheb_series}

C signature:
`gsl_cheb_series * gsl_cheb_alloc(const size_t order)`
"""
function gsl_cheb_alloc(order)
    ccall((:gsl_cheb_alloc, libgsl), Ptr{gsl_cheb_series}, (Csize_t,), order)
end

"""
    gsl_cheb_free(cs) -> Cvoid

C signature:
`void gsl_cheb_free(gsl_cheb_series * cs)`
"""
function gsl_cheb_free(cs)
    ccall((:gsl_cheb_free, libgsl), Cvoid, (Ptr{gsl_cheb_series},), cs)
end

"""
    gsl_cheb_init(cs, func, a, b) -> Cint

C signature:
`int gsl_cheb_init(gsl_cheb_series * cs, const gsl_function * func, const double a, const double b)`
"""
function gsl_cheb_init(cs, func, a, b)
    ccall((:gsl_cheb_init, libgsl), Cint, (Ref{gsl_cheb_series}, Ref{gsl_function}, Cdouble, Cdouble), cs, func, a, b)
end

"""
    gsl_cheb_order(cs) -> Csize_t

C signature:
`size_t gsl_cheb_order (const gsl_cheb_series * cs)`
"""
function gsl_cheb_order(cs)
    ccall((:gsl_cheb_order, libgsl), Csize_t, (Ptr{gsl_cheb_series},), cs)
end

"""
    gsl_cheb_size(cs) -> Csize_t

C signature:
`size_t gsl_cheb_size (const gsl_cheb_series * cs)`
"""
function gsl_cheb_size(cs)
    ccall((:gsl_cheb_size, libgsl), Csize_t, (Ptr{gsl_cheb_series},), cs)
end

"""
    gsl_cheb_coeffs(cs) -> Ptr{Cdouble}

C signature:
`double *gsl_cheb_coeffs (const gsl_cheb_series * cs)`
"""
function gsl_cheb_coeffs(cs)
    ccall((:gsl_cheb_coeffs, libgsl), Ptr{Cdouble}, (Ptr{gsl_cheb_series},), cs)
end

"""
    gsl_cheb_eval(cs, x) -> Cdouble

C signature:
`double gsl_cheb_eval(const gsl_cheb_series * cs, const double x)`
"""
function gsl_cheb_eval(cs, x)
    ccall((:gsl_cheb_eval, libgsl), Cdouble, (Ref{gsl_cheb_series}, Cdouble), cs, x)
end

"""
    gsl_cheb_eval_err(cs, x, result, abserr) -> Cint

C signature:
`int gsl_cheb_eval_err(const gsl_cheb_series * cs, const double x, double * result, double * abserr)`
"""
function gsl_cheb_eval_err(cs, x, result, abserr)
    ccall((:gsl_cheb_eval_err, libgsl), Cint, (Ref{gsl_cheb_series}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), cs, x, result, abserr)
end

"""
    gsl_cheb_eval_n(cs, order, x) -> Cdouble

C signature:
`double gsl_cheb_eval_n(const gsl_cheb_series * cs, const size_t order, const double x)`
"""
function gsl_cheb_eval_n(cs, order, x)
    ccall((:gsl_cheb_eval_n, libgsl), Cdouble, (Ref{gsl_cheb_series}, Csize_t, Cdouble), cs, order, x)
end

"""
    gsl_cheb_eval_n_err(cs, order, x, result, abserr) -> Cint

C signature:
`int gsl_cheb_eval_n_err(const gsl_cheb_series * cs, const size_t order, const double x, double * result, double * abserr)`
"""
function gsl_cheb_eval_n_err(cs, order, x, result, abserr)
    ccall((:gsl_cheb_eval_n_err, libgsl), Cint, (Ref{gsl_cheb_series}, Csize_t, Cdouble, Ref{Cdouble}, Ref{Cdouble}), cs, order, x, result, abserr)
end

"""
    gsl_cheb_eval_mode(cs, x, mode) -> Cdouble

C signature:
`double gsl_cheb_eval_mode(const gsl_cheb_series * cs, const double x, gsl_mode_t mode)`
"""
function gsl_cheb_eval_mode(cs, x, mode)
    ccall((:gsl_cheb_eval_mode, libgsl), Cdouble, (Ref{gsl_cheb_series}, Cdouble, gsl_mode_t), cs, x, mode)
end

"""
    gsl_cheb_eval_mode_e(cs, x, mode, result, abserr) -> Cint

C signature:
`int gsl_cheb_eval_mode_e(const gsl_cheb_series * cs, const double x, gsl_mode_t mode, double * result, double * abserr)`
"""
function gsl_cheb_eval_mode_e(cs, x, mode, result, abserr)
    ccall((:gsl_cheb_eval_mode_e, libgsl), Cint, (Ref{gsl_cheb_series}, Cdouble, gsl_mode_t, Ref{Cdouble}, Ref{Cdouble}), cs, x, mode, result, abserr)
end

"""
    gsl_cheb_calc_deriv(deriv, cs) -> Cint

C signature:
`int gsl_cheb_calc_deriv(gsl_cheb_series * deriv, const gsl_cheb_series * cs)`
"""
function gsl_cheb_calc_deriv(deriv, cs)
    ccall((:gsl_cheb_calc_deriv, libgsl), Cint, (Ref{gsl_cheb_series}, Ref{gsl_cheb_series}), deriv, cs)
end

"""
    gsl_cheb_calc_integ(integ, cs) -> Cint

C signature:
`int gsl_cheb_calc_integ(gsl_cheb_series * integ, const gsl_cheb_series * cs)`
"""
function gsl_cheb_calc_integ(integ, cs)
    ccall((:gsl_cheb_calc_integ, libgsl), Cint, (Ref{gsl_cheb_series}, Ref{gsl_cheb_series}), integ, cs)
end

