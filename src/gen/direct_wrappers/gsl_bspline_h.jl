#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_bspline.h ############################################################


@doc md"""
    bspline_alloc(k, nbreak) -> Ptr{gsl_bspline_workspace}

C signature:
`gsl_bspline_workspace * gsl_bspline_alloc(const size_t k, const size_t nbreak)`

GSL documentation:

### `gsl_bspline_workspace * gsl_bspline_alloc (const size_t k, const size_t nbreak)`

> This function allocates a workspace for computing B-splines of order
> `k`. The number of breakpoints is given by `nbreak`. This leads to
> $n = nbreak + k - 2$ basis functions. Cubic B-splines are specified by
> $k = 4$. The size of the workspace is $O(2k^2 + 5k + nbreak)$.

"""
function bspline_alloc(k, nbreak)
    ccall((:gsl_bspline_alloc, libgsl), Ptr{gsl_bspline_workspace}, (Csize_t, Csize_t), k, nbreak)
end

@doc md"""
    bspline_free(w) -> Cvoid

C signature:
`void gsl_bspline_free(gsl_bspline_workspace *w)`

GSL documentation:

### `void gsl_bspline_free (gsl_bspline_workspace * w)`

> This function frees the memory associated with the workspace `w`.

"""
function bspline_free(w)
    ccall((:gsl_bspline_free, libgsl), Cvoid, (Ptr{gsl_bspline_workspace},), w)
end

@doc md"""
    bspline_ncoeffs(w) -> Csize_t

C signature:
`size_t gsl_bspline_ncoeffs(gsl_bspline_workspace * w)`

GSL documentation:

### `size_t gsl_bspline_ncoeffs (gsl_bspline_workspace * w)`

> This function returns the number of B-spline coefficients given by
> $n = nbreak + k - 2$.

"""
function bspline_ncoeffs(w)
    ccall((:gsl_bspline_ncoeffs, libgsl), Csize_t, (Ptr{gsl_bspline_workspace},), w)
end

@doc md"""
    bspline_order(w) -> Csize_t

C signature:
`size_t gsl_bspline_order(gsl_bspline_workspace * w)`
"""
function bspline_order(w)
    ccall((:gsl_bspline_order, libgsl), Csize_t, (Ptr{gsl_bspline_workspace},), w)
end

@doc md"""
    bspline_nbreak(w) -> Csize_t

C signature:
`size_t gsl_bspline_nbreak(gsl_bspline_workspace * w)`
"""
function bspline_nbreak(w)
    ccall((:gsl_bspline_nbreak, libgsl), Csize_t, (Ptr{gsl_bspline_workspace},), w)
end

@doc md"""
    bspline_breakpoint(i, w) -> Cdouble

C signature:
`double gsl_bspline_breakpoint(size_t i, gsl_bspline_workspace * w)`
"""
function bspline_breakpoint(i, w)
    ccall((:gsl_bspline_breakpoint, libgsl), Cdouble, (Csize_t, Ref{gsl_bspline_workspace}), i, w)
end

@doc md"""
    bspline_greville_abscissa(i, w) -> Cdouble

C signature:
`double gsl_bspline_greville_abscissa(size_t i, gsl_bspline_workspace *w)`

GSL documentation:

### `double gsl_bspline_greville_abscissa (size_t i, gsl_bspline_workspace * w)`

> Returns the location of the $i$-th Greville abscissa for the given
> B-spline basis. For the ill-defined case when $k = 1$, the
> implementation chooses to return breakpoint interval midpoints.

"""
function bspline_greville_abscissa(i, w)
    ccall((:gsl_bspline_greville_abscissa, libgsl), Cdouble, (Csize_t, Ref{gsl_bspline_workspace}), i, w)
end

@doc md"""
    bspline_knots(breakpts, w) -> Cint

C signature:
`int gsl_bspline_knots(const gsl_vector *breakpts, gsl_bspline_workspace *w)`

GSL documentation:

### `int gsl_bspline_knots (const gsl_vector * breakpts, gsl_bspline_workspace * w)`

> This function computes the knots associated with the given breakpoints
> and stores them internally in `w->knots`.

"""
function bspline_knots(breakpts, w)
    ccall((:gsl_bspline_knots, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_bspline_workspace}), breakpts, w)
end

@doc md"""
    bspline_knots_uniform(a, b, w) -> Cint

C signature:
`int gsl_bspline_knots_uniform(const double a, const double b, gsl_bspline_workspace *w)`

GSL documentation:

### `int gsl_bspline_knots_uniform (const double a, const double b, gsl_bspline_workspace * w)`

> This function assumes uniformly spaced breakpoints on $[a,b]$ and
> constructs the corresponding knot vector using the previously
> specified `nbreak` parameter. The knots are stored in `w->knots`.

"""
function bspline_knots_uniform(a, b, w)
    ccall((:gsl_bspline_knots_uniform, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_bspline_workspace}), a, b, w)
end

@doc md"""
    bspline_knots_greville(abscissae, w, abserr) -> Cint

C signature:
`int gsl_bspline_knots_greville(const gsl_vector *abscissae, gsl_bspline_workspace *w, double *abserr)`
"""
function bspline_knots_greville(abscissae, w, abserr)
    ccall((:gsl_bspline_knots_greville, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_bspline_workspace}, Ref{Cdouble}), abscissae, w, abserr)
