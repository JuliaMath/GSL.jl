#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multifit.h ###########################################################


@doc md"""
    multifit_linear_alloc(n, p) -> Ptr{gsl_multifit_linear_workspace}

C signature:
`gsl_multifit_linear_workspace * gsl_multifit_linear_alloc (const size_t n, const size_t p)`

GSL documentation:

### `gsl_multifit_linear_workspace * gsl_multifit_linear_alloc (const size_t n, const size_t p)`

> This function allocates a workspace for fitting a model to a maximum
> of `n` observations using a maximum of `p` parameters. The user may
> later supply a smaller least squares system if desired. The size of
> the workspace is $O(np + p^2)$.

"""
function multifit_linear_alloc(n, p)
    ccall((:gsl_multifit_linear_alloc, libgsl), Ptr{gsl_multifit_linear_workspace}, (Csize_t, Csize_t), n, p)
end

@doc md"""
    multifit_linear_free(w) -> Cvoid

C signature:
`void gsl_multifit_linear_free (gsl_multifit_linear_workspace * w)`

GSL documentation:

### `void gsl_multifit_linear_free (gsl_multifit_linear_workspace * work)`

> This function frees the memory associated with the workspace `w`.

"""
function multifit_linear_free(w)
    ccall((:gsl_multifit_linear_free, libgsl), Cvoid, (Ptr{gsl_multifit_linear_workspace},), w)
end

@doc md"""
    multifit_linear(X, y, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_linear (const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, double * chisq, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear (const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, double * chisq, gsl_multifit_linear_workspace * work)`

> This function computes the best-fit parameters `c` of the model
> $y = X c$ for the observations `y` and the matrix of predictor
> variables `X`, using the preallocated workspace provided in `work`.
> The $p$-by-$p$ variance-covariance matrix of the model parameters
> `cov` is set to $\sigma^2 (X^T X)^{-1}$, where $\sigma$ is the
> standard deviation of the fit residuals. The sum of squares of the
> residuals from the best-fit, $\chi^2$, is returned in `chisq`. If the
> coefficient of determination is desired, it can be computed from the
> expression $R^2 = 1 - \chi^2 / TSS$, where the total sum of squares
> (TSS) of the observations `y` may be computed from `gsl_stats_tss`.
>
> The best-fit is found by singular value decomposition of the matrix
> `X` using the modified Golub-Reinsch SVD algorithm, with column
> scaling to improve the accuracy of the singular values. Any components
> which have zero singular value (to machine precision) are discarded
> from the fit.

"""
function multifit_linear(X, y, c, cov, chisq, work)
    ccall((:gsl_multifit_linear, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, y, c, cov, chisq, work)
end

@doc md"""
    multifit_linear_tsvd(X, y, tol, c, cov, chisq, rank, work) -> Cint

C signature:
`int gsl_multifit_linear_tsvd (const gsl_matrix * X, const gsl_vector * y, const double tol, gsl_vector * c, gsl_matrix * cov, double * chisq, size_t * rank, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_tsvd (const gsl_matrix * X, const gsl_vector * y, const double tol, gsl_vector * c, gsl_matrix * cov, double * chisq, size_t * rank, gsl_multifit_linear_workspace * work)`

> This function computes the best-fit parameters `c` of the model
> $y = X c$ for the observations `y` and the matrix of predictor
> variables `X`, using a truncated SVD expansion. Singular values which
> satisfy $s_i \le tol \times s_0$ are discarded from the fit, where
> $s_0$ is the largest singular value. The $p$-by-$p$
> variance-covariance matrix of the model parameters `cov` is set to
> $\sigma^2 (X^T X)^{-1}$, where $\sigma$ is the standard deviation of
> the fit residuals. The sum of squares of the residuals from the
> best-fit, $\chi^2$, is returned in `chisq`. The effective rank (number
> of singular values used in solution) is returned in `rank`. If the
> coefficient of determination is desired, it can be computed from the
> expression $R^2 = 1 - \chi^2 / TSS$, where the total sum of squares
> (TSS) of the observations `y` may be computed from `gsl_stats_tss`.

"""
function multifit_linear_tsvd(X, y, tol, c, cov, chisq, rank, work)
    ccall((:gsl_multifit_linear_tsvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Csize_t}, Ref{gsl_multifit_linear_workspace}), X, y, tol, c, cov, chisq, rank, work)
end

@doc md"""
    multifit_linear_svd(X, work) -> Cint

C signature:
`int gsl_multifit_linear_svd (const gsl_matrix * X, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_svd (const gsl_matrix * X, gsl_multifit_linear_workspace * work)`

> This function performs a singular value decomposition of the matrix
> `X` and stores the SVD factors internally in `work`.

"""
function multifit_linear_svd(X, work)
    ccall((:gsl_multifit_linear_svd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), X, work)
end

@doc md"""
    multifit_linear_bsvd(X, work) -> Cint

C signature:
`int gsl_multifit_linear_bsvd (const gsl_matrix * X, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_bsvd (const gsl_matrix * X, gsl_multifit_linear_workspace * work)`

> This function performs a singular value decomposition of the matrix
> `X` and stores the SVD factors internally in `work`. The matrix `X` is
> first balanced by applying column scaling factors to improve the
> accuracy of the singular values.

"""
function multifit_linear_bsvd(X, work)
    ccall((:gsl_multifit_linear_bsvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), X, work)
end

@doc md"""
    multifit_linear_rank(tol, work) -> Csize_t

C signature:
`size_t gsl_multifit_linear_rank(const double tol, const gsl_multifit_linear_workspace * work)`

GSL documentation:

### `size_t gsl_multifit_linear_rank (const double tol, const gsl_multifit_linear_workspace * work)`

> This function returns the rank of the matrix $X$ which must first have
> its singular value decomposition computed. The rank is computed by
> counting the number of singular values $\sigma_j$ which satisfy
> $\sigma_j > tol \times \sigma_0$, where $\sigma_0$ is the largest
> singular value.

"""
function multifit_linear_rank(tol, work)
    ccall((:gsl_multifit_linear_rank, libgsl), Csize_t, (Cdouble, Ref{gsl_multifit_linear_workspace}), tol, work)
