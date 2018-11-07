#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_odeiv2.h #############################################################


@doc md"""
    odeiv2_step_alloc(T, dim) -> Ptr{gsl_odeiv2_step}

C signature:
`gsl_odeiv2_step *gsl_odeiv2_step_alloc (const gsl_odeiv2_step_type * T, size_t dim)`

GSL documentation:

### `gsl_odeiv2_step * gsl_odeiv2_step_alloc (const gsl_odeiv2_step_type * T, size_t dim)`

> This function returns a pointer to a newly allocated instance of a
> stepping function of type `T` for a system of `dim` dimensions. Please
> note that if you use a stepper method that requires access to a driver
> object, it is advisable to use a driver allocation method, which
> automatically allocates a stepper, too.

"""
function odeiv2_step_alloc(T, dim)
    ccall((:gsl_odeiv2_step_alloc, libgsl), Ptr{gsl_odeiv2_step}, (Ref{gsl_odeiv2_step_type}, Csize_t), T, dim)
end

@doc md"""
    odeiv2_step_reset(s) -> Cint

C signature:
`int gsl_odeiv2_step_reset (gsl_odeiv2_step * s)`

GSL documentation:

### `int gsl_odeiv2_step_reset (gsl_odeiv2_step * s)`

> This function resets the stepping function `s`. It should be used
> whenever the next use of `s` will not be a continuation of a previous
> step.

"""
function odeiv2_step_reset(s)
    ccall((:gsl_odeiv2_step_reset, libgsl), Cint, (Ptr{gsl_odeiv2_step},), s)
end

@doc md"""
    odeiv2_step_free(s) -> Cvoid

C signature:
`void gsl_odeiv2_step_free (gsl_odeiv2_step * s)`

GSL documentation:

### `void gsl_odeiv2_step_free (gsl_odeiv2_step * s)`

> This function frees all the memory associated with the stepping
> function `s`.

"""
function odeiv2_step_free(s)
    ccall((:gsl_odeiv2_step_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_step},), s)
end

@doc md"""
    odeiv2_step_name(s) -> Ptr{Cchar}

C signature:
`const char *gsl_odeiv2_step_name (const gsl_odeiv2_step * s)`

GSL documentation:

### `const char * gsl_odeiv2_step_name (const gsl_odeiv2_step * s)`

> This function returns a pointer to the name of the stepping function.
> For example:
>
>     printf ("step method is '%s'\n", gsl_odeiv2_step_name (s));
>
> would print something like `step method is 'rkf45'`.

"""
function odeiv2_step_name(s)
    ccall((:gsl_odeiv2_step_name, libgsl), Ptr{Cchar}, (Ptr{gsl_odeiv2_step},), s)
end

@doc md"""
    odeiv2_step_order(s) -> Cuint

C signature:
`unsigned int gsl_odeiv2_step_order (const gsl_odeiv2_step * s)`

GSL documentation:

### `unsigned int gsl_odeiv2_step_order (const gsl_odeiv2_step * s)`

> This function returns the order of the stepping function on the
> previous step. The order can vary if the stepping function itself is
> adaptive.

"""
function odeiv2_step_order(s)
    ccall((:gsl_odeiv2_step_order, libgsl), Cuint, (Ptr{gsl_odeiv2_step},), s)
end

