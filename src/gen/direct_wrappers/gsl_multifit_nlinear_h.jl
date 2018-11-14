#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multifit_nlinear.h ###################################################


@doc md"""
    multifit_nlinear_alloc(T, params, n, p) -> Ptr{gsl_multifit_nlinear_workspace}

C signature:
`gsl_multifit_nlinear_workspace * gsl_multifit_nlinear_alloc (const gsl_multifit_nlinear_type * T, const gsl_multifit_nlinear_parameters * params, size_t n, size_t p)`

GSL documentation:

### `gsl_multifit_nlinear_workspace * gsl_multifit_nlinear_alloc (const gsl_multifit_nlinear_type * T, const gsl_multifit_nlinear_parameters * params, const size_t n, const size_t p)`

> gsl\_multilarge\_nlinear\_workspace \* gsl\_multilarge\_nlinear\_alloc
> (const gsl\_multilarge\_nlinear\_type \* T, const
> gsl\_multilarge\_nlinear\_parameters \* params, const size\_t n, const
> size\_t p)

> These functions return a pointer to a newly allocated instance of a
> derivative solver of type `T` for `n` observations and `p` parameters.
> The `params` input specifies a tunable set of parameters which will
> affect important details in each iteration of the trust region
> subproblem algorithm. It is recommended to start with the suggested
> default parameters (see `gsl_multifit_nlinear_default_parameters` and
> `gsl_multilarge_nlinear_default_parameters`) and then tune the
> parameters once the code is working correctly. See
> `sec_tunable-parameters`. for descriptions of the various parameters.
> For example, the following code creates an instance of a
> Levenberg-Marquardt solver for 100 data points and 3 parameters, using
> suggested defaults:
>
>     const gsl_multifit_nlinear_type * T = gsl_multifit_nlinear_trust;
>     gsl_multifit_nlinear_parameters params = gsl_multifit_nlinear_default_parameters();
>     gsl_multifit_nlinear_workspace * w = gsl_multifit_nlinear_alloc (T, &params, 100, 3);
>
> The number of observations `n` must be greater than or equal to
> parameters `p`.
>
> If there is insufficient memory to create the solver then the function
> returns a null pointer and the error handler is invoked with an error
> code of `GSL_ENOMEM`.

"""
function multifit_nlinear_alloc(T, params, n, p)
    ccall((:gsl_multifit_nlinear_alloc, libgsl), Ptr{gsl_multifit_nlinear_workspace}, (Ref{gsl_multifit_nlinear_type}, Ref{gsl_multifit_nlinear_parameters}, Csize_t, Csize_t), T, params, n, p)
end

