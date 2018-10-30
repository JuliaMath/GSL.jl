#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multifit_nlinear.h ###################################################


"""
    gsl_multifit_nlinear_alloc(T, params, n, p) -> Ptr{gsl_multifit_nlinear_workspace}

C signature:
`gsl_multifit_nlinear_workspace * gsl_multifit_nlinear_alloc (const gsl_multifit_nlinear_type * T, const gsl_multifit_nlinear_parameters * params, size_t n, size_t p)`
"""
function gsl_multifit_nlinear_alloc(T, params, n, p)
    ccall((:gsl_multifit_nlinear_alloc, libgsl), Ptr{gsl_multifit_nlinear_workspace}, (Ref{gsl_multifit_nlinear_type}, Ref{gsl_multifit_nlinear_parameters}, Csize_t, Csize_t), T, params, n, p)
end

"""
    gsl_multifit_nlinear_free(w) -> Cvoid

C signature:
`void gsl_multifit_nlinear_free (gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_free(w)
    ccall((:gsl_multifit_nlinear_free, libgsl), Cvoid, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_default_parameters() -> gsl_multifit_nlinear_parameters

C signature:
`gsl_multifit_nlinear_parameters gsl_multifit_nlinear_default_parameters(void)`
"""
function gsl_multifit_nlinear_default_parameters()
    ccall((:gsl_multifit_nlinear_default_parameters, libgsl), gsl_multifit_nlinear_parameters, (), )
end

"""
    gsl_multifit_nlinear_init(x, fdf, w) -> Cint

C signature:
`int gsl_multifit_nlinear_init (const gsl_vector * x, gsl_multifit_nlinear_fdf * fdf, gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_init(x, fdf, w)
    ccall((:gsl_multifit_nlinear_init, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_multifit_nlinear_workspace}), x, fdf, w)
end

"""
    gsl_multifit_nlinear_winit(x, wts, fdf, w) -> Cint