@doc md"""
    odeiv2_step_apply(s, t, h, y, yerr, dydt_in, dydt_out, dydt) -> Cint

C signature:
`int gsl_odeiv2_step_apply (gsl_odeiv2_step * s, double t, double h, double y[], double yerr[], const double dydt_in[], double dydt_out[], const gsl_odeiv2_system * dydt)`

GSL documentation:

### `int gsl_odeiv2_step_apply (gsl_odeiv2_step * s, double t, double h, double y[], double yerr[], const double dydt_in[], double dydt_out[], const gsl_odeiv2_system * sys)`

> This function applies the stepping function `s` to the system of
> equations defined by `sys`, using the step-size `h` to advance the
> system from time `t` and state `y` to time `t` + `h`. The new state of
> the system is stored in `y` on output, with an estimate of the
> absolute error in each component stored in `yerr`. If the argument
> `dydt_in` is not null it should point an array containing the
> derivatives for the system at time `t` on input. This is optional as
> the derivatives will be computed internally if they are not provided,
> but allows the reuse of existing derivative information. On output the
> new derivatives of the system at time `t` + `h` will be stored in
> `dydt_out` if it is not null.
>
> The stepping function returns `GSL_FAILURE` if it is unable to compute
> the requested step. Also, if the user-supplied functions defined in
> the system `sys` return a status other than `GSL_SUCCESS` the step
> will be aborted. In that case, the elements of `y` will be restored to
> their pre-step values and the error code from the user-supplied
> function will be returned. Failure may be due to a singularity in the
> system or too large step-size `h`. In that case the step should be
> attempted again with a smaller step-size, e.g. `h` / 2.
>
> If the driver object is not appropriately set via
> `gsl_odeiv2_step_set_driver` for those steppers that need it, the
> stepping function returns `GSL_EFAULT`. If the user-supplied functions
> defined in the system `sys` returns `GSL_EBADFUNC`, the function
> returns immediately with the same return code. In this case the user
> must call `gsl_odeiv2_step_reset` before calling this function again.

The following algorithms are available,

"""
function odeiv2_step_apply(s, t, h, y, yerr, dydt_in, dydt_out, dydt)
    ccall((:gsl_odeiv2_step_apply, libgsl), Cint, (Ref{gsl_odeiv2_step}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_odeiv2_system}), s, t, h, y, yerr, dydt_in, dydt_out, dydt)
end

@doc md"""
    odeiv2_step_set_driver(s, d) -> Cint

C signature:
`int gsl_odeiv2_step_set_driver (gsl_odeiv2_step * s, const gsl_odeiv2_driver * d)`

GSL documentation:

### `int gsl_odeiv2_step_set_driver (gsl_odeiv2_step * s, const gsl_odeiv2_driver * d)`

> This function sets a pointer of the driver object `d` for stepper `s`,
> to allow the stepper to access control (and evolve) object through the
> driver object. This is a requirement for some steppers, to get the
> desired error level for internal iteration of stepper. Allocation of a
> driver object calls this function automatically.

"""
function odeiv2_step_set_driver(s, d)
    ccall((:gsl_odeiv2_step_set_driver, libgsl), Cint, (Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_driver}), s, d)
end

@doc md"""
    odeiv2_control_alloc(T) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_alloc (const gsl_odeiv2_control_type * T)`

GSL documentation:

### `gsl_odeiv2_control * gsl_odeiv2_control_alloc (const gsl_odeiv2_control_type * T)`

> This function returns a pointer to a newly allocated instance of a
> control function of type `T`. This function is only needed for
> defining new types of control functions. For most purposes the
> standard control functions described above should be sufficient.

"""
function odeiv2_control_alloc(T)
    ccall((:gsl_odeiv2_control_alloc, libgsl), Ptr{gsl_odeiv2_control}, (Ptr{gsl_odeiv2_control_type},), T)
end

@doc md"""
    odeiv2_control_init(c, eps_abs, eps_rel, a_y, a_dydt) -> Cint

C signature:
`int gsl_odeiv2_control_init (gsl_odeiv2_control * c, double eps_abs, double eps_rel, double a_y, double a_dydt)`

GSL documentation:

### `int gsl_odeiv2_control_init (gsl_odeiv2_control * c, double eps_abs, double eps_rel, double a_y, double a_dydt)`

> This function initializes the control function `c` with the parameters
> `eps_abs` (absolute error), `eps_rel` (relative error), `a_y` (scaling
> factor for y) and `a_dydt` (scaling factor for derivatives).

"""
function odeiv2_control_init(c, eps_abs, eps_rel, a_y, a_dydt)
    ccall((:gsl_odeiv2_control_init, libgsl), Cint, (Ref{gsl_odeiv2_control}, Cdouble, Cdouble, Cdouble, Cdouble), c, eps_abs, eps_rel, a_y, a_dydt)