@doc md"""
    multifit_nlinear_free(w) -> Cvoid

C signature:
`void gsl_multifit_nlinear_free (gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `void gsl_multifit_nlinear_free (gsl_multifit_nlinear_workspace * w)`

> void gsl\_multilarge\_nlinear\_free
> (gsl\_multilarge\_nlinear\_workspace \* w)

> These functions free all the memory associated with the workspace `w`.

"""
function multifit_nlinear_free(w)
    ccall((:gsl_multifit_nlinear_free, libgsl), Cvoid, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_default_parameters() -> gsl_multifit_nlinear_parameters

C signature:
`gsl_multifit_nlinear_parameters gsl_multifit_nlinear_default_parameters(void)`

GSL documentation:

### `gsl_multifit_nlinear_parameters gsl_multifit_nlinear_default_parameters (void)`

> gsl\_multilarge\_nlinear\_parameters
> gsl\_multilarge\_nlinear\_default\_parameters (void)

> These functions return a set of recommended default parameters for use
> in solving nonlinear least squares problems. The user can tune each
> parameter to improve the performance on their particular problem, see
> `sec_tunable-parameters`.

"""
function multifit_nlinear_default_parameters()
    ccall((:gsl_multifit_nlinear_default_parameters, libgsl), gsl_multifit_nlinear_parameters, (), )
end

@doc md"""
    multifit_nlinear_init(x, fdf, w) -> Cint

C signature:
`int gsl_multifit_nlinear_init (const gsl_vector * x, gsl_multifit_nlinear_fdf * fdf, gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `int gsl_multifit_nlinear_init (const gsl_vector * x, gsl_multifit_nlinear_fdf * fdf, gsl_multifit_nlinear_workspace * w)`

> int gsl\_multifit\_nlinear\_winit (const gsl\_vector \* x, const
> gsl\_vector \* wts, gsl\_multifit\_nlinear\_fdf \* fdf,
> gsl\_multifit\_nlinear\_workspace \* w) int
> gsl\_multilarge\_nlinear\_init (const gsl\_vector \* x,
> gsl\_multilarge\_nlinear\_fdf \* fdf,
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions initialize, or reinitialize, an existing workspace `w`
> to use the system `fdf` and the initial guess `x`. See
> `sec_providing-function-minimized` for a description of the `fdf`
> structure.
>
> Optionally, a weight vector `wts` can be given to perform a weighted
> nonlinear regression. Here, the weighting matrix is
> $W = \diag(w_1,w_2,...,w_n)$.

"""
function multifit_nlinear_init(x, fdf, w)
    ccall((:gsl_multifit_nlinear_init, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_multifit_nlinear_workspace}), x, fdf, w)
end

@doc md"""
    multifit_nlinear_winit(x, wts, fdf, w) -> Cint

C signature:
`int gsl_multifit_nlinear_winit (const gsl_vector * x, const gsl_vector * wts, gsl_multifit_nlinear_fdf * fdf, gsl_multifit_nlinear_workspace * w)`
"""
function multifit_nlinear_winit(x, wts, fdf, w)
    ccall((:gsl_multifit_nlinear_winit, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_multifit_nlinear_workspace}), x, wts, fdf, w)
end

@doc md"""
    multifit_nlinear_iterate(w) -> Cint

C signature:
`int gsl_multifit_nlinear_iterate (gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `int gsl_multifit_nlinear_iterate (gsl_multifit_nlinear_workspace * w)`

> int gsl\_multilarge\_nlinear\_iterate
> (gsl\_multilarge\_nlinear\_workspace \* w)

> These functions perform a single iteration of the solver `w`. If the
> iteration encounters an unexpected problem then an error code will be
> returned. The solver workspace maintains a current estimate of the
> best-fit parameters at all times.

The solver workspace `w` contains the following entries, which can be
used to track the progress of the solution:

`gsl_vector * x`

> The current position, length $p$.

`gsl_vector * f`

> The function residual vector at the current position $f(x)$, length
> $n$.

`gsl_matrix * J`

> The Jacobian matrix at the current position $J(x)$, size $n$-by-$p$
> (only for `gsl_multifit_nlinear` interface).

`gsl_vector * dx`

> The difference between the current position and the previous position,
> i.e. the last step $\delta$, taken as a vector, length $p$.

These quantities can be accessed with the following functions,

"""
function multifit_nlinear_iterate(w)
    ccall((:gsl_multifit_nlinear_iterate, libgsl), Cint, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_avratio(w) -> Cdouble

C signature:
`double gsl_multifit_nlinear_avratio (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `double gsl_multifit_nlinear_avratio (const gsl_multifit_nlinear_workspace * w)`

> double gsl\_multilarge\_nlinear\_avratio (const
> gsl\_multilarge\_nlinear\_workspace \* w)

> This function returns the current ratio $|a| / |v|$ of the
> acceleration correction term to the velocity step term. The
> acceleration term is computed only by the
> `gsl_multifit_nlinear_trs_lmaccel` and
> `gsl_multilarge_nlinear_trs_lmaccel` methods, so this ratio will be
> zero for other TRS methods.

"""
function multifit_nlinear_avratio(w)
    ccall((:gsl_multifit_nlinear_avratio, libgsl), Cdouble, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_jac(w) -> Ptr{gsl_matrix}

C signature:
`gsl_matrix * gsl_multifit_nlinear_jac (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `gsl_matrix * gsl_multifit_nlinear_jac (const gsl_multifit_nlinear_workspace * w)`

> This function returns a pointer to the $n$-by-$p$ Jacobian matrix for
> the current iteration of the solver `w`. This function is available
> only for the `gsl_multifit_nlinear` interface.

"""
function multifit_nlinear_jac(w)
    ccall((:gsl_multifit_nlinear_jac, libgsl), Ptr{gsl_matrix}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_name(w) -> Ptr{Cchar}

C signature:
`const char * gsl_multifit_nlinear_name (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `const char * gsl_multifit_nlinear_name (const gsl_multifit_nlinear_workspace * w)`

> const char \* gsl\_multilarge\_nlinear\_name (const
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions return a pointer to the name of the solver. For
> example:
>
>     printf ("w is a '%s' solver\n", gsl_multifit_nlinear_name (w));
>
> would print something like `w is a 'trust-region' solver`.

"""
function multifit_nlinear_name(w)
    ccall((:gsl_multifit_nlinear_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_position(w) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_nlinear_position (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `gsl_vector * gsl_multifit_nlinear_position (const gsl_multifit_nlinear_workspace * w)`

> gsl\_vector \* gsl\_multilarge\_nlinear\_position (const
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions return the current position $x$ (i.e. best-fit
> parameters) of the solver `w`.

"""
function multifit_nlinear_position(w)
    ccall((:gsl_multifit_nlinear_position, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_residual(w) -> Ptr{gsl_vector}

C signature:
`gsl_vector * gsl_multifit_nlinear_residual (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `gsl_vector * gsl_multifit_nlinear_residual (const gsl_multifit_nlinear_workspace * w)`

> gsl\_vector \* gsl\_multilarge\_nlinear\_residual (const
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions return the current residual vector $f(x)$ of the
> solver `w`. For weighted systems, the residual vector includes the
> weighting factor $\sqrt{W}$.

"""
function multifit_nlinear_residual(w)
    ccall((:gsl_multifit_nlinear_residual, libgsl), Ptr{gsl_vector}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_niter(w) -> Csize_t

C signature:
`size_t gsl_multifit_nlinear_niter (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `size_t gsl_multifit_nlinear_niter (const gsl_multifit_nlinear_workspace * w)`

> size\_t gsl\_multilarge\_nlinear\_niter (const
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions return the number of iterations performed so far. The
> iteration counter is updated on each call to the `_iterate` functions
> above, and reset to 0 in the `_init` functions.

"""
function multifit_nlinear_niter(w)
    ccall((:gsl_multifit_nlinear_niter, libgsl), Csize_t, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_rcond(rcond, w) -> Cint

C signature:
`int gsl_multifit_nlinear_rcond (double *rcond, const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `int gsl_multifit_nlinear_rcond (double * rcond, const gsl_multifit_nlinear_workspace * w)`

> int gsl\_multilarge\_nlinear\_rcond (double \* rcond, const
> gsl\_multilarge\_nlinear\_workspace \* w)

> This function estimates the reciprocal condition number of the
> Jacobian matrix at the current position $x$ and stores it in `rcond`.
> The computed value is only an estimate to give the user a guideline as
> to the conditioning of their particular problem. Its calculation is
> based on which factorization method is used (Cholesky, QR, or SVD).
>
> -   For the Cholesky solver, the matrix $J^T J$ is factored at each
>     iteration. Therefore this function will estimate the 1-norm
>     condition number
>     $rcond^2 = 1/(||J^T J||_1 \cdot ||(J^T J)^{-1}||_1)$
> -   For the QR solver, $J$ is factored as $J = Q R$ at each iteration.
>     For simplicity, this function calculates the 1-norm conditioning
>     of only the $R$ factor,
>     $rcond = 1 / (||R||_1 \cdot ||R^{-1}||_1)$. This can be computed
>     efficiently since $R$ is upper triangular.
> -   For the SVD solver, in order to efficiently solve the trust region
>     subproblem, the matrix which is factored is $J D^{-1}$, instead of
>     $J$ itself. The resulting singular values are used to provide the
>     2-norm reciprocal condition number, as
>     $rcond = \sigma_{min} / \sigma_{max}$. Note that when using
>     scaling, $D \ne I$ and the resulting `rcond` estimate may be
>     significantly different from the true `rcond` of $J$ itself.

"""
function multifit_nlinear_rcond(rcond, w)
    ccall((:gsl_multifit_nlinear_rcond, libgsl), Cint, (Ref{Cdouble}, Ref{gsl_multifit_nlinear_workspace}), rcond, w)
end

@doc md"""
    multifit_nlinear_trs_name(w) -> Ptr{Cchar}

C signature:
`const char * gsl_multifit_nlinear_trs_name (const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `const char * gsl_multifit_nlinear_trs_name (const gsl_multifit_nlinear_workspace * w)`

> const char \* gsl\_multilarge\_nlinear\_trs\_name (const
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions return a pointer to the name of the trust region
> subproblem method. For example:
>
>     printf ("w is a '%s' solver\n", gsl_multifit_nlinear_trs_name (w));
>
> would print something like `w is a 'levenberg-marquardt' solver`.

"""
function multifit_nlinear_trs_name(w)
    ccall((:gsl_multifit_nlinear_trs_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multifit_nlinear_workspace},), w)
end

@doc md"""
    multifit_nlinear_eval_f(fdf, x, swts, y) -> Cint

C signature:
`int gsl_multifit_nlinear_eval_f(gsl_multifit_nlinear_fdf *fdf, const gsl_vector *x, const gsl_vector *swts, gsl_vector *y)`
"""
function multifit_nlinear_eval_f(fdf, x, swts, y)
    ccall((:gsl_multifit_nlinear_eval_f, libgsl), Cint, (Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}), fdf, x, swts, y)
end

@doc md"""
    multifit_nlinear_eval_df(x, f, swts, h, fdtype, fdf, df, work) -> Cint

C signature:
`int gsl_multifit_nlinear_eval_df(const gsl_vector *x, const gsl_vector *f, const gsl_vector *swts, const double h, const gsl_multifit_nlinear_fdtype fdtype, gsl_multifit_nlinear_fdf *fdf, gsl_matrix *df, gsl_vector *work)`
"""
function multifit_nlinear_eval_df(x, f, swts, h, fdtype, fdf, df, work)
    ccall((:gsl_multifit_nlinear_eval_df, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Cdouble, gsl_multifit_nlinear_fdtype, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_matrix}, Ref{gsl_vector}), x, f, swts, h, fdtype, fdf, df, work)
end

@doc md"""
    multifit_nlinear_eval_fvv(h, x, v, f, J, swts, fdf, yvv, work) -> Cint

C signature:
`int gsl_multifit_nlinear_eval_fvv(const double h, const gsl_vector *x, const gsl_vector *v, const gsl_vector *f, const gsl_matrix *J, const gsl_vector *swts, gsl_multifit_nlinear_fdf *fdf, gsl_vector *yvv, gsl_vector *work)`
"""
function multifit_nlinear_eval_fvv(h, x, v, f, J, swts, fdf, yvv, work)
    ccall((:gsl_multifit_nlinear_eval_fvv, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_vector}), h, x, v, f, J, swts, fdf, yvv, work)
end

@doc md"""
    multifit_nlinear_covar(J, epsrel, covar) -> Cint

C signature:
`int gsl_multifit_nlinear_covar (const gsl_matrix * J, const double epsrel, gsl_matrix * covar)`

GSL documentation:

### `int gsl_multifit_nlinear_covar (const gsl_matrix * J, const double epsrel, gsl_matrix * covar)`

> int gsl\_multilarge\_nlinear\_covar (gsl\_matrix \* covar,
> gsl\_multilarge\_nlinear\_workspace \* w)

> This function computes the covariance matrix of best-fit parameters
> using the Jacobian matrix `J` and stores it in `covar`. The parameter
> `epsrel` is used to remove linear-dependent columns when `J` is rank
> deficient.
>
> The covariance matrix is given by,
>
> $$C = (J^T J)^{-1}$$
>
> or in the weighted case,
>
> $$C = (J^T W J)^{-1}$$
>
> and is computed using the factored form of the Jacobian (Cholesky, QR,
> or SVD). Any columns of $R$ which satisfy
>
> $$|R_{kk}| \leq epsrel |R_{11}|$$
>
> are considered linearly-dependent and are excluded from the covariance
> matrix (the corresponding rows and columns of the covariance matrix
> are set to zero).
>
> If the minimisation uses the weighted least-squares function
> $f_i = (Y(x, t_i) - y_i) / \sigma_i$ then the covariance matrix above
> gives the statistical error on the best-fit parameters resulting from
> the Gaussian errors $\sigma_i$ on the underlying data $y_i$. This can
> be verified from the relation $\delta f = J \delta c$ and the fact
> that the fluctuations in $f$ from the data $y_i$ are normalised by
> $\sigma_i$ and so satisfy

"""
function multifit_nlinear_covar(J, epsrel, covar)
    ccall((:gsl_multifit_nlinear_covar, libgsl), Cint, (Ref{gsl_matrix}, Cdouble, Ref{gsl_matrix}), J, epsrel, covar)
end

@doc md"""
    multifit_nlinear_test(xtol, gtol, ftol, info, w) -> Cint

C signature:
`int gsl_multifit_nlinear_test (const double xtol, const double gtol, const double ftol, int *info, const gsl_multifit_nlinear_workspace * w)`

GSL documentation:

### `int gsl_multifit_nlinear_test (const double xtol, const double gtol, const double ftol, int * info, const gsl_multifit_nlinear_workspace * w)`

> int gsl\_multilarge\_nlinear\_test (const double xtol, const double
> gtol, const double ftol, int \* info, const
> gsl\_multilarge\_nlinear\_workspace \* w)

> These functions test for convergence of the minimization method using
> the following criteria:
>
> -   Testing for a small step size relative to the current parameter
>     vector
>
>     $$|\delta_i| \le xtol (|x_i| + xtol)$$
>
>     for each $0 <= i < p$. Each element of the step vector $\delta$ is
>     tested individually in case the different parameters have widely
>     different scales. Adding `xtol` to $|x_i|$ helps the test avoid
>     breaking down in situations where the true solution value
>     $x_i = 0$. If this test succeeds, `info` is set to 1 and the
>     function returns `GSL_SUCCESS`.
>
>     A general guideline for selecting the step tolerance is to choose
>     $xtol = 10^{-d}$ where $d$ is the number of accurate decimal
>     digits desired in the solution $x$. See Dennis and Schnabel for
>     more information.
>
> -   Testing for a small gradient ($g = \nabla \Phi(x) = J^T f$)
>     indicating a local function minimum:
>
>     not texinfo
>
>     $$\max_i |g_i \times \max(x_i, 1)| \le gtol \times \max(\Phi(x), 1)$$
>
>     texinfo
>
>         ||g||_inf <= gtol
>
>     This expression tests whether the ratio
>     $(\nabla \Phi)_i x_i / \Phi$ is small. Testing this scaled
>     gradient is a better than $\nabla \Phi$ alone since it is a
>     dimensionless quantity and so independent of the scale of the
>     problem. The `max` arguments help ensure the test doesn't break
>     down in regions where $x_i$ or $\Phi(x)$ are close to 0. If this
>     test succeeds, `info` is set to 2 and the function returns
>     `GSL_SUCCESS`.
>
>     A general guideline for choosing the gradient tolerance is to set
>     `gtol = GSL_DBL_EPSILON^(1/3)`. See Dennis and Schnabel for more
>     information.
>
> If none of the tests succeed, `info` is set to 0 and the function
> returns `GSL_CONTINUE`, indicating further iterations are required.

"""
function multifit_nlinear_test(xtol, gtol, ftol, info, w)
    ccall((:gsl_multifit_nlinear_test, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cint}, Ref{gsl_multifit_nlinear_workspace}), xtol, gtol, ftol, info, w)
end

@doc md"""
    multifit_nlinear_df(h, fdtype, x, wts, fdf, f, J, work) -> Cint

C signature:
`int gsl_multifit_nlinear_df(const double h, const gsl_multifit_nlinear_fdtype fdtype, const gsl_vector *x, const gsl_vector *wts, gsl_multifit_nlinear_fdf *fdf, const gsl_vector *f, gsl_matrix *J, gsl_vector *work)`
"""
function multifit_nlinear_df(h, fdtype, x, wts, fdf, f, J, work)
    ccall((:gsl_multifit_nlinear_df, libgsl), Cint, (Cdouble, gsl_multifit_nlinear_fdtype, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}), h, fdtype, x, wts, fdf, f, J, work)
end

@doc md"""
    multifit_nlinear_fdfvv(h, x, v, f, J, swts, fdf, fvv, work) -> Cint

C signature:
`int gsl_multifit_nlinear_fdfvv(const double h, const gsl_vector *x, const gsl_vector *v, const gsl_vector *f, const gsl_matrix *J, const gsl_vector *swts, gsl_multifit_nlinear_fdf *fdf, gsl_vector *fvv, gsl_vector *work)`
"""
function multifit_nlinear_fdfvv(h, x, v, f, J, swts, fdf, fvv, work)
    ccall((:gsl_multifit_nlinear_fdfvv, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multifit_nlinear_fdf}, Ref{gsl_vector}, Ref{gsl_vector}), h, x, v, f, J, swts, fdf, fvv, work)
end

