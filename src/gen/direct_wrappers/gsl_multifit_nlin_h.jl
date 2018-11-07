#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multifit_nlin.h ######################################################


@doc md"""
    multifit_gradient(J, f, g) -> Cint

C signature:
`int gsl_multifit_gradient (const gsl_matrix * J, const gsl_vector * f, gsl_vector * g)`
"""
function multifit_gradient(J, f, g)
    ccall((:gsl_multifit_gradient, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}), J, f, g)
end

@doc md"""
    multifit_covar(J, epsrel, covar) -> Cint

C signature:
`int gsl_multifit_covar (const gsl_matrix * J, const double epsrel, gsl_matrix * covar)`
"""
function multifit_covar(J, epsrel, covar)
    ccall((:gsl_multifit_covar, libgsl), Cint, (Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), J, epsrel, covar)
end

@doc md"""
    multifit_covar_QRPT(r, perm, epsrel, covar) -> Cint

C signature:
`int gsl_multifit_covar_QRPT (gsl_matrix * r, gsl_permutation * perm, const double epsrel, gsl_matrix * covar)`
"""
function multifit_covar_QRPT(r, perm, epsrel, covar)
    ccall((:gsl_multifit_covar_QRPT, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_permutation}, Cdouble, Ref{gsl_matrix}), r, perm, epsrel, covar)
end

@doc md"""
    multifit_fsolver_alloc(T, n, p) -> Ptr{gsl_multifit_fsolver}

C signature:
`gsl_multifit_fsolver * gsl_multifit_fsolver_alloc (const gsl_multifit_fsolver_type * T, size_t n, size_t p)`
"""
function multifit_fsolver_alloc(T, n, p)
    ccall((:gsl_multifit_fsolver_alloc, libgsl), Ptr{gsl_multifit_fsolver}, (Ref{gsl_multifit_fsolver_type}, Csize_t, Csize_t), T, n, p)
end

@doc md"""
    multifit_fsolver_free(s) -> Cvoid

C signature:
`void gsl_multifit_fsolver_free (gsl_multifit_fsolver * s)`
"""
function multifit_fsolver_free(s)
    ccall((:gsl_multifit_fsolver_free, libgsl), Cvoid, (Ptr{gsl_multifit_fsolver},), s)
end

@doc md"""
    multifit_fsolver_set(s, f, x) -> Cint

C signature:
`int gsl_multifit_fsolver_set (gsl_multifit_fsolver * s, gsl_multifit_function * f, const gsl_vector * x)`
"""
function multifit_fsolver_set(s, f, x)
    ccall((:gsl_multifit_fsolver_set, libgsl), Cint, (Ref{gsl_multifit_fsolver}, Ref{gsl_multifit_function}, Ref{gsl_vector}), s, f, x)
end

@doc md"""
    multifit_fsolver_iterate(s) -> Cint

C signature:
`int gsl_multifit_fsolver_iterate (gsl_multifit_fsolver * s)`
"""
function multifit_fsolver_iterate(s)
    ccall((:gsl_multifit_fsolver_iterate, libgsl), Cint, (Ptr{gsl_multifit_fsolver},), s)
end

@doc md"""
    multifit_fsolver_driver(s, maxiter, epsabs, epsrel) -> Cint

C signature:
`int gsl_multifit_fsolver_driver (gsl_multifit_fsolver * s, const size_t maxiter, const double epsabs, const double epsrel)`
"""
function multifit_fsolver_driver(s, maxiter, epsabs, epsrel)
    ccall((:gsl_multifit_fsolver_driver, libgsl), Cint, (Ref{gsl_multifit_fsolver}, Csize_t, Cdouble, Cdouble), s, maxiter, epsabs, epsrel)
end

@doc md"""
    multifit_fsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multifit_fsolver_name (const gsl_multifit_fsolver * s)`
"""
function multifit_fsolver_name(s)
    ccall((:gsl_multifit_fsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_fsolver},), s)
end

@doc md"""
    multifit_fsolver_position(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_fsolver_position (const gsl_multifit_fsolver * s)`
"""
function multifit_fsolver_position(s)
    ccall((:gsl_multifit_fsolver_position, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_fsolver},), s)
end