end

@doc md"""
    odeiv2_control_free(c) -> Cvoid

C signature:
`void gsl_odeiv2_control_free (gsl_odeiv2_control * c)`

GSL documentation:

### `void gsl_odeiv2_control_free (gsl_odeiv2_control * c)`

> This function frees all the memory associated with the control
> function `c`.

"""
function odeiv2_control_free(c)
    ccall((:gsl_odeiv2_control_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_control},), c)
end

@doc md"""
    odeiv2_control_hadjust(c, s, y, yerr, dydt, h) -> Cint

C signature:
`int gsl_odeiv2_control_hadjust (gsl_odeiv2_control * c, gsl_odeiv2_step * s, const double y[], const double yerr[], const double dydt[], double *h)`

GSL documentation:

### `int gsl_odeiv2_control_hadjust (gsl_odeiv2_control * c, gsl_odeiv2_step * s, const double y[], const double yerr[], const double dydt[], double * h)`

> This function adjusts the step-size `h` using the control function
> `c`, and the current values of `y`, `yerr` and `dydt`. The stepping
> function `step` is also needed to determine the order of the method.
> If the error in the y-values `yerr` is found to be too large then the
> step-size `h` is reduced and the function returns
> `GSL_ODEIV_HADJ_DEC`. If the error is sufficiently small then `h` may
> be increased and `GSL_ODEIV_HADJ_INC` is returned. The function
> returns `GSL_ODEIV_HADJ_NIL` if the step-size is unchanged. The goal
> of the function is to estimate the largest step-size which satisfies
> the user-specified accuracy requirements for the current point.

"""
function odeiv2_control_hadjust(c, s, y, yerr, dydt, h)
    ccall((:gsl_odeiv2_control_hadjust, libgsl), Cint, (Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_step}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), c, s, y, yerr, dydt, h)
end

@doc md"""
    odeiv2_control_name(c) -> Ptr{Cchar}

C signature:
`const char *gsl_odeiv2_control_name (const gsl_odeiv2_control * c)`

GSL documentation:

### `const char * gsl_odeiv2_control_name (const gsl_odeiv2_control * c)`

> This function returns a pointer to the name of the control function.
> For example:
>
>     printf ("control method is '%s'\n", gsl_odeiv2_control_name (c));
>
> would print something like `control method is 'standard'`

"""
function odeiv2_control_name(c)
    ccall((:gsl_odeiv2_control_name, libgsl), Ptr{Cchar}, (Ptr{gsl_odeiv2_control},), c)
end

@doc md"""
    odeiv2_control_errlevel(c, y, dydt, h, ind, errlev) -> Cint

C signature:
`int gsl_odeiv2_control_errlevel (gsl_odeiv2_control * c, const double y, const double dydt, const double h, const size_t ind, double *errlev)`

GSL documentation:

### `int gsl_odeiv2_control_errlevel (gsl_odeiv2_control * c, const double y, const double dydt, const double h, const size_t ind, double * errlev)`

> This function calculates the desired error level of the `ind`-th
> component to `errlev`. It requires the value (`y`) and value of the
> derivative (`dydt`) of the component, and the current step size `h`.

"""
function odeiv2_control_errlevel(c, y, dydt, h, ind, errlev)
    ccall((:gsl_odeiv2_control_errlevel, libgsl), Cint, (Ref{gsl_odeiv2_control}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{Cdouble}), c, y, dydt, h, ind, errlev)
end

@doc md"""
    odeiv2_control_set_driver(c, d) -> Cint

C signature:
`int gsl_odeiv2_control_set_driver (gsl_odeiv2_control * c, const gsl_odeiv2_driver * d)`

GSL documentation:

### `int gsl_odeiv2_control_set_driver (gsl_odeiv2_control * c, const gsl_odeiv2_driver * d)`

> This function sets a pointer of the driver object `d` for control
> object `c`.

"""
function odeiv2_control_set_driver(c, d)
    ccall((:gsl_odeiv2_control_set_driver, libgsl), Cint, (Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_driver}), c, d)