end

@doc md"""
    multifit_linear_solve(lambda, X, y, c, rnorm, snorm, work) -> Cint

C signature:
`int gsl_multifit_linear_solve (const double lambda, const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, double *rnorm, double *snorm, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_solve (const double lambda, const gsl_matrix * Xs, const gsl_vector * ys, gsl_vector * cs, double * rnorm, double * snorm, gsl_multifit_linear_workspace * work)`

> This function computes the regularized best-fit parameters $\tilde{c}$
> which minimize the cost function
> $\chi^2 = || \tilde{y} - \tilde{X} \tilde{c} ||^2 + \lambda^2 || \tilde{c} ||^2$
> which is in standard form. The least squares system must therefore be
> converted to standard form prior to calling this function. The
> observation vector $\tilde{y}$ is provided in `ys` and the matrix of
> predictor variables $\tilde{X}$ in `Xs`. The solution vector
> $\tilde{c}$ is returned in `cs`, which has length min($m,p$). The SVD
> of `Xs` must be computed prior to calling this function, using
> `gsl_multifit_linear_svd`. The regularization parameter $\lambda$ is
> provided in `lambda`. The residual norm
> $|| \tilde{y} - \tilde{X} \tilde{c} || = ||y - X c||_W$ is returned in
> `rnorm`. The solution norm $|| \tilde{c} || = ||L c||$ is returned in
> `snorm`.

"""
function multifit_linear_solve(lambda, X, y, c, rnorm, snorm, work)
    ccall((:gsl_multifit_linear_solve, libgsl), Cint, (Cdouble, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), lambda, X, y, c, rnorm, snorm, work)
end

@doc md"""
    multifit_linear_applyW(X, w, y, WX, Wy) -> Cint

C signature:
`int gsl_multifit_linear_applyW(const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * WX, gsl_vector * Wy)`

GSL documentation:

### `int gsl_multifit_linear_applyW (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * WX, gsl_vector * Wy)`

> For weighted least squares systems with $L = I$, this function may be
> used to convert the system to standard form by applying the weight
> matrix $W = \diag(w)$ to the least squares matrix `X` and observation
> vector `y`. On output, `WX` is equal to $W^{1/2} X$ and `Wy` is equal
> to $W^{1/2} y$. It is allowed for `WX` = `X` and `Wy` = `y` for an
> in-place transform.

"""
function multifit_linear_applyW(X, w, y, WX, Wy)
    ccall((:gsl_multifit_linear_applyW, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), X, w, y, WX, Wy)
end

@doc md"""
    multifit_linear_stdform1(L, X, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multifit_linear_stdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_stdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multifit_linear_workspace * work)`

> int gsl\_multifit\_linear\_wstdform1 (const gsl\_vector \* L, const
> gsl\_matrix \* X, const gsl\_vector \* w, const gsl\_vector \* y,
> gsl\_matrix \* Xs, gsl\_vector \* ys, gsl\_multifit\_linear\_workspace
> \* work)

> These functions define a regularization matrix
> $L = \diag(l_0,l_1,...,l_{p-1})$. The diagonal matrix element $l_i$ is
> provided by the $i$-th element of the input vector `L`. The $n$-by-$p$
> least squares matrix `X` and vector `y` of length $n$ are then
> converted to standard form as described above and the parameters
> ($\tilde{X}$, $\tilde{y}$) are stored in `Xs` and `ys` on output. `Xs`
> and `ys` have the same dimensions as `X` and `y`. Optional data
> weights may be supplied in the vector `w` of length $n$. In order to
> apply this transformation, $L^{-1}$ must exist and so none of the
> $l_i$ may be zero. After the standard form system has been solved, use
> `gsl_multifit_linear_genform1` to recover the original solution
> vector. It is allowed to have `X` = `Xs` and `y` = `ys` for an
> in-place transform. In order to perform a weighted regularized fit
> with $L = I$, the user may call `gsl_multifit_linear_applyW` to
> convert to standard form.

"""
function multifit_linear_stdform1(L, X, y, Xs, ys, work)
    ccall((:gsl_multifit_linear_stdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), L, X, y, Xs, ys, work)
end

@doc md"""
    multifit_linear_wstdform1(L, X, w, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multifit_linear_wstdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multifit_linear_workspace * work)`
"""
function multifit_linear_wstdform1(L, X, w, y, Xs, ys, work)
    ccall((:gsl_multifit_linear_wstdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), L, X, w, y, Xs, ys, work)
end

@doc md"""
    multifit_linear_L_decomp(L, tau) -> Cint

C signature:
`int gsl_multifit_linear_L_decomp (gsl_matrix * L, gsl_vector * tau)`

GSL documentation:

### `int gsl_multifit_linear_L_decomp (gsl_matrix * L, gsl_vector * tau)`

> This function factors the $m$-by-$p$ regularization matrix `L` into a
> form needed for the later transformation to standard form. `L` may
> have any number of rows $m$. If $m \ge p$ the QR decomposition of `L`
> is computed and stored in `L` on output. If $m < p$, the QR
> decomposition of $L^T$ is computed and stored in `L` on output. On
> output, the Householder scalars are stored in the vector `tau` of size
> $MIN(m,p)$. These outputs will be used by
> `gsl_multifit_linear_wstdform2` to complete the transformation to
> standard form.

"""
function multifit_linear_L_decomp(L, tau)
    ccall((:gsl_multifit_linear_L_decomp, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}), L, tau)
end

