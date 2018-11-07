#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multilarge.h #########################################################


@doc md"""
    multilarge_linear_alloc(T, p) -> Ptr{gsl_multilarge_linear_workspace}

C signature:
`gsl_multilarge_linear_workspace * gsl_multilarge_linear_alloc(const gsl_multilarge_linear_type * T, const size_t p)`

GSL documentation:

### `gsl_multilarge_linear_workspace * gsl_multilarge_linear_alloc (const gsl_multilarge_linear_type * T, const size_t p)`

> This function allocates a workspace for solving large linear least
> squares systems. The least squares matrix $X$ has `p` columns, but may
> have any number of rows.

"""
function multilarge_linear_alloc(T, p)
    ccall((:gsl_multilarge_linear_alloc, libgsl), Ptr{gsl_multilarge_linear_workspace}, (Ref{gsl_multilarge_linear_type}, Csize_t), T, p)
end

@doc md"""
    multilarge_linear_free(w) -> Cvoid

C signature:
`void gsl_multilarge_linear_free(gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `void gsl_multilarge_linear_free (gsl_multilarge_linear_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function multilarge_linear_free(w)
    ccall((:gsl_multilarge_linear_free, libgsl), Cvoid, (Ptr{gsl_multilarge_linear_workspace},), w)
end

@doc md"""
    multilarge_linear_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_multilarge_linear_name(const gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `const char * gsl_multilarge_linear_name (gsl_multilarge_linear_workspace * w)`

> This function returns a string pointer to the name of the multilarge
> solver.

"""
function multilarge_linear_name(w)
    ccall((:gsl_multilarge_linear_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multilarge_linear_workspace},), w)
end

@doc md"""
    multilarge_linear_reset(w) -> Cint

C signature:
`int gsl_multilarge_linear_reset(gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `int gsl_multilarge_linear_reset (gsl_multilarge_linear_workspace * w)`

> This function resets the workspace `w` so it can begin to accumulate a
> new least squares system.

"""
function multilarge_linear_reset(w)
    ccall((:gsl_multilarge_linear_reset, libgsl), Cint, (Ptr{gsl_multilarge_linear_workspace},), w)
end

@doc md"""
    multilarge_linear_accumulate(X, y, w) -> Cint

C signature:
`int gsl_multilarge_linear_accumulate(gsl_matrix * X, gsl_vector * y, gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `int gsl_multilarge_linear_accumulate (gsl_matrix * X, gsl_vector * y, gsl_multilarge_linear_workspace * w)`

> This function accumulates the standard form block ($X,y$) into the
> current least squares system. `X` and `y` have the same number of
> rows, which can be arbitrary. `X` must have $p$ columns. For the TSQR
> method, `X` and `y` are destroyed on output. For the normal equations
> method, they are both unchanged.

"""
function multilarge_linear_accumulate(X, y, w)
    ccall((:gsl_multilarge_linear_accumulate, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), X, y, w)
end

@doc md"""
    multilarge_linear_solve(lambda, c, rnorm, snorm, w) -> Cint

C signature:
`int gsl_multilarge_linear_solve(const double lambda, gsl_vector * c, double * rnorm, double * snorm, gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `int gsl_multilarge_linear_solve (const double lambda, gsl_vector * c, double * rnorm, double * snorm, gsl_multilarge_linear_workspace * w)`

> After all blocks ($X_i,y_i$) have been accumulated into the large
> least squares system, this function will compute the solution vector
> which is stored in `c` on output. The regularization parameter
> $\lambda$ is provided in `lambda`. On output, `rnorm` contains the
> residual norm $||y - X c||_W$ and `snorm` contains the solution norm
> $||L c||$.

"""
function multilarge_linear_solve(lambda, c, rnorm, snorm, w)
    ccall((:gsl_multilarge_linear_solve, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_multilarge_linear_workspace}), lambda, c, rnorm, snorm, w)
end

@doc md"""
    multilarge_linear_rcond(rcond, w) -> Cint

C signature:
`int gsl_multilarge_linear_rcond(double *rcond, gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `int gsl_multilarge_linear_rcond (double * rcond, gsl_multilarge_linear_workspace * work)`

> This function computes the reciprocal condition number, stored in
> `rcond`, of the least squares matrix after it has been accumulated
> into the workspace `work`. For the TSQR algorithm, this is
> accomplished by calculating the SVD of the $R$ factor, which has the
> same singular values as the matrix $X$. For the normal equations
> method, this is done by computing the eigenvalues of $X^T X$, which
> could be inaccurate for ill-conditioned matrices $X$.

"""
function multilarge_linear_rcond(rcond, w)
    ccall((:gsl_multilarge_linear_rcond, libgsl), Cint, (Ref{Cdouble}, Ref{gsl_multilarge_linear_workspace}), rcond, w)
end

@doc md"""
    multilarge_linear_lcurve(reg_param, rho, eta, w) -> Cint

C signature:
`int gsl_multilarge_linear_lcurve(gsl_vector * reg_param, gsl_vector * rho, gsl_vector * eta, gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `int gsl_multilarge_linear_lcurve (gsl_vector * reg_param, gsl_vector * rho, gsl_vector * eta, gsl_multilarge_linear_workspace * work)`

> This function computes the L-curve for a large least squares system
> after it has been fully accumulated into the workspace `work`. The
> output vectors `reg_param`, `rho`, and `eta` must all be the same
> size, and will contain the regularization parameters $\lambda_i$,
> residual norms $||y - X c_i||$, and solution norms $|| L c_i ||$ which
> compose the L-curve, where $c_i$ is the regularized solution vector
> corresponding to $\lambda_i$. The user may determine the number of
> points on the L-curve by adjusting the size of these input arrays. For
> the TSQR method, the regularization parameters $\lambda_i$ are
> estimated from the singular values of the triangular $R$ factor. For
> the normal equations method, they are estimated from the eigenvalues
> of the $X^T X$ matrix.

"""
function multilarge_linear_lcurve(reg_param, rho, eta, w)
    ccall((:gsl_multilarge_linear_lcurve, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), reg_param, rho, eta, w)
end

@doc md"""
    multilarge_linear_wstdform1(L, X, w, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_wstdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`
"""
function multilarge_linear_wstdform1(L, X, w, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_wstdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), L, X, w, y, Xs, ys, work)
end

@doc md"""
    multilarge_linear_stdform1(L, X, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_stdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`

GSL documentation:

### `int gsl_multilarge_linear_stdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`

> int gsl\_multilarge\_linear\_wstdform1 (const gsl\_vector \* L, const
> gsl\_matrix \* X, const gsl\_vector \* w, const gsl\_vector \* y,
> gsl\_matrix \* Xs, gsl\_vector \* ys,
> gsl\_multilarge\_linear\_workspace \* work)

> These functions define a regularization matrix
> $L = \diag(l_0,l_1,...,l_{p-1})$. The diagonal matrix element $l_i$ is
> provided by the $i$-th element of the input vector `L`. The block
> (`X`, `y`) is converted to standard form and the parameters
> ($\tilde{X}$, $\tilde{y}$) are stored in `Xs` and `ys` on output. `Xs`
> and `ys` have the same dimensions as `X` and `y`. Optional data
> weights may be supplied in the vector `w`. In order to apply this
> transformation, $L^{-1}$ must exist and so none of the $l_i$ may be
> zero. After the standard form system has been solved, use
> `gsl_multilarge_linear_genform1` to recover the original solution
> vector. It is allowed to have `X` = `Xs` and `y` = `ys` for an
> in-place transform.

"""
function multilarge_linear_stdform1(L, X, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_stdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), L, X, y, Xs, ys, work)
end

@doc md"""
    multilarge_linear_L_decomp(L, tau) -> Cint

C signature:
`int gsl_multilarge_linear_L_decomp (gsl_matrix * L, gsl_vector * tau)`

GSL documentation:

### `int gsl_multilarge_linear_L_decomp (gsl_matrix * L, gsl_vector * tau)`

> This function calculates the QR decomposition of the $m$-by-$p$
> regularization matrix `L`. `L` must have $m \ge p$. On output, the
> Householder scalars are stored in the vector `tau` of size $p$. These
> outputs will be used by `gsl_multilarge_linear_wstdform2` to complete
> the transformation to standard form.

"""
function multilarge_linear_L_decomp(L, tau)
    ccall((:gsl_multilarge_linear_L_decomp, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}), L, tau)
end

@doc md"""
    multilarge_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_wstdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`
"""
function multilarge_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_wstdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), LQR, Ltau, X, w, y, Xs, ys, work)
end

@doc md"""
    multilarge_linear_stdform2(LQR, Ltau, X, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_stdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`

GSL documentation:

### `int gsl_multilarge_linear_stdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`

> int gsl\_multilarge\_linear\_wstdform2 (const gsl\_matrix \* LQR,
> const gsl\_vector \* Ltau, const gsl\_matrix \* X, const gsl\_vector
> \* w, const gsl\_vector \* y, gsl\_matrix \* Xs, gsl\_vector \* ys,
> gsl\_multilarge\_linear\_workspace \* work)

> These functions convert a block of rows (`X`, `y`, `w`) to standard
> form ($\tilde{X}$, $\tilde{y}$) which are stored in `Xs` and `ys`
> respectively. `X`, `y`, and `w` must all have the same number of rows.
> The $m$-by-$p$ regularization matrix `L` is specified by the inputs
> `LQR` and `Ltau`, which are outputs from
> `gsl_multilarge_linear_L_decomp`. `Xs` and `ys` have the same
> dimensions as `X` and `y`. After the standard form system has been
> solved, use `gsl_multilarge_linear_genform2` to recover the original
> solution vector. Optional data weights may be supplied in the vector
> `w`, where $W = \diag(w)$.

"""
function multilarge_linear_stdform2(LQR, Ltau, X, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_stdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), LQR, Ltau, X, y, Xs, ys, work)
end

@doc md"""
    multilarge_linear_genform1(L, cs, c, work) -> Cint

C signature:
`int gsl_multilarge_linear_genform1 (const gsl_vector * L, const gsl_vector * cs, gsl_vector * c, gsl_multilarge_linear_workspace * work)`

GSL documentation:

### `int gsl_multilarge_linear_genform1 (const gsl_vector * L, const gsl_vector * cs, gsl_vector * c, gsl_multilarge_linear_workspace * work)`

> After a regularized system has been solved with
> $L = \diag(\l_0,\l_1,...,\l_{p-1})$, this function backtransforms the
> standard form solution vector `cs` to recover the solution vector of
> the original problem `c`. The diagonal matrix elements $l_i$ are
> provided in the vector `L`. It is allowed to have `c` = `cs` for an
> in-place transform.

"""
function multilarge_linear_genform1(L, cs, c, work)
    ccall((:gsl_multilarge_linear_genform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), L, cs, c, work)
end

@doc md"""
    multilarge_linear_genform2(LQR, Ltau, cs, c, work) -> Cint

C signature:
`int gsl_multilarge_linear_genform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_vector * cs, gsl_vector * c, gsl_multilarge_linear_workspace * work)`

GSL documentation:

### `int gsl_multilarge_linear_genform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_vector * cs, gsl_vector * c, gsl_multilarge_linear_workspace * work)`

> After a regularized system has been solved with a regularization
> matrix $L$, specified by (`LQR`, `Ltau`), this function backtransforms
> the standard form solution `cs` to recover the solution vector of the
> original problem, which is stored in `c`, of length $p$.

"""
function multilarge_linear_genform2(LQR, Ltau, cs, c, work)
    ccall((:gsl_multilarge_linear_genform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), LQR, Ltau, cs, c, work)
end