end

@doc md"""
    odeiv2_control_standard_new(eps_abs, eps_rel, a_y, a_dydt) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_standard_new (double eps_abs, double eps_rel, double a_y, double a_dydt)`

GSL documentation:

### `gsl_odeiv2_control * gsl_odeiv2_control_standard_new (double eps_abs, double eps_rel, double a_y, double a_dydt)`

> The standard control object is a four parameter heuristic based on
> absolute and relative errors `eps_abs` and `eps_rel`, and scaling
> factors `a_y` and `a_dydt` for the system state $y(t)$ and derivatives
> $y'(t)$ respectively.
>
> The step-size adjustment procedure for this method begins by computing
> the desired error level $D_i$ for each component,
>
> not texinfo
>
> $$D_i = \epsilon_{abs} + \epsilon_{rel} * (a_{y} |y_i| + a_{dydt} h |y\prime_i|)$$
>
> texinfo
>
>     D_i = eps_abs + eps_rel * (a_y |y_i| + a_dydt h |y\prime_i|)
>
> and comparing it with the observed error $E_i = |yerr_i|$. If the
> observed error `E` exceeds the desired error level `D` by more than
> 10% for any component then the method reduces the step-size by an
> appropriate factor,
>
> $$h_{new} = h_{old} * S * (E/D)^{-1/q}$$
>
> where $q$ is the consistency order of the method (e.g. $q=4$ for 4(5)
> embedded RK), and $S$ is a safety factor of 0.9. The ratio $E/D$ is
> taken to be the maximum of the ratios $E_i/D_i$.
>
> If the observed error $E$ is less than 50% of the desired error level
> `D` for the maximum ratio $E_i/D_i$ then the algorithm takes the
> opportunity to increase the step-size to bring the error in line with
> the desired level,
>
> $$h_{new} = h_{old} * S * (E/D)^{-1/(q+1)}$$
>
> This encompasses all the standard error scaling methods. To avoid
> uncontrolled changes in the stepsize, the overall scaling factor is
> limited to the range $1/5$ to 5.

"""
function odeiv2_control_standard_new(eps_abs, eps_rel, a_y, a_dydt)
    ccall((:gsl_odeiv2_control_standard_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble, Cdouble, Cdouble), eps_abs, eps_rel, a_y, a_dydt)
end

@doc md"""
    odeiv2_control_y_new(eps_abs, eps_rel) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_y_new (double eps_abs, double eps_rel)`

GSL documentation:

### `gsl_odeiv2_control * gsl_odeiv2_control_y_new (double eps_abs, double eps_rel)`

> This function creates a new control object which will keep the local
> error on each step within an absolute error of `eps_abs` and relative
> error of `eps_rel` with respect to the solution $y_i(t)$. This is
> equivalent to the standard control object with `a_y` = 1 and `a_dydt`
> = 0.

"""
function odeiv2_control_y_new(eps_abs, eps_rel)
    ccall((:gsl_odeiv2_control_y_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble), eps_abs, eps_rel)
end

@doc md"""
    odeiv2_control_yp_new(eps_abs, eps_rel) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_yp_new (double eps_abs, double eps_rel)`

GSL documentation:

### `gsl_odeiv2_control * gsl_odeiv2_control_yp_new (double eps_abs, double eps_rel)`

> This function creates a new control object which will keep the local
> error on each step within an absolute error of `eps_abs` and relative
> error of `eps_rel` with respect to the derivatives of the solution
> $y'_i(t)$. This is equivalent to the standard control object with
> `a_y` = 0 and `a_dydt` = 1.

"""
function odeiv2_control_yp_new(eps_abs, eps_rel)
    ccall((:gsl_odeiv2_control_yp_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble), eps_abs, eps_rel)
end