@doc md"""
    multifit_fdfsolver_alloc(T, n, p) -> Ptr{gsl_multifit_fdfsolver}

C signature:
`gsl_multifit_fdfsolver * gsl_multifit_fdfsolver_alloc (const gsl_multifit_fdfsolver_type * T, size_t n, size_t p)`
"""
function multifit_fdfsolver_alloc(T, n, p)
    ccall((:gsl_multifit_fdfsolver_alloc, libgsl), Ptr{gsl_multifit_fdfsolver}, (Ref{gsl_multifit_fdfsolver_type}, Csize_t, Csize_t), T, n, p)
end

@doc md"""
    multifit_fdfsolver_set(s, fdf, x) -> Cint

C signature:
`int gsl_multifit_fdfsolver_set (gsl_multifit_fdfsolver * s, gsl_multifit_function_fdf * fdf, const gsl_vector * x)`
"""
function multifit_fdfsolver_set(s, fdf, x)
    ccall((:gsl_multifit_fdfsolver_set, libgsl), Cint, (Ref{gsl_multifit_fdfsolver}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}), s, fdf, x)
end

@doc md"""
    multifit_fdfsolver_wset(s, f, x, wts) -> Cint

C signature:
`int gsl_multifit_fdfsolver_wset (gsl_multifit_fdfsolver * s, gsl_multifit_function_fdf * f, const gsl_vector * x, const gsl_vector * wts)`
"""
function multifit_fdfsolver_wset(s, f, x, wts)
    ccall((:gsl_multifit_fdfsolver_wset, libgsl), Cint, (Ref{gsl_multifit_fdfsolver}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_vector}), s, f, x, wts)
end

@doc md"""
    multifit_fdfsolver_iterate(s) -> Cint

C signature:
`int gsl_multifit_fdfsolver_iterate (gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_iterate(s)
    ccall((:gsl_multifit_fdfsolver_iterate, libgsl), Cint, (Ptr{gsl_multifit_fdfsolver},), s)
end

@doc md"""
    multifit_fdfsolver_driver(s, maxiter, xtol, gtol, ftol, info) -> Cint

C signature:
`int gsl_multifit_fdfsolver_driver (gsl_multifit_fdfsolver * s, const size_t maxiter, const double xtol, const double gtol, const double ftol, int *info)`
"""
function multifit_fdfsolver_driver(s, maxiter, xtol, gtol, ftol, info)
    ccall((:gsl_multifit_fdfsolver_driver, libgsl), Cint, (Ref{gsl_multifit_fdfsolver}, Csize_t, Cdouble, Cdouble, Cdouble, Ref{Cint}), s, maxiter, xtol, gtol, ftol, info)
end

@doc md"""
    multifit_fdfsolver_jac(s, J) -> Cint

C signature:
`int gsl_multifit_fdfsolver_jac (gsl_multifit_fdfsolver * s, gsl_matrix * J)`
"""
function multifit_fdfsolver_jac(s, J)
    ccall((:gsl_multifit_fdfsolver_jac, libgsl), Cint, (Ref{gsl_multifit_fdfsolver}, Ref{gsl_matrix}), s, J)
end

@doc md"""
    multifit_fdfsolver_free(s) -> Cvoid

C signature:
`void gsl_multifit_fdfsolver_free (gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_free(s)
    ccall((:gsl_multifit_fdfsolver_free, libgsl), Cvoid, (Ptr{gsl_multifit_fdfsolver},), s)
end

@doc md"""
    multifit_fdfsolver_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_multifit_fdfsolver_name (const gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_name(s)
    ccall((:gsl_multifit_fdfsolver_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_fdfsolver},), s)
end

@doc md"""
    multifit_fdfsolver_position(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_fdfsolver_position (const gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_position(s)
    ccall((:gsl_multifit_fdfsolver_position, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_fdfsolver},), s)
end

@doc md"""
    multifit_fdfsolver_residual(s) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_fdfsolver_residual (const gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_residual(s)
    ccall((:gsl_multifit_fdfsolver_residual, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_fdfsolver},), s)
end

@doc md"""
    multifit_fdfsolver_niter(s) -> Csize_t

C signature:
`size_t gsl_multifit_fdfsolver_niter (const gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_niter(s)
    ccall((:gsl_multifit_fdfsolver_niter, libgsl), Csize_t, (Ptr{gsl_multifit_fdfsolver},), s)
end

@doc md"""
    multifit_eval_wf(fdf, x, wts, y) -> Cint

C signature:
`int gsl_multifit_eval_wf(gsl_multifit_function_fdf *fdf, const gsl_vector *x, const gsl_vector *wts, gsl_vector *y)`
"""
function multifit_eval_wf(fdf, x, wts, y)
    ccall((:gsl_multifit_eval_wf, libgsl), Cint, (Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}), fdf, x, wts, y)