@doc md"""
    multifit_linear_stdform2(LQR, Ltau, X, y, Xs, ys, M, work) -> Cint

C signature:
`int gsl_multifit_linear_stdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_matrix * M, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_stdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_matrix * M, gsl_multifit_linear_workspace * work)`

> int gsl\_multifit\_linear\_wstdform2 (const gsl\_matrix \* LQR, const
> gsl\_vector \* Ltau, const gsl\_matrix \* X, const gsl\_vector \* w,
> const gsl\_vector \* y, gsl\_matrix \* Xs, gsl\_vector \* ys,
> gsl\_matrix \* M, gsl\_multifit\_linear\_workspace \* work)

> These functions convert the least squares system (`X`, `y`, `W`, $L$)
> to standard form ($\tilde{X}$, $\tilde{y}$) which are stored in `Xs`
> and `ys` respectively. The $m$-by-$p$ regularization matrix `L` is
> specified by the inputs `LQR` and `Ltau`, which are outputs from
> `gsl_multifit_linear_L_decomp`. The dimensions of the standard form
> parameters ($\tilde{X}$, $\tilde{y}$) depend on whether $m$ is larger
> or less than $p$. For $m \ge p$, `Xs` is $n$-by-$p$, `ys` is $n$-by-1,
> and `M` is not used. For $m < p$, `Xs` is $(n - p + m)$-by-$m$, `ys`
> is $(n - p + m)$-by-1, and `M` is additional $n$-by-$p$ workspace,
> which is required to recover the original solution vector after the
> system has been solved (see `gsl_multifit_linear_genform2`). Optional
> data weights may be supplied in the vector `w` of length $n$, where
> $W = \diag(w)$.

"""
function multifit_linear_stdform2(LQR, Ltau, X, y, Xs, ys, M, work)
    ccall((:gsl_multifit_linear_stdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, y, Xs, ys, M, work)
end

@doc md"""
    multifit_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, M, work) -> Cint

C signature:
`int gsl_multifit_linear_wstdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_matrix * M, gsl_multifit_linear_workspace * work)`
"""
function multifit_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, M, work)
    ccall((:gsl_multifit_linear_wstdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, w, y, Xs, ys, M, work)
end

@doc md"""
    multifit_linear_genform1(L, cs, c, work) -> Cint

C signature:
`int gsl_multifit_linear_genform1 (const gsl_vector * L, const gsl_vector * cs, gsl_vector * c, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_genform1 (const gsl_vector * L, const gsl_vector * cs, gsl_vector * c, gsl_multifit_linear_workspace * work)`

> After a regularized system has been solved with
> $L = \diag(\l_0,\l_1,...,\l_{p-1})$, this function backtransforms the
> standard form solution vector `cs` to recover the solution vector of
> the original problem `c`. The diagonal matrix elements $l_i$ are
> provided in the vector `L`. It is allowed to have `c` = `cs` for an
> in-place transform.

"""
function multifit_linear_genform1(L, cs, c, work)
    ccall((:gsl_multifit_linear_genform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), L, cs, c, work)
end

@doc md"""
    multifit_linear_genform2(LQR, Ltau, X, y, cs, M, c, work) -> Cint

C signature:
`int gsl_multifit_linear_genform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, const gsl_vector * cs, const gsl_matrix * M, gsl_vector * c, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_genform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, const gsl_vector * cs, const gsl_matrix * M, gsl_vector * c, gsl_multifit_linear_workspace * work)`

> int gsl\_multifit\_linear\_wgenform2 (const gsl\_matrix \* LQR, const
> gsl\_vector \* Ltau, const gsl\_matrix \* X, const gsl\_vector \* w,
> const gsl\_vector \* y, const gsl\_vector \* cs, const gsl\_matrix \*
> M, gsl\_vector \* c, gsl\_multifit\_linear\_workspace \* work)

> After a regularized system has been solved with a general rectangular
> matrix $L$, specified by (`LQR`, `Ltau`), this function backtransforms
> the standard form solution `cs` to recover the solution vector of the
> original problem, which is stored in `c`, of length $p$. The original
> least squares matrix and observation vector are provided in `X` and
> `y` respectively. `M` is the matrix computed by
> `gsl_multifit_linear_stdform2`. For weighted fits, the weight vector
> `w` must also be supplied.

"""
function multifit_linear_genform2(LQR, Ltau, X, y, cs, M, c, work)
    ccall((:gsl_multifit_linear_genform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, y, cs, M, c, work)
end

@doc md"""
    multifit_linear_wgenform2(LQR, Ltau, X, w, y, cs, M, c, work) -> Cint

C signature:
`int gsl_multifit_linear_wgenform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, const gsl_vector * cs, const gsl_matrix * M, gsl_vector * c, gsl_multifit_linear_workspace * work)`
"""
function multifit_linear_wgenform2(LQR, Ltau, X, w, y, cs, M, c, work)
    ccall((:gsl_multifit_linear_wgenform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), LQR, Ltau, X, w, y, cs, M, c, work)
end

@doc md"""
    multifit_linear_lreg(smin, smax, reg_param) -> Cint

C signature:
`int gsl_multifit_linear_lreg (const double smin, const double smax, gsl_vector * reg_param)`
"""
function multifit_linear_lreg(smin, smax, reg_param)
    ccall((:gsl_multifit_linear_lreg, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_vector}), smin, smax, reg_param)
end

@doc md"""
    multifit_linear_lcurve(y, reg_param, rho, eta, work) -> Cint

C signature:
`int gsl_multifit_linear_lcurve (const gsl_vector * y, gsl_vector * reg_param, gsl_vector * rho, gsl_vector * eta, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_lcurve (const gsl_vector * y, gsl_vector * reg_param, gsl_vector * rho, gsl_vector * eta, gsl_multifit_linear_workspace * work)`

> This function computes the L-curve for a least squares system using
> the right hand side vector `y` and the SVD decomposition of the least
> squares matrix `X`, which must be provided to
> `gsl_multifit_linear_svd` prior to calling this function. The output
> vectors `reg_param`, `rho`, and `eta` must all be the same size, and
> will contain the regularization parameters $\lambda_i$, residual norms
> $||y - X c_i||$, and solution norms $|| L c_i ||$ which compose the
> L-curve, where $c_i$ is the regularized solution vector corresponding
> to $\lambda_i$. The user may determine the number of points on the
> L-curve by adjusting the size of these input arrays. The
> regularization parameters $\lambda_i$ are estimated from the singular
> values of `X`, and chosen to represent the most relevant portion of
> the L-curve.

"""
function multifit_linear_lcurve(y, reg_param, rho, eta, work)
    ccall((:gsl_multifit_linear_lcurve, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), y, reg_param, rho, eta, work)
end

@doc md"""
    multifit_linear_lcorner(rho, eta, idx) -> Cint

C signature:
`int gsl_multifit_linear_lcorner(const gsl_vector *rho, const gsl_vector *eta, size_t *idx)`

GSL documentation:

### `int gsl_multifit_linear_lcorner (const gsl_vector * rho, const gsl_vector * eta, size_t * idx)`

> This function attempts to locate the corner of the L-curve
> $(||y - X c||, ||L c||)$ defined by the `rho` and `eta` input arrays
> respectively. The corner is defined as the point of maximum curvature
> of the L-curve in log-log scale. The `rho` and `eta` arrays can be
> outputs of `gsl_multifit_linear_lcurve`. The algorithm used simply
> fits a circle to 3 consecutive points on the L-curve and uses the
> circle's radius to determine the curvature at the middle point.
> Therefore, the input array sizes must be $\ge 3$. With more points
> provided for the L-curve, a better estimate of the curvature can be
> obtained. The array index corresponding to maximum curvature (ie: the
> corner) is returned in `idx`. If the input arrays contain colinear
> points, this function could fail and return `GSL_EINVAL`.

"""
function multifit_linear_lcorner(rho, eta, idx)
    ccall((:gsl_multifit_linear_lcorner, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{Csize_t}), rho, eta, idx)
end

@doc md"""
    multifit_linear_lcorner2(reg_param, eta, idx) -> Cint

C signature:
`int gsl_multifit_linear_lcorner2(const gsl_vector *reg_param, const gsl_vector *eta, size_t *idx)`

GSL documentation:

### `int gsl_multifit_linear_lcorner2 (const gsl_vector * reg_param, const gsl_vector * eta, size_t * idx)`

> This function attempts to locate the corner of an alternate L-curve
> $(\lambda^2, ||L c||^2)$ studied by Rezghi and Hosseini, 2009. This
> alternate L-curve can provide better estimates of the regularization
> parameter for smooth solution vectors. The regularization parameters
> $\lambda$ and solution norms $||L c||$ are provided in the `reg_param`
> and `eta` input arrays respectively. The corner is defined as the
> point of maximum curvature of this alternate L-curve in linear scale.
> The `reg_param` and `eta` arrays can be outputs of
> `gsl_multifit_linear_lcurve`. The algorithm used simply fits a circle
> to 3 consecutive points on the L-curve and uses the circle's radius to
> determine the curvature at the middle point. Therefore, the input
> array sizes must be $\ge 3$. With more points provided for the
> L-curve, a better estimate of the curvature can be obtained. The array
> index corresponding to maximum curvature (ie: the corner) is returned
> in `idx`. If the input arrays contain colinear points, this function
> could fail and return `GSL_EINVAL`.

"""
function multifit_linear_lcorner2(reg_param, eta, idx)
    ccall((:gsl_multifit_linear_lcorner2, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{Csize_t}), reg_param, eta, idx)
end

@doc md"""
    multifit_linear_Lk(p, k, L) -> Cint

C signature:
`int gsl_multifit_linear_Lk(const size_t p, const size_t k, gsl_matrix *L)`

GSL documentation:

### `int gsl_multifit_linear_Lk (const size_t p, const size_t k, gsl_matrix * L)`

> This function computes the discrete approximation to the derivative
> operator $L_k$ of order `k` on a regular grid of `p` points and stores
> it in `L`. The dimensions of `L` are $(p-k)$-by-$p$.

"""
function multifit_linear_Lk(p, k, L)
    ccall((:gsl_multifit_linear_Lk, libgsl), Cint, (Csize_t, Csize_t, Ref{gsl_matrix}), p, k, L)
end

@doc md"""
    multifit_linear_Lsobolev(p, kmax, alpha, L, work) -> Cint

C signature:
`int gsl_multifit_linear_Lsobolev(const size_t p, const size_t kmax, const gsl_vector *alpha, gsl_matrix *L, gsl_multifit_linear_workspace *work)`

GSL documentation:

### `int gsl_multifit_linear_Lsobolev (const size_t p, const size_t kmax, const gsl_vector * alpha, gsl_matrix * L, gsl_multifit_linear_workspace * work)`

> This function computes the regularization matrix `L` corresponding to
> the weighted Sobolov norm $||L c||^2 = \sum_k \alpha_k^2 ||L_k c||^2$
> where $L_k$ approximates the derivative operator of order $k$. This
> regularization norm can be useful in applications where it is
> necessary to smooth several derivatives of the solution. `p` is the
> number of model parameters, `kmax` is the highest derivative to
> include in the summation above, and `alpha` is the vector of weights
> of size `kmax` + 1, where `alpha[k]` = $\alpha_k$ is the weight
> assigned to the derivative of order $k$. The output matrix `L` is size
> `p`-by-`p` and upper triangular.

"""
function multifit_linear_Lsobolev(p, kmax, alpha, L, work)
    ccall((:gsl_multifit_linear_Lsobolev, libgsl), Cint, (Csize_t, Csize_t, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_linear_workspace}), p, kmax, alpha, L, work)