@doc md"""
    odeiv2_control_scaled_new(eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_scaled_new (double eps_abs, double eps_rel, double a_y, double a_dydt, const double scale_abs[], size_t dim)`

GSL documentation:

### `gsl_odeiv2_control * gsl_odeiv2_control_scaled_new (double eps_abs, double eps_rel, double a_y, double a_dydt, const double scale_abs[], size_t dim)`

> This function creates a new control object which uses the same
> algorithm as `gsl_odeiv2_control_standard_new` but with an absolute
> error which is scaled for each component by the array `scale_abs`. The
> formula for $D_i$ for this control object is,
>
> not texinfo
>
> $$D_i = \epsilon_{abs} s_i + \epsilon_{rel} * (a_{y} |y_i| + a_{dydt} h |y\prime_i|)$$
>
> texinfo
>
>     D_i = eps_abs * s_i + eps_rel * (a_y |y_i| + a_dydt h |y\prime_i|)
>
> where $s_i$ is the $i$-th component of the array `scale_abs`. The same
> error control heuristic is used by the Matlab ODE suite.

"""
function odeiv2_control_scaled_new(eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim)
    ccall((:gsl_odeiv2_control_scaled_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Csize_t), eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim)
end

@doc md"""
    odeiv2_evolve_alloc(dim) -> Ptr{gsl_odeiv2_evolve}

C signature:
`gsl_odeiv2_evolve *gsl_odeiv2_evolve_alloc (size_t dim)`

GSL documentation:

### `gsl_odeiv2_evolve * gsl_odeiv2_evolve_alloc (size_t dim)`

> This function returns a pointer to a newly allocated instance of an
> evolution function for a system of `dim` dimensions.

"""
function odeiv2_evolve_alloc(dim)
    ccall((:gsl_odeiv2_evolve_alloc, libgsl), Ptr{gsl_odeiv2_evolve}, (Csize_t,), dim)
end

@doc md"""
    odeiv2_evolve_apply(e, con, step, dydt, t, t1, h, y) -> Cint

C signature:
`int gsl_odeiv2_evolve_apply (gsl_odeiv2_evolve * e, gsl_odeiv2_control * con, gsl_odeiv2_step * step, const gsl_odeiv2_system * dydt, double *t, double t1, double *h, double y[])`

GSL documentation:

### `int gsl_odeiv2_evolve_apply (gsl_odeiv2_evolve * e, gsl_odeiv2_control * con, gsl_odeiv2_step * step, const gsl_odeiv2_system * sys, double * t, double t1, double * h, double y[])`

> This function advances the system (`e`, `sys`) from time `t` and
> position `y` using the stepping function `step`. The new time and
> position are stored in `t` and `y` on output.
>
> The initial step-size is taken as `h`. The control function `con` is
> applied to check whether the local error estimated by the stepping
> function `step` using step-size `h` exceeds the required error
> tolerance. If the error is too high, the step is retried by calling
> `step` with a decreased step-size. This process is continued until an
> acceptable step-size is found. An estimate of the local error for the
> step can be obtained from the components of the array `e->yerr[]`.
>
> If the user-supplied functions defined in the system `sys` returns
> `GSL_EBADFUNC`, the function returns immediately with the same return
> code. In this case the user must call `gsl_odeiv2_step_reset` and
> `gsl_odeiv2_evolve_reset` before calling this function again.
>
> Otherwise, if the user-supplied functions defined in the system `sys`
> or the stepping function `step` return a status other than
> `GSL_SUCCESS`, the step is retried with a decreased step-size. If the
> step-size decreases below machine precision, a status of `GSL_FAILURE`
> is returned if the user functions returned `GSL_SUCCESS`. Otherwise
> the value returned by user function is returned. If no acceptable step
> can be made, `t` and `y` will be restored to their pre-step values and
> `h` contains the final attempted step-size.
>
> If the step is successful the function returns a suggested step-size
> for the next step in `h`. The maximum time `t1` is guaranteed not to
> be exceeded by the time-step. On the final time-step the value of `t`
> will be set to `t1` exactly.

"""
function odeiv2_evolve_apply(e, con, step, dydt, t, t1, h, y)
    ccall((:gsl_odeiv2_evolve_apply, libgsl), Cint, (Ref{gsl_odeiv2_evolve}, Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_system}, Ref{Cdouble}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), e, con, step, dydt, t, t1, h, y)