end

@doc md"""
    multifit_eval_wdf(fdf, x, wts, dy) -> Cint

C signature:
`int gsl_multifit_eval_wdf(gsl_multifit_function_fdf *fdf, const gsl_vector *x, const gsl_vector *wts, gsl_matrix *dy)`
"""
function multifit_eval_wdf(fdf, x, wts, dy)
    ccall((:gsl_multifit_eval_wdf, libgsl), Cint, (Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}), fdf, x, wts, dy)
end

@doc md"""
    multifit_fdfsolver_test(s, xtol, gtol, ftol, info) -> Cint

C signature:
`int gsl_multifit_fdfsolver_test (const gsl_multifit_fdfsolver * s, const double xtol, const double gtol, const double ftol, int *info)`
"""
function multifit_fdfsolver_test(s, xtol, gtol, ftol, info)
    ccall((:gsl_multifit_fdfsolver_test, libgsl), Cint, (Ref{gsl_multifit_fdfsolver}, Cdouble, Cdouble, Cdouble, Ref{Cint}), s, xtol, gtol, ftol, info)
end

@doc md"""
    multifit_test_delta(dx, x, epsabs, epsrel) -> Cint

C signature:
`int gsl_multifit_test_delta (const gsl_vector * dx, const gsl_vector * x, double epsabs, double epsrel)`
"""
function multifit_test_delta(dx, x, epsabs, epsrel)
    ccall((:gsl_multifit_test_delta, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Cdouble), dx, x, epsabs, epsrel)
end

@doc md"""
    multifit_test_gradient(g, epsabs) -> Cint

C signature:
`int gsl_multifit_test_gradient (const gsl_vector * g, double epsabs)`
"""
function multifit_test_gradient(g, epsabs)
    ccall((:gsl_multifit_test_gradient, libgsl), Cint, (Ref{gsl_vector}, Cdouble), g, epsabs)
end

@doc md"""
    multifit_fdfsolver_dif_df(x, wts, fdf, f, J) -> Cint

C signature:
`int gsl_multifit_fdfsolver_dif_df(const gsl_vector *x, const gsl_vector *wts, gsl_multifit_function_fdf *fdf, const gsl_vector *f, gsl_matrix *J)`
"""
function multifit_fdfsolver_dif_df(x, wts, fdf, f, J)
    ccall((:gsl_multifit_fdfsolver_dif_df, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_matrix}), x, wts, fdf, f, J)
end

@doc md"""
    multifit_fdfsolver_dif_fdf(x, fdf, f, J) -> Cint

C signature:
`int gsl_multifit_fdfsolver_dif_fdf(const gsl_vector *x, gsl_multifit_function_fdf *fdf, gsl_vector *f, gsl_matrix *J)`
"""
function multifit_fdfsolver_dif_fdf(x, fdf, f, J)
    ccall((:gsl_multifit_fdfsolver_dif_fdf, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_matrix}), x, fdf, f, J)
end

@doc md"""
    multifit_fdfridge_alloc(T, n, p) -> Ptr{gsl_multifit_fdfridge}

C signature:
`gsl_multifit_fdfridge * gsl_multifit_fdfridge_alloc (const gsl_multifit_fdfsolver_type * T, const size_t n, const size_t p)`
"""
function multifit_fdfridge_alloc(T, n, p)
    ccall((:gsl_multifit_fdfridge_alloc, libgsl), Ptr{gsl_multifit_fdfridge}, (Ref{gsl_multifit_fdfsolver_type}, Csize_t, Csize_t), T, n, p)
end

@doc md"""
    multifit_fdfridge_free(work) -> Cvoid

C signature:
`void gsl_multifit_fdfridge_free(gsl_multifit_fdfridge *work)`
"""
function multifit_fdfridge_free(work)
    ccall((:gsl_multifit_fdfridge_free, libgsl), Cvoid, (Ptr{gsl_multifit_fdfridge},), work)
end

@doc md"""
    multifit_fdfridge_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_multifit_fdfridge_name(const gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_name(w)
    ccall((:gsl_multifit_fdfridge_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_fdfridge},), w)
end

@doc md"""
    multifit_fdfridge_position(w) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_multifit_fdfridge_position (const gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_position(w)
    ccall((:gsl_multifit_fdfridge_position, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_fdfridge},), w)
end