end

@doc md"""
    multifit_wlinear(X, w, y, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_wlinear (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, double * chisq, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_wlinear (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, double * chisq, gsl_multifit_linear_workspace * work)`

> This function computes the best-fit parameters `c` of the weighted
> model $y = X c$ for the observations `y` with weights `w` and the
> matrix of predictor variables `X`, using the preallocated workspace
> provided in `work`. The $p$-by-$p$ covariance matrix of the model
> parameters `cov` is computed as $(X^T W X)^{-1}$. The weighted sum of
> squares of the residuals from the best-fit, $\chi^2$, is returned in
> `chisq`. If the coefficient of determination is desired, it can be
> computed from the expression $R^2 = 1 - \chi^2 / WTSS$, where the
> weighted total sum of squares (WTSS) of the observations `y` may be
> computed from `gsl_stats_wtss`.

"""
function multifit_wlinear(X, w, y, c, cov, chisq, work)
    ccall((:gsl_multifit_wlinear, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, w, y, c, cov, chisq, work)
end

@doc md"""
    multifit_wlinear_tsvd(X, w, y, tol, c, cov, chisq, rank, work) -> Cint

C signature:
`int gsl_multifit_wlinear_tsvd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, const double tol, gsl_vector * c, gsl_matrix * cov, double * chisq, size_t * rank, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_wlinear_tsvd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, const double tol, gsl_vector * c, gsl_matrix * cov, double * chisq, size_t * rank, gsl_multifit_linear_workspace * work)`

> This function computes the best-fit parameters `c` of the weighted
> model $y = X c$ for the observations `y` with weights `w` and the
> matrix of predictor variables `X`, using a truncated SVD expansion.
> Singular values which satisfy $s_i \le tol \times s_0$ are discarded
> from the fit, where $s_0$ is the largest singular value. The
> $p$-by-$p$ covariance matrix of the model parameters `cov` is computed
> as $(X^T W X)^{-1}$. The weighted sum of squares of the residuals from
> the best-fit, $\chi^2$, is returned in `chisq`. The effective rank of
> the system (number of singular values used in the solution) is
> returned in `rank`. If the coefficient of determination is desired, it
> can be computed from the expression $R^2 = 1 - \chi^2 / WTSS$, where
> the weighted total sum of squares (WTSS) of the observations `y` may
> be computed from `gsl_stats_wtss`.

"""
function multifit_wlinear_tsvd(X, w, y, tol, c, cov, chisq, rank, work)
    ccall((:gsl_multifit_wlinear_tsvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Csize_t}, Ref{gsl_multifit_linear_workspace}), X, w, y, tol, c, cov, chisq, rank, work)