end

@doc md"""
    odeiv2_evolve_apply_fixed_step(e, con, step, dydt, t, h0, y) -> Cint

C signature:
`int gsl_odeiv2_evolve_apply_fixed_step (gsl_odeiv2_evolve * e, gsl_odeiv2_control * con, gsl_odeiv2_step * step, const gsl_odeiv2_system * dydt, double *t, const double h0, double y[])`

GSL documentation:

### `int gsl_odeiv2_evolve_apply_fixed_step (gsl_odeiv2_evolve * e, gsl_odeiv2_control * con, gsl_odeiv2_step * step, const gsl_odeiv2_system * sys, double * t, const double h, double y[])`

> This function advances the ODE-system (`e`, `sys`, `con`) from time
> `t` and position `y` using the stepping function `step` by a specified
> step size `h`. If the local error estimated by the stepping function
> exceeds the desired error level, the step is not taken and the
> function returns `GSL_FAILURE`. Otherwise the value returned by user
> function is returned.

"""
function odeiv2_evolve_apply_fixed_step(e, con, step, dydt, t, h0, y)
    ccall((:gsl_odeiv2_evolve_apply_fixed_step, libgsl), Cint, (Ref{gsl_odeiv2_evolve}, Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_system}, Ref{Cdouble}, Cdouble, Ref{Cdouble}), e, con, step, dydt, t, h0, y)
end

@doc md"""
    odeiv2_evolve_reset(e) -> Cint

C signature:
`int gsl_odeiv2_evolve_reset (gsl_odeiv2_evolve * e)`

GSL documentation:

### `int gsl_odeiv2_evolve_reset (gsl_odeiv2_evolve * e)`

> This function resets the evolution function `e`. It should be used
> whenever the next use of `e` will not be a continuation of a previous
> step.

"""
function odeiv2_evolve_reset(e)
    ccall((:gsl_odeiv2_evolve_reset, libgsl), Cint, (Ptr{gsl_odeiv2_evolve},), e)
end

@doc md"""
    odeiv2_evolve_free(e) -> Cvoid

C signature:
`void gsl_odeiv2_evolve_free (gsl_odeiv2_evolve * e)`

GSL documentation:

### `void gsl_odeiv2_evolve_free (gsl_odeiv2_evolve * e)`

> This function frees all the memory associated with the evolution
> function `e`.

"""
function odeiv2_evolve_free(e)
    ccall((:gsl_odeiv2_evolve_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_evolve},), e)
end

@doc md"""
    odeiv2_evolve_set_driver(e, d) -> Cint

C signature:
`int gsl_odeiv2_evolve_set_driver (gsl_odeiv2_evolve * e, const gsl_odeiv2_driver * d)`

GSL documentation:

### `int gsl_odeiv2_evolve_set_driver (gsl_odeiv2_evolve * e, const gsl_odeiv2_driver * d)`

> This function sets a pointer of the driver object `d` for evolve
> object `e`.

"""
function odeiv2_evolve_set_driver(e, d)
    ccall((:gsl_odeiv2_evolve_set_driver, libgsl), Cint, (Ref{gsl_odeiv2_evolve}, Ref{gsl_odeiv2_driver}), e, d)
end