@doc md"""
    multifit_fdfridge_residual(w) -> Ptr{gsl_vector}

C signature:
`gsl_vector *gsl_multifit_fdfridge_residual (const gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_residual(w)
    ccall((:gsl_multifit_fdfridge_residual, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_fdfridge},), w)
end

@doc md"""
    multifit_fdfridge_niter(w) -> Csize_t

C signature:
`size_t gsl_multifit_fdfridge_niter (const gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_niter(w)
    ccall((:gsl_multifit_fdfridge_niter, libgsl), Csize_t, (Ptr{gsl_multifit_fdfridge},), w)
end

@doc md"""
    multifit_fdfridge_set(w, f, x, lambda) -> Cint

C signature:
`int gsl_multifit_fdfridge_set (gsl_multifit_fdfridge * w, gsl_multifit_function_fdf * f, const gsl_vector * x, const double lambda)`
"""
function multifit_fdfridge_set(w, f, x, lambda)
    ccall((:gsl_multifit_fdfridge_set, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Cdouble), w, f, x, lambda)
end

@doc md"""
    multifit_fdfridge_wset(w, f, x, lambda, wts) -> Cint

C signature:
`int gsl_multifit_fdfridge_wset (gsl_multifit_fdfridge * w, gsl_multifit_function_fdf * f, const gsl_vector * x, const double lambda, const gsl_vector * wts)`
"""
function multifit_fdfridge_wset(w, f, x, lambda, wts)
    ccall((:gsl_multifit_fdfridge_wset, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}), w, f, x, lambda, wts)
end

@doc md"""
    multifit_fdfridge_set2(w, f, x, lambda) -> Cint

C signature:
`int gsl_multifit_fdfridge_set2 (gsl_multifit_fdfridge * w, gsl_multifit_function_fdf * f, const gsl_vector * x, const gsl_vector * lambda)`
"""
function multifit_fdfridge_set2(w, f, x, lambda)
    ccall((:gsl_multifit_fdfridge_set2, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_vector}), w, f, x, lambda)
end

@doc md"""
    multifit_fdfridge_wset2(w, f, x, lambda, wts) -> Cint

C signature:
`int gsl_multifit_fdfridge_wset2 (gsl_multifit_fdfridge * w, gsl_multifit_function_fdf * f, const gsl_vector * x, const gsl_vector * lambda, const gsl_vector * wts)`
"""
function multifit_fdfridge_wset2(w, f, x, lambda, wts)
    ccall((:gsl_multifit_fdfridge_wset2, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}), w, f, x, lambda, wts)
end

@doc md"""
    multifit_fdfridge_set3(w, f, x, L) -> Cint

C signature:
`int gsl_multifit_fdfridge_set3 (gsl_multifit_fdfridge * w, gsl_multifit_function_fdf * f, const gsl_vector * x, const gsl_matrix * L)`
"""
function multifit_fdfridge_set3(w, f, x, L)
    ccall((:gsl_multifit_fdfridge_set3, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_matrix}), w, f, x, L)
end

@doc md"""
    multifit_fdfridge_wset3(w, f, x, L, wts) -> Cint

C signature:
`int gsl_multifit_fdfridge_wset3 (gsl_multifit_fdfridge * w, gsl_multifit_function_fdf * f, const gsl_vector * x, const gsl_matrix * L, const gsl_vector * wts)`
"""
function multifit_fdfridge_wset3(w, f, x, L, wts)
    ccall((:gsl_multifit_fdfridge_wset3, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Ref{gsl_multifit_function_fdf}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), w, f, x, L, wts)
end

@doc md"""
    multifit_fdfridge_iterate(w) -> Cint

C signature:
`int gsl_multifit_fdfridge_iterate (gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_iterate(w)
    ccall((:gsl_multifit_fdfridge_iterate, libgsl), Cint, (Ptr{gsl_multifit_fdfridge},), w)
end

@doc md"""
    multifit_fdfridge_driver(w, maxiter, xtol, gtol, ftol, info) -> Cint

C signature:
`int gsl_multifit_fdfridge_driver (gsl_multifit_fdfridge * w, const size_t maxiter, const double xtol, const double gtol, const double ftol, int *info)`
"""
function multifit_fdfridge_driver(w, maxiter, xtol, gtol, ftol, info)
    ccall((:gsl_multifit_fdfridge_driver, libgsl), Cint, (Ref{gsl_multifit_fdfridge}, Csize_t, Cdouble, Cdouble, Cdouble, Ref{Cint}), w, maxiter, xtol, gtol, ftol, info)
end