end

@doc md"""
    multifit_wlinear_svd(X, w, y, tol, rank, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_wlinear_svd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, double tol, size_t * rank, gsl_vector * c, gsl_matrix * cov, double *chisq, gsl_multifit_linear_workspace * work)`
"""
function multifit_wlinear_svd(X, w, y, tol, rank, c, cov, chisq, work)
    ccall((:gsl_multifit_wlinear_svd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{Csize_t}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, w, y, tol, rank, c, cov, chisq, work)
end

@doc md"""
    multifit_wlinear_usvd(X, w, y, tol, rank, c, cov, chisq, work) -> Cint

C signature:
`int gsl_multifit_wlinear_usvd (const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, double tol, size_t * rank, gsl_vector * c, gsl_matrix * cov, double *chisq, gsl_multifit_linear_workspace * work)`
"""
function multifit_wlinear_usvd(X, w, y, tol, rank, c, cov, chisq, work)
    ccall((:gsl_multifit_wlinear_usvd, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{Csize_t}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), X, w, y, tol, rank, c, cov, chisq, work)
end

@doc md"""
    multifit_linear_est(x, c, cov, y, y_err) -> Cint

C signature:
`int gsl_multifit_linear_est (const gsl_vector * x, const gsl_vector * c, const gsl_matrix * cov, double *y, double *y_err)`

GSL documentation:

### `int gsl_multifit_linear_est (const gsl_vector * x, const gsl_vector * c, const gsl_matrix * cov, double * y, double * y_err)`

> This function uses the best-fit multilinear regression coefficients
> `c` and their covariance matrix `cov` to compute the fitted function
> value `y` and its standard deviation `y_err` for the model $y = x.c$
> at the point `x`.

"""
function multifit_linear_est(x, c, cov, y, y_err)
    ccall((:gsl_multifit_linear_est, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}), x, c, cov, y, y_err)
end

@doc md"""
    multifit_linear_rcond(w) -> Cdouble

C signature:
`double gsl_multifit_linear_rcond (const gsl_multifit_linear_workspace * w)`

GSL documentation:

### `double gsl_multifit_linear_rcond (const gsl_multifit_linear_workspace * work)`

> This function returns the reciprocal condition number of the least
> squares matrix $X$, defined as the ratio of the smallest and largest
> singular values, rcond = $\sigma_{min}/\sigma_{max}$. The routine
> `gsl_multifit_linear_svd` must first be called to compute the SVD of
> $X$.

"""
function multifit_linear_rcond(w)
    ccall((:gsl_multifit_linear_rcond, libgsl), Cdouble, (Ptr{gsl_multifit_linear_workspace},), w)
end

@doc md"""
    multifit_linear_residuals(X, y, c, r) -> Cint

C signature:
`int gsl_multifit_linear_residuals (const gsl_matrix *X, const gsl_vector *y, const gsl_vector *c, gsl_vector *r)`

GSL documentation:

### `int gsl_multifit_linear_residuals (const gsl_matrix * X, const gsl_vector * y, const gsl_vector * c, gsl_vector * r)`

> This function computes the vector of residuals $r = y - X c$ for the
> observations `y`, coefficients `c` and matrix of predictor variables
> `X`.

"""
function multifit_linear_residuals(X, y, c, r)
    ccall((:gsl_multifit_linear_residuals, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}), X, y, c, r)
end