C signature:
`int gsl_multifit_nlinear_winit (const gsl_vector * x, const gsl_vector * wts, gsl_multifit_nlinear_fdf * fdf, gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_winit(x, wts, fdf, w)
    ccall((:gsl_multifit_nlinear_winit, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_multifit_nlinear_workspace}), x, wts, fdf, w)
end

"""
    gsl_multifit_nlinear_iterate(w) -> Cint

C signature:
`int gsl_multifit_nlinear_iterate (gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_iterate(w)
    ccall((:gsl_multifit_nlinear_iterate, libgsl), Cint, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_avratio(w) -> Cdouble

C signature:
`double gsl_multifit_nlinear_avratio (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_avratio(w)
    ccall((:gsl_multifit_nlinear_avratio, libgsl), Cdouble, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_jac(w) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_multifit_nlinear_jac (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_jac(w)
    ccall((:gsl_multifit_nlinear_jac, libgsl), Ptr{gsl_matrix}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_name(w) -> Ptr{Cchar}

C signature:
`const char * gsl_multifit_nlinear_name (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_name(w)
    ccall((:gsl_multifit_nlinear_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_position(w) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_nlinear_position (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_position(w)
    ccall((:gsl_multifit_nlinear_position, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_residual(w) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_nlinear_residual (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_residual(w)
    ccall((:gsl_multifit_nlinear_residual, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_niter(w) -> Csize_t

C signature:
`size_t gsl_multifit_nlinear_niter (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_niter(w)
    ccall((:gsl_multifit_nlinear_niter, libgsl), Csize_t, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_rcond(rcond, w) -> Cint

C signature:
`int gsl_multifit_nlinear_rcond (double *rcond, const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_rcond(rcond, w)
    ccall((:gsl_multifit_nlinear_rcond, libgsl), Cint, (Ref{Cdouble}, Ref{gsl_multifit_nlinear_workspace}), rcond, w)
end

"""
    gsl_multifit_nlinear_trs_name(w) -> Ptr{Cchar}

C signature:
`const char * gsl_multifit_nlinear_trs_name (const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_trs_name(w)
    ccall((:gsl_multifit_nlinear_trs_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

"""
    gsl_multifit_nlinear_eval_f(fdf, x, swts, y) -> Cint

C signature:
`int gsl_multifit_nlinear_eval_f(gsl_multifit_nlinear_fdf *fdf, const gsl_vector *x, const gsl_vector *swts, gsl_vector *y)`
"""
function gsl_multifit_nlinear_eval_f(fdf, x, swts, y)
    ccall((:gsl_multifit_nlinear_eval_f, libgsl), Cint, (Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}), fdf, x, swts, y)
end

"""
    gsl_multifit_nlinear_eval_df(x, f, swts, h, fdtype, fdf, df, work) -> Cint

C signature:
`int gsl_multifit_nlinear_eval_df(const gsl_vector *x, const gsl_vector *f, const gsl_vector *swts, const double h, const gsl_multifit_nlinear_fdtype fdtype, gsl_multifit_nlinear_fdf *fdf, gsl_matrix *df, gsl_vector *work)`
"""
function gsl_multifit_nlinear_eval_df(x, f, swts, h, fdtype, fdf, df, work)
    ccall((:gsl_multifit_nlinear_eval_df, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, gsl_multifit_nlinear_fdtype, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_matrix}, Ref{gsl_vector}), x, f, swts, h, fdtype, fdf, df, work)
end

"""
    gsl_multifit_nlinear_eval_fvv(h, x, v, f, J, swts, fdf, yvv, work) -> Cint

C signature:
`int gsl_multifit_nlinear_eval_fvv(const double h, const gsl_vector *x, const gsl_vector *v, const gsl_vector *f, const gsl_matrix *J, const gsl_vector *swts, gsl_multifit_nlinear_fdf *fdf, gsl_vector *yvv, gsl_vector *work)`
"""
function gsl_multifit_nlinear_eval_fvv(h, x, v, f, J, swts, fdf, yvv, work)
    ccall((:gsl_multifit_nlinear_eval_fvv, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_vector}), h, x, v, f, J, swts, fdf, yvv, work)
end

"""
    gsl_multifit_nlinear_covar(J, epsrel, covar) -> Cint

C signature:
`int gsl_multifit_nlinear_covar (const gsl_matrix * J, const double epsrel, gsl_matrix * covar)`
"""
function gsl_multifit_nlinear_covar(J, epsrel, covar)
    ccall((:gsl_multifit_nlinear_covar, libgsl), Cint, (Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), J, epsrel, covar)
end

"""
    gsl_multifit_nlinear_test(xtol, gtol, ftol, info, w) -> Cint

C signature:
`int gsl_multifit_nlinear_test (const double xtol, const double gtol, const double ftol, int *info, const gsl_multifit_nlinear_workspace * w)`
"""
function gsl_multifit_nlinear_test(xtol, gtol, ftol, info, w)
    ccall((:gsl_multifit_nlinear_test, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cint}, Ref{gsl_multifit_nlinear_workspace}), xtol, gtol, ftol, info, w)
end

"""
    gsl_multifit_nlinear_df(h, fdtype, x, wts, fdf, f, J, work) -> Cint

C signature:
`int gsl_multifit_nlinear_df(const double h, const gsl_multifit_nlinear_fdtype fdtype, const gsl_vector *x, const gsl_vector *wts, gsl_multifit_nlinear_fdf *fdf, const gsl_vector *f, gsl_matrix *J, gsl_vector *work)`
"""
function gsl_multifit_nlinear_df(h, fdtype, x, wts, fdf, f, J, work)
    ccall((:gsl_multifit_nlinear_df, libgsl), Cint, (Cdouble, gsl_multifit_nlinear_fdtype, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), h, fdtype, x, wts, fdf, f, J, work)
end

"""
    gsl_multifit_nlinear_fdfvv(h, x, v, f, J, swts, fdf, fvv, work) -> Cint

C signature:
`int gsl_multifit_nlinear_fdfvv(const double h, const gsl_vector *x, const gsl_vector *v, const gsl_vector *f, const gsl_matrix *J, const gsl_vector *swts, gsl_multifit_nlinear_fdf *fdf, gsl_vector *fvv, gsl_vector *work)`
"""
function gsl_multifit_nlinear_fdfvv(h, x, v, f, J, swts, fdf, fvv, work)
    ccall((:gsl_multifit_nlinear_fdfvv, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_vector}), h, x, v, f, J, swts, fdf, fvv, work)
end