@doc md"""
    odeiv2_driver_alloc_y_new(sys, T, hstart, epsabs, epsrel) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_y_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel)`

GSL documentation:

### `gsl_odeiv2_driver * gsl_odeiv2_driver_alloc_y_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel)`

> gsl\_odeiv2\_driver \* gsl\_odeiv2\_driver\_alloc\_yp\_new (const
> gsl\_odeiv2\_system \* sys, const gsl\_odeiv2\_step\_type \* T, const
> double hstart, const double epsabs, const double epsrel)
> gsl\_odeiv2\_driver \* gsl\_odeiv2\_driver\_alloc\_standard\_new
> (const gsl\_odeiv2\_system \* sys, const gsl\_odeiv2\_step\_type \* T,
> const double hstart, const double epsabs, const double epsrel, const
> double a\_y, const double a\_dydt) gsl\_odeiv2\_driver \*
> gsl\_odeiv2\_driver\_alloc\_scaled\_new (const gsl\_odeiv2\_system \*
> sys, const gsl\_odeiv2\_step\_type \* T, const double hstart, const
> double epsabs, const double epsrel, const double a\_y, const double
> a\_dydt, const double scale\_abs\[\])

> These functions return a pointer to a newly allocated instance of a
> driver object. The functions automatically allocate and initialise the
> evolve, control and stepper objects for ODE system `sys` using stepper
> type `T`. The initial step size is given in `hstart`. The rest of the
> arguments follow the syntax and semantics of the control functions
> with same name (`gsl_odeiv2_control_*_new`).

"""
function odeiv2_driver_alloc_y_new(sys, T, hstart, epsabs, epsrel)
    ccall((:gsl_odeiv2_driver_alloc_y_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble), sys, T, hstart, epsabs, epsrel)
end

@doc md"""
    odeiv2_driver_alloc_yp_new(sys, T, hstart, epsabs, epsrel) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_yp_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel)`
"""
function odeiv2_driver_alloc_yp_new(sys, T, hstart, epsabs, epsrel)
    ccall((:gsl_odeiv2_driver_alloc_yp_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble), sys, T, hstart, epsabs, epsrel)
end

@doc md"""
    odeiv2_driver_alloc_scaled_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_scaled_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel, const double a_y, const double a_dydt, const double scale_abs[])`
"""
function odeiv2_driver_alloc_scaled_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs)
    ccall((:gsl_odeiv2_driver_alloc_scaled_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}), sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs)
end

@doc md"""
    odeiv2_driver_alloc_standard_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_standard_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel, const double a_y, const double a_dydt)`
"""
function odeiv2_driver_alloc_standard_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt)
    ccall((:gsl_odeiv2_driver_alloc_standard_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), sys, T, hstart, epsabs, epsrel, a_y, a_dydt)
end

@doc md"""
    odeiv2_driver_set_hmin(d, hmin) -> Cint

C signature:
`int gsl_odeiv2_driver_set_hmin (gsl_odeiv2_driver * d, const double hmin)`

GSL documentation:

### `int gsl_odeiv2_driver_set_hmin (gsl_odeiv2_driver * d, const double hmin)`

> The function sets a minimum for allowed step size `hmin` for driver
> `d`. Default value is 0.

"""
function odeiv2_driver_set_hmin(d, hmin)
    ccall((:gsl_odeiv2_driver_set_hmin, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Cdouble), d, hmin)
end

@doc md"""
    odeiv2_driver_set_hmax(d, hmax) -> Cint

C signature:
`int gsl_odeiv2_driver_set_hmax (gsl_odeiv2_driver * d, const double hmax)`

GSL documentation:

### `int gsl_odeiv2_driver_set_hmax (gsl_odeiv2_driver * d, const double hmax)`

> The function sets a maximum for allowed step size `hmax` for driver
> `d`. Default value is `GSL_DBL_MAX`.

"""
function odeiv2_driver_set_hmax(d, hmax)
    ccall((:gsl_odeiv2_driver_set_hmax, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Cdouble), d, hmax)
end

@doc md"""
    odeiv2_driver_set_nmax(d, nmax) -> Cint

C signature:
`int gsl_odeiv2_driver_set_nmax (gsl_odeiv2_driver * d, const unsigned long int nmax)`

GSL documentation:

### `int gsl_odeiv2_driver_set_nmax (gsl_odeiv2_driver * d, const unsigned long int nmax)`

> The function sets a maximum for allowed number of steps `nmax` for
> driver `d`. Default value of 0 sets no limit for steps.

"""
function odeiv2_driver_set_nmax(d, nmax)
    ccall((:gsl_odeiv2_driver_set_nmax, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Culong), d, nmax)