@doc md"""
    multifit_linear_gcv_init(y, reg_param, UTy, delta0, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv_init(const gsl_vector * y, gsl_vector * reg_param, gsl_vector * UTy, double * delta0, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_gcv_init(const gsl_vector * y, gsl_vector * reg_param, gsl_vector * UTy, double * delta0, gsl_multifit_linear_workspace * work)`

> This function performs some initialization in preparation for
> computing the GCV curve and its minimum. The right hand side vector is
> provided in `y`. On output, `reg_param` is set to a vector of
> regularization parameters in decreasing order and may be of any size.
> The vector `UTy` of size $p$ is set to $U^T y$. The parameter `delta0`
> is needed for subsequent steps of the GCV calculation.

"""
function multifit_linear_gcv_init(y, reg_param, UTy, delta0, work)
    ccall((:gsl_multifit_linear_gcv_init, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), y, reg_param, UTy, delta0, work)
end

@doc md"""
    multifit_linear_gcv_curve(reg_param, UTy, delta0, G, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv_curve(const gsl_vector * reg_param, const gsl_vector * UTy, const double delta0, gsl_vector * G, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_gcv_curve(const gsl_vector * reg_param, const gsl_vector * UTy, const double delta0, gsl_vector * G, gsl_multifit_linear_workspace * work)`

> This funtion calculates the GCV curve $G(\lambda)$ and stores it in
> `G` on output, which must be the same size as `reg_param`. The inputs
> `reg_param`, `UTy` and `delta0` are computed in
> `gsl_multifit_linear_gcv_init`.

"""
function multifit_linear_gcv_curve(reg_param, UTy, delta0, G, work)
    ccall((:gsl_multifit_linear_gcv_curve, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{gsl_vector}, Ref{gsl_multifit_linear_workspace}), reg_param, UTy, delta0, G, work)
end

@doc md"""
    multifit_linear_gcv_min(reg_param, UTy, G, delta0, lambda, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv_min(const gsl_vector * reg_param, const gsl_vector * UTy, const gsl_vector * G, const double delta0, double * lambda, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_gcv_min(const gsl_vector * reg_param, const gsl_vector * UTy, const gsl_vector * G, const double delta0, double * lambda, gsl_multifit_linear_workspace * work)`

> This function computes the value of the regularization parameter which
> minimizes the GCV curve $G(\lambda)$ and stores it in `lambda`. The
> input `G` is calculated by `gsl_multifit_linear_gcv_curve` and the
> inputs `reg_param`, `UTy` and `delta0` are computed by
> `gsl_multifit_linear_gcv_init`.

"""
function multifit_linear_gcv_min(reg_param, UTy, G, delta0, lambda, work)
    ccall((:gsl_multifit_linear_gcv_min, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), reg_param, UTy, G, delta0, lambda, work)
end

@doc md"""
    multifit_linear_gcv_calc(lambda, UTy, delta0, work) -> Cdouble

C signature:
`double gsl_multifit_linear_gcv_calc(const double lambda, const gsl_vector * UTy, const double delta0, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `double gsl_multifit_linear_gcv_calc(const double lambda, const gsl_vector * UTy, const double delta0, gsl_multifit_linear_workspace * work)`

> This function returns the value of the GCV curve $G(\lambda)$
> corresponding to the input `lambda`.

"""
function multifit_linear_gcv_calc(lambda, UTy, delta0, work)
    ccall((:gsl_multifit_linear_gcv_calc, libgsl), Cdouble, (Cdouble, Ref{gsl_vector}, Cdouble, Ref{gsl_multifit_linear_workspace}), lambda, UTy, delta0, work)
end

@doc md"""
    multifit_linear_gcv(y, reg_param, G, lambda, G_lambda, work) -> Cint

C signature:
`int gsl_multifit_linear_gcv(const gsl_vector * y, gsl_vector * reg_param, gsl_vector * G, double * lambda, double * G_lambda, gsl_multifit_linear_workspace * work)`

GSL documentation:

### `int gsl_multifit_linear_gcv(const gsl_vector * y, gsl_vector * reg_param, gsl_vector * G, double * lambda, double * G_lambda, gsl_multifit_linear_workspace * work)`

> This function combines the steps `gcv_init`, `gcv_curve`, and
> `gcv_min` defined above into a single function. The input `y` is the
> right hand side vector. On output, `reg_param` and `G`, which must be
> the same size, are set to vectors of $\lambda$ and $G(\lambda)$ values
> respectively. The output `lambda` is set to the optimal value of
> $\lambda$ which minimizes the GCV curve. The minimum value of the GCV
> curve is returned in `G_lambda`.

"""
function multifit_linear_gcv(y, reg_param, G, lambda, G_lambda, work)
    ccall((:gsl_multifit_linear_gcv, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_multifit_linear_workspace}), y, reg_param, G, lambda, G_lambda, work)
end

