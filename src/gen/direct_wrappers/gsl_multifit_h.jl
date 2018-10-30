#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multifit.h ###########################################################


"""
    gsl_multifit_linear_alloc(n, p) -> Ptr{gsl_multifit_linear_workspace}

C signature:
`gsl_multifit_linear_workspace * gsl_multifit_linear_alloc (const size_t n, const size_t p)`
"""
function gsl_multifit_linear_alloc(n, p)
    ccall((:gsl_multifit_linear_alloc, libgsl), Ptr{gsl_multifit_linear_workspace}, (Csize_t, Csize_t), n, p)
end

"""
    gsl_multifit_linear_free(w) -> Cvoid

C signature:
`void gsl_multifit_linear_free (gsl_multifit_linear_workspace * w)`
"""
function gsl_multifit_linear_free(w)
    ccall((:gsl_multifit_linear_free, libgsl), Cvoid, (Ptr{gsl_multifit_linear_workspace},), w)
end

"""
    gsl_multifit_linear(X, y, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_linear (const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, double * chisq, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear(X, y, c, cov, chisq, work)
    ccall((:gsl_multifit_linear, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, y, c, cov, chisq, work)
end

"""
    gsl_multifit_linear_tsvd(X, y, tol, c, cov, chisq, rank, work) -> Cint