end

@doc md"""
    odeiv2_driver_apply(d, t, t1, y) -> Cint

C signature:
`int gsl_odeiv2_driver_apply (gsl_odeiv2_driver * d, double *t, const double t1, double y[])`

GSL documentation:

### `int gsl_odeiv2_driver_apply (gsl_odeiv2_driver * d, double * t, const double t1, double y[])`

> This function evolves the driver system `d` from `t` to `t1`.
> Initially vector `y` should contain the values of dependent variables
> at point `t`. If the function is unable to complete the calculation,
> an error code from `gsl_odeiv2_evolve_apply` is returned, and `t` and
> `y` contain the values from last successful step.
>
> If maximum number of steps is reached, a value of `GSL_EMAXITER` is
> returned. If the step size drops below minimum value, the function
> returns with `GSL_ENOPROG`. If the user-supplied functions defined in
> the system `sys` returns `GSL_EBADFUNC`, the function returns
> immediately with the same return code. In this case the user must call
> `gsl_odeiv2_driver_reset` before calling this function again.

"""
function odeiv2_driver_apply(d, t, t1, y)
    ccall((:gsl_odeiv2_driver_apply, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Ref{Cdouble}, Cdouble, Ref{Cdouble}), d, t, t1, y)
end

@doc md"""
    odeiv2_driver_apply_fixed_step(d, t, h, n, y) -> Cint

C signature:
`int gsl_odeiv2_driver_apply_fixed_step (gsl_odeiv2_driver * d, double *t, const double h, const unsigned long int n, double y[])`

GSL documentation:

### `int gsl_odeiv2_driver_apply_fixed_step (gsl_odeiv2_driver * d, double * t, const double h, const unsigned long int n, double y[])`

> This function evolves the driver system `d` from `t` with `n` steps of
> size `h`. If the function is unable to complete the calculation, an
> error code from `gsl_odeiv2_evolve_apply_fixed_step` is returned, and
> `t` and `y` contain the values from last successful step.

"""
function odeiv2_driver_apply_fixed_step(d, t, h, n, y)
    ccall((:gsl_odeiv2_driver_apply_fixed_step, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Ref{Cdouble}, Cdouble, Culong, Ref{Cdouble}), d, t, h, n, y)
end

@doc md"""
    odeiv2_driver_reset(d) -> Cint

C signature:
`int gsl_odeiv2_driver_reset (gsl_odeiv2_driver * d)`

GSL documentation:

### `int gsl_odeiv2_driver_reset (gsl_odeiv2_driver * d)`

> This function resets the evolution and stepper objects.

"""
function odeiv2_driver_reset(d)
    ccall((:gsl_odeiv2_driver_reset, libgsl), Cint, (Ptr{gsl_odeiv2_driver},), d)
end

@doc md"""
    odeiv2_driver_reset_hstart(d, hstart) -> Cint

C signature:
`int gsl_odeiv2_driver_reset_hstart (gsl_odeiv2_driver * d, const double hstart)`

GSL documentation:

### `int gsl_odeiv2_driver_reset_hstart (gsl_odeiv2_driver * d, const double hstart)`

> The routine resets the evolution and stepper objects and sets new
> initial step size to `hstart`. This function can be used e.g. to
> change the direction of integration.

"""
function odeiv2_driver_reset_hstart(d, hstart)
    ccall((:gsl_odeiv2_driver_reset_hstart, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Cdouble), d, hstart)
end

@doc md"""
    odeiv2_driver_free(state) -> Cvoid

C signature:
`void gsl_odeiv2_driver_free (gsl_odeiv2_driver * state)`

GSL documentation:

### `int gsl_odeiv2_driver_free (gsl_odeiv2_driver * d)`

> This function frees the driver object, and the related evolution,
> stepper and control objects.

"""
function odeiv2_driver_free(state)
    ccall((:gsl_odeiv2_driver_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_driver},), state)
end