@doc md"""
    multifit_robust_alloc(T, n, p) -> Ptr{gsl_multifit_robust_workspace}

C signature:
`gsl_multifit_robust_workspace *gsl_multifit_robust_alloc(const gsl_multifit_robust_type *T, const size_t n, const size_t p)`

GSL documentation:

### `gsl_multifit_robust_workspace * gsl_multifit_robust_alloc (const gsl_multifit_robust_type * T, const size_t n, const size_t p)`

> This function allocates a workspace for fitting a model to `n`
> observations using `p` parameters. The size of the workspace is
> $O(np + p^2)$. The type `T` specifies the function $\psi$ and can be
> selected from the following choices.
>
> gsl\_multifit\_robust\_type
>
> gsl\_multifit\_robust\_default
>
> This specifies the `gsl_multifit_robust_bisquare` type (see below) and
> is a good general purpose choice for robust regression.
>
> gsl\_multifit\_robust\_bisquare
>
> This is Tukey's biweight (bisquare) function and is a good general
> purpose choice for robust regression. The weight function is given by
>
> not texinfo
>
> $$\begin{aligned}
> w(e) =
> \left\{
>   \begin{array}{cc}
>     (1 - e^2)^2, & |e| \le 1 \\
>      0, & |e| > 1
>   \end{array}
> \right.
> \end{aligned}$$
>
> texinfo
>
>     w(e) = { (1 - e^2)^2, |e| <= 1
>            {     0,       |e| > 1
>
> and the default tuning constant is $t = 4.685$.
>
> gsl\_multifit\_robust\_cauchy
>
> This is Cauchy's function, also known as the Lorentzian function. This
> function does not guarantee a unique solution, meaning different
> choices of the coefficient vector `c` could minimize the objective
> function. Therefore this option should be used with care. The weight
> function is given by
>
> not texinfo
>
> $$w(e) = {1 \over 1 + e^2}$$
>
> texinfo
>
>     w(e) = 1 / (1 + e^2)
>
> and the default tuning constant is $t = 2.385$.
>
> gsl\_multifit\_robust\_fair
>
> This is the fair $\rho$ function, which guarantees a unique solution
> and has continuous derivatives to three orders. The weight function is
> given by
>
> not texinfo
>
> $$w(e) = {1 \over 1 + |e|}$$
>
> texinfo
>
>     w(e) = 1 / (1 + |e|)
>
> and the default tuning constant is $t = 1.400$.
>
> gsl\_multifit\_robust\_huber
>
> This specifies Huber's $\rho$ function, which is a parabola in the
> vicinity of zero and increases linearly for a given threshold
> $|e| > t$. This function is also considered an excellent general
> purpose robust estimator, however, occasional difficulties can be
> encountered due to the discontinuous first derivative of the $\psi$
> function. The weight function is given by
>
> not texinfo
>
> $$\begin{aligned}
> w(e) =
> \left\{
>   \begin{array}{cc}
>     1, & |e| \le 1 \\
>     {1 \over |e|}, & |e| > 1
>   \end{array}
> \right.
> \end{aligned}$$
>
> texinfo
>
>     w(e) = 1/max(1,|e|)
>
> and the default tuning constant is $t = 1.345$.
>
> gsl\_multifit\_robust\_ols
>
> This specifies the ordinary least squares solution, which can be
> useful for quickly checking the difference between the various robust
> and OLS solutions. The weight function is given by
>
> $$w(e) = 1$$
>
> and the default tuning constant is $t = 1$.
>
> gsl\_multifit\_robust\_welsch
>
> This specifies the Welsch function which can perform well in cases
> where the residuals have an exponential distribution. The weight
> function is given by
>
> $$w(e) = \exp{(-e^2)}$$
>
> and the default tuning constant is $t = 2.985$.

"""
function multifit_robust_alloc(T, n, p)
    ccall((:gsl_multifit_robust_alloc, libgsl), Ptr{gsl_multifit_robust_workspace}, (Ref{gsl_multifit_robust_type}, Csize_t, Csize_t), T, n, p)
end

@doc md"""
    multifit_robust_free(w) -> Cvoid

C signature:
`void gsl_multifit_robust_free(gsl_multifit_robust_workspace *w)`

GSL documentation:

### `void gsl_multifit_robust_free (gsl_multifit_robust_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function multifit_robust_free(w)
    ccall((:gsl_multifit_robust_free, libgsl), Cvoid, (Ptr{gsl_multifit_robust_workspace},), w)
end

@doc md"""
    multifit_robust_tune(tune, w) -> Cint

C signature:
`int gsl_multifit_robust_tune(const double tune, gsl_multifit_robust_workspace *w)`

GSL documentation:

### `int gsl_multifit_robust_tune (const double tune, gsl_multifit_robust_workspace * w)`

> This function sets the tuning constant $t$ used to adjust the
> residuals at each iteration to `tune`. Decreasing the tuning constant
> increases the downweight assigned to large residuals, while increasing
> the tuning constant decreases the downweight assigned to large
> residuals.

"""
function multifit_robust_tune(tune, w)
    ccall((:gsl_multifit_robust_tune, libgsl), Cint, (Cdouble, Ref{gsl_multifit_robust_workspace}), tune, w)
end

@doc md"""
    multifit_robust_maxiter(maxiter, w) -> Cint

C signature:
`int gsl_multifit_robust_maxiter(const size_t maxiter, gsl_multifit_robust_workspace *w)`

GSL documentation:

### `int gsl_multifit_robust_maxiter (const size_t maxiter, gsl_multifit_robust_workspace * w)`

> This function sets the maximum number of iterations in the iteratively
> reweighted least squares algorithm to `maxiter`. By default, this
> value is set to 100 by `gsl_multifit_robust_alloc`.