C signature:
`int gsl_multifit_linear_tsvd (const gsl_matrix * X, const gsl_vector * y, const double tol, gsl_vector * c, gsl_matrix * cov, double * chisq, size_t * rank, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_tsvd(X, y, tol, c, cov, chisq, rank, work)
    ccall((:gsl_multifit_linear_tsvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Csize_t}, Ref{gsl_multifit_linear_workspace}), X, y, tol, c, cov, chisq, rank, work)
end

"""
    gsl_multifit_linear_svd(X, work) -> Cint

C signature:
`int gsl_multifit_linear_svd (const gsl_matrix * X, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_svd(X, work)
    ccall((:gsl_multifit_linear_svd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), X, work)
end

"""
    gsl_multifit_linear_bsvd(X, work) -> Cint

C signature:
`int gsl_multifit_linear_bsvd (const gsl_matrix * X, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_bsvd(X, work)
    ccall((:gsl_multifit_linear_bsvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), X, work)
end

"""
    gsl_multifit_linear_rank(tol, work) -> Csize_t

C signature:
`size_t gsl_multifit_linear_rank(const double tol, const gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_rank(tol, work)
    ccall((:gsl_multifit_linear_rank, libgsl), Csize_t, (Cdouble, Ref{gsl_multifit_linear_workspace}), tol, work)
end

"""
    gsl_multifit_linear_solve(lambda, X, y, c, rnorm, snorm, work) -> Cint

C signature:
`int gsl_multifit_linear_solve (const double lambda, const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, double *rnorm, double *snorm, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_solve(lambda, X, y, c, rnorm, snorm, work)
    ccall((:gsl_multifit_linear_solve, libgsl), Cint, (Cdouble, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), lambda, X, y, c, rnorm, snorm, work)
end

"""
    gsl_multifit_linear_applyW(X, w, y, WX, Wy) -> Cint

C signature:
`int gsl_multifit_linear_applyW(const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * WX, gsl_vector * Wy)`
"""
function gsl_multifit_linear_applyW(X, w, y, WX, Wy)
    ccall((:gsl_multifit_linear_applyW, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), X, w, y, WX, Wy)
end

"""
    gsl_multifit_linear_stdform1(L, X, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multifit_linear_stdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_stdform1(L, X, y, Xs, ys, work)
    ccall((:gsl_multifit_linear_stdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), L, X, y, Xs, ys, work)
end

"""
    gsl_multifit_linear_wstdform1(L, X, w, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multifit_linear_wstdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_wstdform1(L, X, w, y, Xs, ys, work)
    ccall((:gsl_multifit_linear_wstdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), L, X, w, y, Xs, ys, work)
end

"""
    gsl_multifit_linear_L_decomp(L, tau) -> Cint

C signature:
`int gsl_multifit_linear_L_decomp (gsl_matrix * L, gsl_vector * tau)`
"""
function gsl_multifit_linear_L_decomp(L, tau)
    ccall((:gsl_multifit_linear_L_decomp, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}), L, tau)
end

"""
    gsl_multifit_linear_stdform2(LQR, Ltau, X, y, Xs, ys, M, work) -> Cint

C signature:
`int gsl_multifit_linear_stdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_matrix * M, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_stdform2(LQR, Ltau, X, y, Xs, ys, M, work)
    ccall((:gsl_multifit_linear_stdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, y, Xs, ys, M, work)
end

"""
    gsl_multifit_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, M, work) -> Cint

C signature:
`int gsl_multifit_linear_wstdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_matrix * M, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, M, work)
    ccall((:gsl_multifit_linear_wstdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, w, y, Xs, ys, M, work)
end

"""
    gsl_multifit_linear_genform1(L, cs, c, work) -> Cint

C signature:
`int gsl_multifit_linear_genform1 (const gsl_vector * L, const gsl_vector * cs, gsl_vector * c, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_genform1(L, cs, c, work)
    ccall((:gsl_multifit_linear_genform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), L, cs, c, work)
end

"""
    gsl_multifit_linear_genform2(LQR, Ltau, X, y, cs, M, c, work) -> Cint

C signature:
`int gsl_multifit_linear_genform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, const gsl_vector * cs, const gsl_matrix * M, gsl_vector * c, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_genform2(LQR, Ltau, X, y, cs, M, c, work)
    ccall((:gsl_multifit_linear_genform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, y, cs, M, c, work)
end

"""
    gsl_multifit_linear_wgenform2(LQR, Ltau, X, w, y, cs, M, c, work) -> Cint

C signature:
`int gsl_multifit_linear_wgenform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, const gsl_vector * cs, const gsl_matrix * M, gsl_vector * c, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_wgenform2(LQR, Ltau, X, w, y, cs, M, c, work)
    ccall((:gsl_multifit_linear_wgenform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, w, y, cs, M, c, work)
end

"""
    gsl_multifit_linear_lreg(smin, smax, reg_param) -> Cint

C signature:
`int gsl_multifit_linear_lreg (const double smin, const double smax, gsl_vector * reg_param)`
"""
function gsl_multifit_linear_lreg(smin, smax, reg_param)
    ccall((:gsl_multifit_linear_lreg, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_vector}), smin, smax, reg_param)
end

"""
    gsl_multifit_linear_lcurve(y, reg_param, rho, eta, work) -> Cint

C signature:
`int gsl_multifit_linear_lcurve (const gsl_vector * y, gsl_vector * reg_param, gsl_vector * rho, gsl_vector * eta, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_lcurve(y, reg_param, rho, eta, work)
    ccall((:gsl_multifit_linear_lcurve, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), y, reg_param, rho, eta, work)
end

"""
    gsl_multifit_linear_lcorner(rho, eta, idx) -> Cint

C signature:
`int gsl_multifit_linear_lcorner(const gsl_vector *rho, const gsl_vector *eta, size_t *idx)`
"""
function gsl_multifit_linear_lcorner(rho, eta, idx)
    ccall((:gsl_multifit_linear_lcorner, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{Csize_t}), rho, eta, idx)
end

"""
    gsl_multifit_linear_lcorner2(reg_param, eta, idx) -> Cint

C signature:
`int gsl_multifit_linear_lcorner2(const gsl_vector *reg_param, const gsl_vector *eta, size_t *idx)`
"""
function gsl_multifit_linear_lcorner2(reg_param, eta, idx)
    ccall((:gsl_multifit_linear_lcorner2, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{Csize_t}), reg_param, eta, idx)
end

"""
    gsl_multifit_linear_Lk(p, k, L) -> Cint

C signature:
`int gsl_multifit_linear_Lk(const size_t p, const size_t k, gsl_matrix *L)`
"""
function gsl_multifit_linear_Lk(p, k, L)
    ccall((:gsl_multifit_linear_Lk, libgsl), Cint, (Csize_t, Csize_t, Ref{gsl_matrix}), p, k, L)
end

"""
    gsl_multifit_linear_Lsobolev(p, kmax, alpha, L, work) -> Cint

C signature:
`int gsl_multifit_linear_Lsobolev(const size_t p, const size_t kmax, const gsl_vector *alpha, gsl_matrix *L, gsl_multifit_linear_workspace *work)`
"""
function gsl_multifit_linear_Lsobolev(p, kmax, alpha, L, work)
    ccall((:gsl_multifit_linear_Lsobolev, libgsl), Cint, (Csize_t, Csize_t, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), p, kmax, alpha, L, work)
end

"""
    gsl_multifit_wlinear(X, w, y, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_wlinear (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, double * chisq, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_wlinear(X, w, y, c, cov, chisq, work)
    ccall((:gsl_multifit_wlinear, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, w, y, c, cov, chisq, work)
end

"""
    gsl_multifit_wlinear_tsvd(X, w, y, tol, c, cov, chisq, rank, work) -> Cint

C signature:
`int gsl_multifit_wlinear_tsvd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, const double tol, gsl_vector * c, gsl_matrix * cov, double * chisq, size_t * rank, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_wlinear_tsvd(X, w, y, tol, c, cov, chisq, rank, work)
    ccall((:gsl_multifit_wlinear_tsvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Csize_t}, Ref{gsl_multifit_linear_workspace}), X, w, y, tol, c, cov, chisq, rank, work)
end

"""
    gsl_multifit_wlinear_svd(X, w, y, tol, rank, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_wlinear_svd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, double tol, size_t * rank, gsl_vector * c, gsl_matrix * cov, double *chisq, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_wlinear_svd(X, w, y, tol, rank, c, cov, chisq, work)
    ccall((:gsl_multifit_wlinear_svd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{Csize_t}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, w, y, tol, rank, c, cov, chisq, work)
end

"""
    gsl_multifit_wlinear_usvd(X, w, y, tol, rank, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_wlinear_usvd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, double tol, size_t * rank, gsl_vector * c, gsl_matrix * cov, double *chisq, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_wlinear_usvd(X, w, y, tol, rank, c, cov, chisq, work)
    ccall((:gsl_multifit_wlinear_usvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{Csize_t}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, w, y, tol, rank, c, cov, chisq, work)
end

"""
    gsl_multifit_linear_est(x, c, cov, y, y_err) -> Cint

C signature:
`int gsl_multifit_linear_est (const gsl_vector * x, const gsl_vector * c, const gsl_matrix * cov, double *y, double *y_err)`
"""
function gsl_multifit_linear_est(x, c, cov, y, y_err)
    ccall((:gsl_multifit_linear_est, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}), x, c, cov, y, y_err)
end

"""
    gsl_multifit_linear_rcond(w) -> Cdouble

C signature:
`double gsl_multifit_linear_rcond (const gsl_multifit_linear_workspace * w)`
"""
function gsl_multifit_linear_rcond(w)
    ccall((:gsl_multifit_linear_rcond, libgsl), Cdouble, (Ptr{gsl_multifit_linear_workspace},), w)
end

"""
    gsl_multifit_linear_residuals(X, y, c, r) -> Cint

C signature:
`int gsl_multifit_linear_residuals (const gsl_matrix *X, const gsl_vector *y, const gsl_vector *c, gsl_vector *r)`
"""
function gsl_multifit_linear_residuals(X, y, c, r)
    ccall((:gsl_multifit_linear_residuals, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}), X, y, c, r)
end

"""
    gsl_multifit_linear_gcv_init(y, reg_param, UTy, delta0, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv_init(const gsl_vector * y, gsl_vector * reg_param, gsl_vector * UTy, double * delta0, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_gcv_init(y, reg_param, UTy, delta0, work)
    ccall((:gsl_multifit_linear_gcv_init, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), y, reg_param, UTy, delta0, work)
end

"""
    gsl_multifit_linear_gcv_curve(reg_param, UTy, delta0, G, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv_curve(const gsl_vector * reg_param, const gsl_vector * UTy, const double delta0, gsl_vector * G, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_gcv_curve(reg_param, UTy, delta0, G, work)
    ccall((:gsl_multifit_linear_gcv_curve, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), reg_param, UTy, delta0, G, work)
end

"""
    gsl_multifit_linear_gcv_min(reg_param, UTy, G, delta0, lambda, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv_min(const gsl_vector * reg_param, const gsl_vector * UTy, const gsl_vector * G, const double delta0, double * lambda, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_gcv_min(reg_param, UTy, G, delta0, lambda, work)
    ccall((:gsl_multifit_linear_gcv_min, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), reg_param, UTy, G, delta0, lambda, work)
end

"""
    gsl_multifit_linear_gcv_calc(lambda, UTy, delta0, work) -> Cdouble

C signature:
`double gsl_multifit_linear_gcv_calc(const double lambda, const gsl_vector * UTy, const double delta0, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_gcv_calc(lambda, UTy, delta0, work)
    ccall((:gsl_multifit_linear_gcv_calc, libgsl), Cdouble, (Cdouble, Ref{gsl_vector}, Cdouble, Ref{gsl_multifit_linear_workspace}), lambda, UTy, delta0, work)
end

"""
    gsl_multifit_linear_gcv(y, reg_param, G, lambda, G_lambda, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv(const gsl_vector * y, gsl_vector * reg_param, gsl_vector * G, double * lambda, double * G_lambda, gsl_multifit_linear_workspace * work)`
"""
function gsl_multifit_linear_gcv(y, reg_param, G, lambda, G_lambda, work)
    ccall((:gsl_multifit_linear_gcv, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), y, reg_param, G, lambda, G_lambda, work)
end

"""
    gsl_multifit_robust_alloc(T, n, p) -> Ptr{gsl_multifit_robust_workspace}

C signature:
`gsl_multifit_robust_workspace *gsl_multifit_robust_alloc(const gsl_multifit_robust_type *T, const size_t n, const size_t p)`
"""
function gsl_multifit_robust_alloc(T, n, p)
    ccall((:gsl_multifit_robust_alloc, libgsl), Ptr{gsl_multifit_robust_workspace}, (Ref{gsl_multifit_robust_type}, Csize_t, Csize_t), T, n, p)
end

"""
    gsl_multifit_robust_free(w) -> Cvoid

C signature:
`void gsl_multifit_robust_free(gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust_free(w)
    ccall((:gsl_multifit_robust_free, libgsl), Cvoid, (Ptr{gsl_multifit_robust_workspace},), w)
end

"""
    gsl_multifit_robust_tune(tune, w) -> Cint

C signature:
`int gsl_multifit_robust_tune(const double tune, gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust_tune(tune, w)
    ccall((:gsl_multifit_robust_tune, libgsl), Cint, (Cdouble, Ref{gsl_multifit_robust_workspace}), tune, w)
end

"""
    gsl_multifit_robust_maxiter(maxiter, w) -> Cint

C signature:
`int gsl_multifit_robust_maxiter(const size_t maxiter, gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust_maxiter(maxiter, w)
    ccall((:gsl_multifit_robust_maxiter, libgsl), Cint, (Csize_t, Ref{gsl_multifit_robust_workspace}), maxiter, w)
end

"""
    gsl_multifit_robust_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_multifit_robust_name(const gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust_name(w)
    ccall((:gsl_multifit_robust_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_robust_workspace},), w)
end

"""
    gsl_multifit_robust_statistics(w) -> gsl_multifit_robust_stats

C signature:
`gsl_multifit_robust_stats gsl_multifit_robust_statistics(const gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust_statistics(w)
    ccall((:gsl_multifit_robust_statistics, libgsl), gsl_multifit_robust_stats, (Ptr{gsl_multifit_robust_workspace},), w)
end

"""
    gsl_multifit_robust_weights(r, wts, w) -> Cint

C signature:
`int gsl_multifit_robust_weights(const gsl_vector *r, gsl_vector *wts, gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust_weights(r, wts, w)
    ccall((:gsl_multifit_robust_weights, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_robust_workspace}), r, wts, w)
end

"""
    gsl_multifit_robust(X, y, c, cov, w) -> Cint

C signature:
`int gsl_multifit_robust(const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, gsl_matrix *cov, gsl_multifit_robust_workspace *w)`
"""
function gsl_multifit_robust(X, y, c, cov, w)
    ccall((:gsl_multifit_robust, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_robust_workspace}), X, y, c, cov, w)
end

"""
    gsl_multifit_robust_est(x, c, cov, y, y_err) -> Cint

C signature:
`int gsl_multifit_robust_est(const gsl_vector * x, const gsl_vector * c, const gsl_matrix * cov, double *y, double *y_err)`
"""
function gsl_multifit_robust_est(x, c, cov, y, y_err)
    ccall((:gsl_multifit_robust_est, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}), x, c, cov, y, y_err)
end

"""
    gsl_multifit_robust_residuals(X, y, c, r, w) -> Cint

C signature:
`int gsl_multifit_robust_residuals(const gsl_matrix * X, const gsl_vector * y, const gsl_vector * c, gsl_vector * r, gsl_multifit_robust_workspace * w)`
"""
function gsl_multifit_robust_residuals(X, y, c, r, w)
    ccall((:gsl_multifit_robust_residuals, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_robust_workspace}), X, y, c, r, w)
end