end

@doc md"""
    bspline_eval(x, B, w) -> Cint

C signature:
`int gsl_bspline_eval(const double x, gsl_vector *B, gsl_bspline_workspace *w)`

GSL documentation:

### `int gsl_bspline_eval (const double x, gsl_vector * B, gsl_bspline_workspace * w)`

> This function evaluates all B-spline basis functions at the position
> `x` and stores them in the vector `B`, so that the $i$-th element is
> $B_i(x)$. The vector `B` must be of length $n = nbreak + k - 2$. This
> value may also be obtained by calling `gsl_bspline_ncoeffs`. Computing
> all the basis functions at once is more efficient than computing them
> individually, due to the nature of the defining recurrence relation.

"""
function bspline_eval(x, B, w)
    ccall((:gsl_bspline_eval, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_bspline_workspace}), x, B, w)
end

@doc md"""
    bspline_eval_nonzero(x, Bk, istart, iend, w) -> Cint

C signature:
`int gsl_bspline_eval_nonzero(const double x, gsl_vector *Bk, size_t *istart, size_t *iend, gsl_bspline_workspace *w)`

GSL documentation:

### `int gsl_bspline_eval_nonzero (const double x, gsl_vector * Bk, size_t * istart, size_t * iend, gsl_bspline_workspace * w)`

> This function evaluates all potentially nonzero B-spline basis
> functions at the position `x` and stores them in the vector `Bk`, so
> that the $i$-th element is $B_{(istart+i)}(x)$. The last element of
> `Bk` is $B_{iend}(x)$. The vector `Bk` must be of length $k$. By
> returning only the nonzero basis functions, this function allows
> quantities involving linear combinations of the $B_i(x)$ to be
> computed without unnecessary terms (such linear combinations occur,
> for example, when evaluating an interpolated function).

"""
function bspline_eval_nonzero(x, Bk, istart, iend, w)
    ccall((:gsl_bspline_eval_nonzero, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{Csize_t}, Ref{Csize_t}, Ref{gsl_bspline_workspace}), x, Bk, istart, iend, w)
end

@doc md"""
    bspline_deriv_eval(x, nderiv, dB, w) -> Cint

C signature:
`int gsl_bspline_deriv_eval(const double x, const size_t nderiv, gsl_matrix *dB, gsl_bspline_workspace *w)`

GSL documentation:

### `int gsl_bspline_deriv_eval (const double x, const size_t nderiv, gsl_matrix * dB, gsl_bspline_workspace * w)`

> This function evaluates all B-spline basis function derivatives of
> orders $0$ through `nderiv` (inclusive) at the position `x` and stores
> them in the matrix `dB`. The $(i,j)$-th element of `dB` is
> $d^jB_i(x)/dx^j$. The matrix `dB` must be of size $n = nbreak + k - 2$
> by $nderiv + 1$. The value $n$ may also be obtained by calling
> `gsl_bspline_ncoeffs`. Note that function evaluations are included as
> the zeroth order derivatives in `dB`. Computing all the basis function
> derivatives at once is more efficient than computing them
> individually, due to the nature of the defining recurrence relation.

"""
function bspline_deriv_eval(x, nderiv, dB, w)
    ccall((:gsl_bspline_deriv_eval, libgsl), Cint, (Cdouble, Csize_t, Ref{gsl_matrix}, Ref{gsl_bspline_workspace}), x, nderiv, dB, w)
end

@doc md"""
    bspline_deriv_eval_nonzero(x, nderiv, dB, istart, iend, w) -> Cint

C signature:
`int gsl_bspline_deriv_eval_nonzero(const double x, const size_t nderiv, gsl_matrix *dB, size_t *istart, size_t *iend, gsl_bspline_workspace *w)`

GSL documentation:

### `int gsl_bspline_deriv_eval_nonzero (const double x, const size_t nderiv, gsl_matrix * dB, size_t * istart, size_t * iend, gsl_bspline_workspace * w)`

> This function evaluates all potentially nonzero B-spline basis
> function derivatives of orders $0$ through `nderiv` (inclusive) at the
> position `x` and stores them in the matrix `dB`. The $(i,j)$-th
> element of `dB` is $d^jB_{(istart+i)}(x)/dx^j$. The last row of `dB`
> contains $d^jB_{iend}(x)/dx^j$. The matrix `dB` must be of size $k$ by
> at least $nderiv + 1$. Note that function evaluations are included as
> the zeroth order derivatives in `dB`. By returning only the nonzero
> basis functions, this function allows quantities involving linear
> combinations of the $B_i(x)$ and their derivatives to be computed
> without unnecessary terms.

"""
function bspline_deriv_eval_nonzero(x, nderiv, dB, istart, iend, w)
    ccall((:gsl_bspline_deriv_eval_nonzero, libgsl), Cint, (Cdouble, Csize_t, Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}, Ref{gsl_bspline_workspace}), x, nderiv, dB, istart, iend, w)
end