"""
function multifit_robust_maxiter(maxiter, w)
    ccall((:gsl_multifit_robust_maxiter, libgsl), Cint, (Csize_t, Ref{gsl_multifit_robust_workspace}), maxiter, w)
end

@doc md"""
    multifit_robust_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_multifit_robust_name(const gsl_multifit_robust_workspace *w)`

GSL documentation:

### `const char * gsl_multifit_robust_name (const gsl_multifit_robust_workspace * w)`

> This function returns the name of the robust type `T` specified to
> `gsl_multifit_robust_alloc`.

"""
function multifit_robust_name(w)
    ccall((:gsl_multifit_robust_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_robust_workspace},), w)
end

@doc md"""
    multifit_robust_statistics(w) -> gsl_multifit_robust_stats

C signature:
`gsl_multifit_robust_stats gsl_multifit_robust_statistics(const gsl_multifit_robust_workspace *w)`

GSL documentation:

### `gsl_multifit_robust_stats gsl_multifit_robust_statistics (const gsl_multifit_robust_workspace * w)`

> This function returns a structure containing relevant statistics from
> a robust regression. The function `gsl_multifit_robust` must be called
> first to perform the regression and calculate these statistics. The
> returned `gsl_multifit_robust_stats` structure contains the following
> fields.
>
> gsl\_multifit\_robust\_stats
>
> `double sigma_ols`
>
> > This contains the standard deviation of the residuals as computed
> > from ordinary least squares (OLS).
>
> `double sigma_mad`
>
> > This contains an estimate of the standard deviation of the final
> > residuals using the Median-Absolute-Deviation statistic
>
> `double sigma_rob`
>
> > This contains an estimate of the standard deviation of the final
> > residuals from the theory of robust regression (see Street et al,
> > 1988).
>
> `double sigma`
>
> > This contains an estimate of the standard deviation of the final
> > residuals by attemping to reconcile `sigma_rob` and `sigma_ols` in a
> > reasonable way.
>
> `double Rsq`
>
> > This contains the $R^2$ coefficient of determination statistic using
> > the estimate `sigma`.
>
> `double adj_Rsq`
>
> > This contains the adjusted $R^2$ coefficient of determination
> > statistic using the estimate `sigma`.
>
> `double rmse`
>
> > This contains the root mean squared error of the final residuals
>
> `double sse`
>
> > This contains the residual sum of squares taking into account the
> > robust covariance matrix.
>
> `size_t dof`
>
> > This contains the number of degrees of freedom $n - p$
>
> `size_t numit`
>
> > Upon successful convergence, this contains the number of iterations
> > performed
>
> `gsl_vector * weights`
>
> > This contains the final weight vector of length `n`
>
> `gsl_vector * r`
>
> > This contains the final residual vector of length `n`, $r = y - X c$

"""
function multifit_robust_statistics(w)
    ccall((:gsl_multifit_robust_statistics, libgsl), gsl_multifit_robust_stats, (Ptr{gsl_multifit_robust_workspace},), w)
end

@doc md"""
    multifit_robust_weights(r, wts, w) -> Cint

C signature:
`int gsl_multifit_robust_weights(const gsl_vector *r, gsl_vector *wts, gsl_multifit_robust_workspace *w)`

GSL documentation:

### `int gsl_multifit_robust_weights (const gsl_vector * r, gsl_vector * wts, gsl_multifit_robust_workspace * w)`

> This function assigns weights to the vector `wts` using the residual
> vector `r` and previously specified weighting function. The output
> weights are given by $wts_i = w(r_i / (t \sigma))$, where the
> weighting functions $w$ are detailed in `gsl_multifit_robust_alloc`.
> $\sigma$ is an estimate of the residual standard deviation based on
> the Median-Absolute-Deviation and $t$ is the tuning constant. This
> function is useful if the user wishes to implement their own robust
> regression rather than using the supplied `gsl_multifit_robust`
> routine below.

"""
function multifit_robust_weights(r, wts, w)
    ccall((:gsl_multifit_robust_weights, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_robust_workspace}), r, wts, w)
end

@doc md"""
    multifit_robust(X, y, c, cov, w) -> Cint

C signature:
`int gsl_multifit_robust(const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, gsl_matrix *cov, gsl_multifit_robust_workspace *w)`

GSL documentation:

### `int gsl_multifit_robust (const gsl_matrix * X, const gsl_vector * y, gsl_vector * c, gsl_matrix * cov, gsl_multifit_robust_workspace * w)`

> This function computes the best-fit parameters `c` of the model
> $y = X c$ for the observations `y` and the matrix of predictor
> variables `X`, attemping to reduce the influence of outliers using the
> algorithm outlined above. The $p$-by-$p$ variance-covariance matrix of
> the model parameters `cov` is estimated as $\sigma^2 (X^T X)^{-1}$,
> where $\sigma$ is an approximation of the residual standard deviation
> using the theory of robust regression. Special care must be taken when
> estimating $\sigma$ and other statistics such as $R^2$, and so these
> are computed internally and are available by calling the function
> `gsl_multifit_robust_statistics`.
>
> If the coefficients do not converge within the maximum iteration
> limit, the function returns `GSL_EMAXITER`. In this case, the current
> estimates of the coefficients and covariance matrix are returned in
> `c` and `cov` and the internal fit statistics are computed with these
> estimates.

"""
function multifit_robust(X, y, c, cov, w)
    ccall((:gsl_multifit_robust, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_multifit_robust_workspace}), X, y, c, cov, w)
end

@doc md"""
    multifit_robust_est(x, c, cov, y, y_err) -> Cint

C signature:
`int gsl_multifit_robust_est(const gsl_vector * x, const gsl_vector * c, const gsl_matrix * cov, double *y, double *y_err)`

GSL documentation:

### `int gsl_multifit_robust_est (const gsl_vector * x, const gsl_vector * c, const gsl_matrix * cov, double * y, double * y_err)`

> This function uses the best-fit robust regression coefficients `c` and
> their covariance matrix `cov` to compute the fitted function value `y`
> and its standard deviation `y_err` for the model $y = x \cdot c$ at
> the point `x`.

"""
function multifit_robust_est(x, c, cov, y, y_err)
    ccall((:gsl_multifit_robust_est, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}), x, c, cov, y, y_err)
end

@doc md"""
    multifit_robust_residuals(X, y, c, r, w) -> Cint

C signature:
`int gsl_multifit_robust_residuals(const gsl_matrix * X, const gsl_vector * y, const gsl_vector * c, gsl_vector * r, gsl_multifit_robust_workspace * w)`

GSL documentation:

### `int gsl_multifit_robust_residuals (const gsl_matrix * X, const gsl_vector * y, const gsl_vector * c, gsl_vector * r, gsl_multifit_robust_workspace * w)`

> This function computes the vector of studentized residuals
> $r_i = {y_i - (X c)_i \over \sigma \sqrt{1 - h_i}}$ for the
> observations `y`, coefficients `c` and matrix of predictor variables
> `X`. The routine `gsl_multifit_robust` must first be called to compute
> the statisical leverages $h_i$ of the matrix `X` and residual standard
> deviation estimate $\sigma$.

"""
function multifit_robust_residuals(X, y, c, r, w)
    ccall((:gsl_multifit_robust_residuals, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_robust_workspace}), X, y, c, r, w)
end

