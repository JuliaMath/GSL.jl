#
# This code is auto generated from the GSL headers, do not edit!
#

export strerror
@doc md"""
    strerror(gsl_errno) -> String

C signature:
`const char * gsl_strerror (const int gsl_errno)`

GSL documentation:

### `const char * gsl_strerror (const int gsl_errno)`

> This function returns a pointer to a string describing the error code
> `gsl_errno`. For example:
>
>     printf ("error: %s\n", gsl_strerror (status));
>
> would print an error message like `error: output range error` for a
> status value of `GSL_ERANGE`.

"""
function strerror(gsl_errno)
    output = C.strerror(gsl_errno)
    output = unsafe_string(output)
    return output
end

export interp_name
@doc md"""
    interp_name(interp) -> String

C signature:
`const char * gsl_interp_name(const gsl_interp * interp)`

GSL documentation:

### `const char * gsl_interp_name (const gsl_interp * interp)`

> This function returns the name of the interpolation type used by
> `interp`. For example:
>
>     printf ("interp uses '%s' interpolation.\n", gsl_interp_name (interp));
>
> would print something like:
>
>     interp uses 'cspline' interpolation.

"""
function interp_name(interp)
    output = C.interp_name(interp)
    output = unsafe_string(output)
    return output
end

export interp2d_name
@doc md"""
    interp2d_name(interp) -> String

C signature:
`const char * gsl_interp2d_name(const gsl_interp2d * interp)`

GSL documentation:

### `const char * gsl_interp2d_name (const gsl_interp2d * interp)`

> This function returns the name of the interpolation type used by
> `interp`. For example:
>
>     printf ("interp uses '%s' interpolation.\n", gsl_interp2d_name (interp));
>
> would print something like:
>
>     interp uses 'bilinear' interpolation.

"""
function interp2d_name(interp)
    output = C.interp2d_name(interp)
    output = unsafe_string(output)
    return output
end

export min_fminimizer_name
@doc md"""
    min_fminimizer_name(s) -> String

C signature:
`const char * gsl_min_fminimizer_name (const gsl_min_fminimizer * s)`

GSL documentation:

### `const char * gsl_min_fminimizer_name (const gsl_min_fminimizer * s)`

> This function returns a pointer to the name of the minimizer. For
> example:
>
>     printf ("s is a '%s' minimizer\n", gsl_min_fminimizer_name (s));
>
> would print something like `s is a 'brent' minimizer`.

"""
function min_fminimizer_name(s)
    output = C.min_fminimizer_name(s)
    output = unsafe_string(output)
    return output
end

export multifit_robust_name
@doc md"""
    multifit_robust_name(w) -> String

C signature:
`const char *gsl_multifit_robust_name(const gsl_multifit_robust_workspace *w)`

GSL documentation:

### `const char * gsl_multifit_robust_name (const gsl_multifit_robust_workspace * w)`

> This function returns the name of the robust type `T` specified to
> `gsl_multifit_robust_alloc`.

"""
function multifit_robust_name(w)
    output = C.multifit_robust_name(w)
    output = unsafe_string(output)
    return output
end

export multifit_fsolver_name
@doc md"""
    multifit_fsolver_name(s) -> String

C signature:
`const char * gsl_multifit_fsolver_name (const gsl_multifit_fsolver * s)`
"""
function multifit_fsolver_name(s)
    output = C.multifit_fsolver_name(s)
    output = unsafe_string(output)
    return output
end

export multifit_fdfsolver_name
@doc md"""
    multifit_fdfsolver_name(s) -> String

C signature:
`const char * gsl_multifit_fdfsolver_name (const gsl_multifit_fdfsolver * s)`
"""
function multifit_fdfsolver_name(s)
    output = C.multifit_fdfsolver_name(s)
    output = unsafe_string(output)
    return output
end

export multifit_fdfridge_name
@doc md"""
    multifit_fdfridge_name(w) -> String

C signature:
`const char *gsl_multifit_fdfridge_name(const gsl_multifit_fdfridge * w)`
"""
function multifit_fdfridge_name(w)
    output = C.multifit_fdfridge_name(w)
    output = unsafe_string(output)
    return output
end

export multifit_nlinear_name
@doc md"""
    multifit_nlinear_name(w) -> String

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
    output = C.multifit_nlinear_name(w)
    output = unsafe_string(output)
    return output
end

export multifit_nlinear_trs_name
@doc md"""
    multifit_nlinear_trs_name(w) -> String

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
    output = C.multifit_nlinear_trs_name(w)
    output = unsafe_string(output)
    return output
end

export multilarge_linear_name
@doc md"""
    multilarge_linear_name(w) -> String

C signature:
`const char *gsl_multilarge_linear_name(const gsl_multilarge_linear_workspace * w)`

GSL documentation:

### `const char * gsl_multilarge_linear_name (gsl_multilarge_linear_workspace * w)`

> This function returns a string pointer to the name of the multilarge
> solver.

"""
function multilarge_linear_name(w)
    output = C.multilarge_linear_name(w)
    output = unsafe_string(output)
    return output
end

export multilarge_nlinear_name
@doc md"""
    multilarge_nlinear_name(w) -> String

C signature:
`const char * gsl_multilarge_nlinear_name (const gsl_multilarge_nlinear_workspace * w)`
"""
function multilarge_nlinear_name(w)
    output = C.multilarge_nlinear_name(w)
    output = unsafe_string(output)
    return output
end

export multilarge_nlinear_trs_name
@doc md"""
    multilarge_nlinear_trs_name(w) -> String

C signature:
`const char * gsl_multilarge_nlinear_trs_name (const gsl_multilarge_nlinear_workspace * w)`
"""
function multilarge_nlinear_trs_name(w)
    output = C.multilarge_nlinear_trs_name(w)
    output = unsafe_string(output)
    return output
end

export multimin_fminimizer_name
@doc md"""
    multimin_fminimizer_name(s) -> String

C signature:
`const char * gsl_multimin_fminimizer_name (const gsl_multimin_fminimizer * s)`
"""
function multimin_fminimizer_name(s)
    output = C.multimin_fminimizer_name(s)
    output = unsafe_string(output)
    return output
end

export multimin_fdfminimizer_name
@doc md"""
    multimin_fdfminimizer_name(s) -> String

C signature:
`const char * gsl_multimin_fdfminimizer_name (const gsl_multimin_fdfminimizer * s)`

GSL documentation:

### `const char * gsl_multimin_fdfminimizer_name (const gsl_multimin_fdfminimizer * s)`

> const char \* gsl\_multimin\_fminimizer\_name (const
> gsl\_multimin\_fminimizer \* s)

> This function returns a pointer to the name of the minimizer. For
> example:
>
>     printf ("s is a '%s' minimizer\n", gsl_multimin_fdfminimizer_name (s));
>
> would print something like `s is a 'conjugate_pr' minimizer`.

"""
function multimin_fdfminimizer_name(s)
    output = C.multimin_fdfminimizer_name(s)
    output = unsafe_string(output)
    return output
end

export multiroot_fsolver_name
@doc md"""
    multiroot_fsolver_name(s) -> String

C signature:
`const char * gsl_multiroot_fsolver_name (const gsl_multiroot_fsolver * s)`

GSL documentation:

### `const char * gsl_multiroot_fsolver_name (const gsl_multiroot_fsolver * s)`

> const char \* gsl\_multiroot\_fdfsolver\_name (const
> gsl\_multiroot\_fdfsolver \* s)

> These functions return a pointer to the name of the solver. For
> example:
>
>     printf ("s is a '%s' solver\n", gsl_multiroot_fdfsolver_name (s));
>
> would print something like `s is a 'newton' solver`.

"""
function multiroot_fsolver_name(s)
    output = C.multiroot_fsolver_name(s)
    output = unsafe_string(output)
    return output
end

export multiroot_fdfsolver_name
@doc md"""
    multiroot_fdfsolver_name(s) -> String

C signature:
`const char * gsl_multiroot_fdfsolver_name (const gsl_multiroot_fdfsolver * s)`
"""
function multiroot_fdfsolver_name(s)
    output = C.multiroot_fdfsolver_name(s)
    output = unsafe_string(output)
    return output
end

export odeiv_step_name
@doc md"""
    odeiv_step_name(s) -> String

C signature:
`const char * gsl_odeiv_step_name(const gsl_odeiv_step * s)`
"""
function odeiv_step_name(s)
    output = C.odeiv_step_name(s)
    output = unsafe_string(output)
    return output
end

export odeiv_control_name
@doc md"""
    odeiv_control_name(c) -> String

C signature:
`const char * gsl_odeiv_control_name(const gsl_odeiv_control * c)`
"""
function odeiv_control_name(c)
    output = C.odeiv_control_name(c)
    output = unsafe_string(output)
    return output
end

export odeiv2_step_name
@doc md"""
    odeiv2_step_name(s) -> String

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
    output = C.odeiv2_step_name(s)
    output = unsafe_string(output)
    return output
end

export odeiv2_control_name
@doc md"""
    odeiv2_control_name(c) -> String

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
    output = C.odeiv2_control_name(c)
    output = unsafe_string(output)
    return output
end

export qrng_name
@doc md"""
    qrng_name(q) -> String

C signature:
`const char * gsl_qrng_name (const gsl_qrng * q)`

GSL documentation:

### `const char * gsl_qrng_name (const gsl_qrng * q)`

> This function returns a pointer to the name of the generator.

"""
function qrng_name(q)
    output = C.qrng_name(q)
    output = unsafe_string(output)
    return output
end

export rng_name
@doc md"""
    rng_name(r) -> String

C signature:
`const char *gsl_rng_name (const gsl_rng * r)`

GSL documentation:

### `const char * gsl_rng_name (const gsl_rng * r)`

> This function returns a pointer to the name of the generator. For
> example:
>
>     printf ("r is a '%s' generator\n", gsl_rng_name (r));
>
> would print something like:
>
>     r is a 'taus' generator

"""
function rng_name(r)
    output = C.rng_name(r)
    output = unsafe_string(output)
    return output
end

export root_fsolver_name
@doc md"""
    root_fsolver_name(s) -> String

C signature:
`const char * gsl_root_fsolver_name (const gsl_root_fsolver * s)`

GSL documentation:

### `const char * gsl_root_fsolver_name (const gsl_root_fsolver * s)`

> const char \* gsl\_root\_fdfsolver\_name (const gsl\_root\_fdfsolver
> \* s)

> These functions return a pointer to the name of the solver. For
> example:
>
>     printf ("s is a '%s' solver\n", gsl_root_fsolver_name (s));
>
> would print something like `s is a 'bisection' solver`.

"""
function root_fsolver_name(s)
    output = C.root_fsolver_name(s)
    output = unsafe_string(output)
    return output
end

export root_fdfsolver_name
@doc md"""
    root_fdfsolver_name(s) -> String

C signature:
`const char * gsl_root_fdfsolver_name (const gsl_root_fdfsolver * s)`
"""
function root_fdfsolver_name(s)
    output = C.root_fdfsolver_name(s)
    output = unsafe_string(output)
    return output
end

export sf_airy_Ai_e
@doc md"""
    sf_airy_Ai_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Ai_e(const double x, const gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Ai_e(x, mode, result)
    return result
end

export sf_airy_Bi_e
@doc md"""
    sf_airy_Bi_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Bi_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Bi_e(x, mode, result)
    return result
end

export sf_airy_Ai_scaled_e
@doc md"""
    sf_airy_Ai_scaled_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Ai_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Ai_scaled_e(x, mode, result)
    return result
end

export sf_airy_Bi_scaled_e
@doc md"""
    sf_airy_Bi_scaled_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Bi_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Bi_scaled_e(x, mode, result)
    return result
end

export sf_airy_Ai_deriv_e
@doc md"""
    sf_airy_Ai_deriv_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Ai_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_deriv_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Ai_deriv_e(x, mode, result)
    return result
end

export sf_airy_Bi_deriv_e
@doc md"""
    sf_airy_Bi_deriv_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Bi_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_deriv_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Bi_deriv_e(x, mode, result)
    return result
end

export sf_airy_Ai_deriv_scaled_e
@doc md"""
    sf_airy_Ai_deriv_scaled_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Ai_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Ai_deriv_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Ai_deriv_scaled_e(x, mode, result)
    return result
end

export sf_airy_Bi_deriv_scaled_e
@doc md"""
    sf_airy_Bi_deriv_scaled_e(x, mode) -> gsl_sf_result

C signature:
`int gsl_sf_airy_Bi_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_airy_Bi_deriv_scaled_e(x, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_Bi_deriv_scaled_e(x, mode, result)
    return result
end

export sf_airy_zero_Ai_e
@doc md"""
    sf_airy_zero_Ai_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_airy_zero_Ai_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Ai_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_zero_Ai_e(s, result)
    return result
end

export sf_airy_zero_Bi_e
@doc md"""
    sf_airy_zero_Bi_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_airy_zero_Bi_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Bi_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_zero_Bi_e(s, result)
    return result
end

export sf_airy_zero_Ai_deriv_e
@doc md"""
    sf_airy_zero_Ai_deriv_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_airy_zero_Ai_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Ai_deriv_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_zero_Ai_deriv_e(s, result)
    return result
end

export sf_airy_zero_Bi_deriv_e
@doc md"""
    sf_airy_zero_Bi_deriv_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_airy_zero_Bi_deriv_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_airy_zero_Bi_deriv_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_airy_zero_Bi_deriv_e(s, result)
    return result
end

export sf_bessel_J0_e
@doc md"""
    sf_bessel_J0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_J0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_J0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_J0_e(x, result)
    return result
end

export sf_bessel_J1_e
@doc md"""
    sf_bessel_J1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_J1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_J1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_J1_e(x, result)
    return result
end

export sf_bessel_Jn_e
@doc md"""
    sf_bessel_Jn_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Jn_e(int n, double x, gsl_sf_result * result)`
"""
function sf_bessel_Jn_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Jn_e(n, x, result)
    return result
end

export sf_bessel_Jn_array
@doc md"""
    sf_bessel_Jn_array(nmin, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_Jn_array(int nmin, int nmax, double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Jn_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the regular cylindrical Bessel
> functions $J_n(x)$ for $n$ from `nmin` to `nmax` inclusive, storing
> the results in the array `result_array`. The values are computed using
> recurrence relations for efficiency, and therefore may differ slightly
> from the exact values.

"""
function sf_bessel_Jn_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_bessel_Jn_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_Y0_e
@doc md"""
    sf_bessel_Y0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Y0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_Y0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Y0_e(x, result)
    return result
end

export sf_bessel_Y1_e
@doc md"""
    sf_bessel_Y1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Y1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_Y1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Y1_e(x, result)
    return result
end

export sf_bessel_Yn_e
@doc md"""
    sf_bessel_Yn_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Yn_e(int n,const double x, gsl_sf_result * result)`
"""
function sf_bessel_Yn_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Yn_e(n, x, result)
    return result
end

export sf_bessel_Yn_array
@doc md"""
    sf_bessel_Yn_array(nmin, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_Yn_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Yn_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the irregular cylindrical Bessel
> functions $Y_n(x)$ for $n$ from `nmin` to `nmax` inclusive, storing
> the results in the array `result_array`. The domain of the function is
> $x>0$. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_Yn_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_bessel_Yn_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_I0_e
@doc md"""
    sf_bessel_I0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_I0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_I0_e(x, result)
    return result
end

export sf_bessel_I1_e
@doc md"""
    sf_bessel_I1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_I1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_I1_e(x, result)
    return result
end

export sf_bessel_In_e
@doc md"""
    sf_bessel_In_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_In_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_In_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_In_e(n, x, result)
    return result
end

export sf_bessel_In_array
@doc md"""
    sf_bessel_In_array(nmin, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_In_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_In_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the regular modified cylindrical
> Bessel functions $I_n(x)$ for $n$ from `nmin` to `nmax` inclusive,
> storing the results in the array `result_array`. The start of the
> range `nmin` must be positive or zero. The values are computed using
> recurrence relations for efficiency, and therefore may differ slightly
> from the exact values.

"""
function sf_bessel_In_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_bessel_In_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_I0_scaled_e
@doc md"""
    sf_bessel_I0_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_I0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_I0_scaled_e(x, result)
    return result
end

export sf_bessel_I1_scaled_e
@doc md"""
    sf_bessel_I1_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_I1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_I1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_I1_scaled_e(x, result)
    return result
end

export sf_bessel_In_scaled_e
@doc md"""
    sf_bessel_In_scaled_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_In_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_In_scaled_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_In_scaled_e(n, x, result)
    return result
end

export sf_bessel_In_scaled_array
@doc md"""
    sf_bessel_In_scaled_array(nmin, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_In_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_In_scaled_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the scaled regular cylindrical
> Bessel functions $\exp(-|x|) I_n(x)$ for $n$ from `nmin` to `nmax`
> inclusive, storing the results in the array `result_array`. The start
> of the range `nmin` must be positive or zero. The values are computed
> using recurrence relations for efficiency, and therefore may differ
> slightly from the exact values.

"""
function sf_bessel_In_scaled_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_bessel_In_scaled_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_K0_e
@doc md"""
    sf_bessel_K0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_K0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_K0_e(x, result)
    return result
end

export sf_bessel_K1_e
@doc md"""
    sf_bessel_K1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_K1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_K1_e(x, result)
    return result
end

export sf_bessel_Kn_e
@doc md"""
    sf_bessel_Kn_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Kn_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Kn_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Kn_e(n, x, result)
    return result
end

export sf_bessel_Kn_array
@doc md"""
    sf_bessel_Kn_array(nmin, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_Kn_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Kn_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the irregular modified cylindrical
> Bessel functions $K_n(x)$ for $n$ from `nmin` to `nmax` inclusive,
> storing the results in the array `result_array`. The start of the
> range `nmin` must be positive or zero. The domain of the function is
> $x>0$. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_Kn_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_bessel_Kn_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_K0_scaled_e
@doc md"""
    sf_bessel_K0_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_K0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_K0_scaled_e(x, result)
    return result
end

export sf_bessel_K1_scaled_e
@doc md"""
    sf_bessel_K1_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_K1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_K1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_K1_scaled_e(x, result)
    return result
end

export sf_bessel_Kn_scaled_e
@doc md"""
    sf_bessel_Kn_scaled_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Kn_scaled_e(int n, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Kn_scaled_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Kn_scaled_e(n, x, result)
    return result
end

export sf_bessel_Kn_scaled_array
@doc md"""
    sf_bessel_Kn_scaled_array(nmin, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_Kn_scaled_array(const int nmin, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_Kn_scaled_array (int nmin, int nmax, double x, double result_array[])`

> This routine computes the values of the scaled irregular cylindrical
> Bessel functions $\exp(x) K_n(x)$ for $n$ from `nmin` to `nmax`
> inclusive, storing the results in the array `result_array`. The start
> of the range `nmin` must be positive or zero. The domain of the
> function is $x>0$. The values are computed using recurrence relations
> for efficiency, and therefore may differ slightly from the exact
> values.

"""
function sf_bessel_Kn_scaled_array(nmin, nmax, x)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array)
    return result_array
end

export sf_bessel_j0_e
@doc md"""
    sf_bessel_j0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_j0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_j0_e(x, result)
    return result
end

export sf_bessel_j1_e
@doc md"""
    sf_bessel_j1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_j1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_j1_e(x, result)
    return result
end

export sf_bessel_j2_e
@doc md"""
    sf_bessel_j2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_j2_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_j2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_j2_e(x, result)
    return result
end

export sf_bessel_jl_e
@doc md"""
    sf_bessel_jl_e(l, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_jl_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_jl_e(l, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_jl_e(l, x, result)
    return result
end

export sf_bessel_jl_array
@doc md"""
    sf_bessel_jl_array(lmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_jl_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_jl_array (int lmax, double x, double result_array[])`

> This routine computes the values of the regular spherical Bessel
> functions $j_l(x)$ for $l$ from 0 to `lmax` inclusive for
> $lmax \geq 0$ and $x \geq 0$, storing the results in the array
> `result_array`. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_jl_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_bessel_jl_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_y0_e
@doc md"""
    sf_bessel_y0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_y0_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_y0_e(x, result)
    return result
end

export sf_bessel_y1_e
@doc md"""
    sf_bessel_y1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_y1_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_y1_e(x, result)
    return result
end

export sf_bessel_y2_e
@doc md"""
    sf_bessel_y2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_y2_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_y2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_y2_e(x, result)
    return result
end

export sf_bessel_yl_e
@doc md"""
    sf_bessel_yl_e(l, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_yl_e(int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_yl_e(l, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_yl_e(l, x, result)
    return result
end

export sf_bessel_yl_array
@doc md"""
    sf_bessel_yl_array(lmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_yl_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_yl_array (int lmax, double x, double result_array[])`

> This routine computes the values of the irregular spherical Bessel
> functions $y_l(x)$ for $l$ from 0 to `lmax` inclusive for
> $lmax \geq 0$, storing the results in the array `result_array`. The
> values are computed using recurrence relations for efficiency, and
> therefore may differ slightly from the exact values.

"""
function sf_bessel_yl_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_bessel_yl_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_i0_scaled_e
@doc md"""
    sf_bessel_i0_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_i0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_i0_scaled_e(x, result)
    return result
end

export sf_bessel_i1_scaled_e
@doc md"""
    sf_bessel_i1_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_i1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_i1_scaled_e(x, result)
    return result
end

export sf_bessel_i2_scaled_e
@doc md"""
    sf_bessel_i2_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_i2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_i2_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_i2_scaled_e(x, result)
    return result
end

export sf_bessel_il_scaled_e
@doc md"""
    sf_bessel_il_scaled_e(l, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_il_scaled_e(const int l, double x, gsl_sf_result * result)`
"""
function sf_bessel_il_scaled_e(l, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_il_scaled_e(l, x, result)
    return result
end

export sf_bessel_il_scaled_array
@doc md"""
    sf_bessel_il_scaled_array(lmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_il_scaled_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_il_scaled_array (int lmax, double x, double result_array[])`

> This routine computes the values of the scaled regular modified
> spherical Bessel functions $\exp(-|x|) i_l(x)$ for $l$ from 0 to
> `lmax` inclusive for $lmax \geq 0$, storing the results in the array
> `result_array`. The values are computed using recurrence relations for
> efficiency, and therefore may differ slightly from the exact values.

"""
function sf_bessel_il_scaled_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_bessel_il_scaled_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_k0_scaled_e
@doc md"""
    sf_bessel_k0_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_k0_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k0_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_k0_scaled_e(x, result)
    return result
end

export sf_bessel_k1_scaled_e
@doc md"""
    sf_bessel_k1_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_k1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_k1_scaled_e(x, result)
    return result
end

export sf_bessel_k2_scaled_e
@doc md"""
    sf_bessel_k2_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_k2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_bessel_k2_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_k2_scaled_e(x, result)
    return result
end

export sf_bessel_kl_scaled_e
@doc md"""
    sf_bessel_kl_scaled_e(l, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_kl_scaled_e(int l, const double x, gsl_sf_result * result)`
"""
function sf_bessel_kl_scaled_e(l, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_kl_scaled_e(l, x, result)
    return result
end

export sf_bessel_kl_scaled_array
@doc md"""
    sf_bessel_kl_scaled_array(lmax, x) -> Array{Float64}

C signature:
`int gsl_sf_bessel_kl_scaled_array(const int lmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_bessel_kl_scaled_array (int lmax, double x, double result_array[])`

> This routine computes the values of the scaled irregular modified
> spherical Bessel functions $\exp(x) k_l(x)$ for $l$ from 0 to `lmax`
> inclusive for $lmax \geq 0$ and $x>0$, storing the results in the
> array `result_array`. The values are computed using recurrence
> relations for efficiency, and therefore may differ slightly from the
> exact values.

"""
function sf_bessel_kl_scaled_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_bessel_kl_scaled_array(lmax, x, result_array)
    return result_array
end

export sf_bessel_Jnu_e
@doc md"""
    sf_bessel_Jnu_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Jnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Jnu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Jnu_e(nu, x, result)
    return result
end

export sf_bessel_Ynu_e
@doc md"""
    sf_bessel_Ynu_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Ynu_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Ynu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Ynu_e(nu, x, result)
    return result
end

export sf_bessel_Inu_scaled_e
@doc md"""
    sf_bessel_Inu_scaled_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Inu_scaled_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Inu_scaled_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Inu_scaled_e(nu, x, result)
    return result
end

export sf_bessel_Inu_e
@doc md"""
    sf_bessel_Inu_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Inu_e(double nu, double x, gsl_sf_result * result)`
"""
function sf_bessel_Inu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Inu_e(nu, x, result)
    return result
end

export sf_bessel_Knu_scaled_e
@doc md"""
    sf_bessel_Knu_scaled_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Knu_scaled_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Knu_scaled_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Knu_scaled_e(nu, x, result)
    return result
end

export sf_bessel_Knu_scaled_e10_e
@doc md"""
    sf_bessel_Knu_scaled_e10_e(nu, x) -> gsl_sf_result_e10

C signature:
`int gsl_sf_bessel_Knu_scaled_e10_e(const double nu, const double x, gsl_sf_result_e10 * result)`
"""
function sf_bessel_Knu_scaled_e10_e(nu, x)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_bessel_Knu_scaled_e10_e(nu, x, result)
    return result
end

export sf_bessel_Knu_e
@doc md"""
    sf_bessel_Knu_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_Knu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_Knu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_Knu_e(nu, x, result)
    return result
end

export sf_bessel_lnKnu_e
@doc md"""
    sf_bessel_lnKnu_e(nu, x) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_lnKnu_e(const double nu, const double x, gsl_sf_result * result)`
"""
function sf_bessel_lnKnu_e(nu, x)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_lnKnu_e(nu, x, result)
    return result
end

export sf_bessel_zero_J0_e
@doc md"""
    sf_bessel_zero_J0_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_zero_J0_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_J0_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_zero_J0_e(s, result)
    return result
end

export sf_bessel_zero_J1_e
@doc md"""
    sf_bessel_zero_J1_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_zero_J1_e(unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_J1_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_zero_J1_e(s, result)
    return result
end

export sf_bessel_zero_Jnu_e
@doc md"""
    sf_bessel_zero_Jnu_e(nu, s) -> gsl_sf_result

C signature:
`int gsl_sf_bessel_zero_Jnu_e(double nu, unsigned int s, gsl_sf_result * result)`
"""
function sf_bessel_zero_Jnu_e(nu, s)
    result = gsl_sf_result(0,0)
    output = C.sf_bessel_zero_Jnu_e(nu, s, result)
    return result
end

export sf_clausen_e
@doc md"""
    sf_clausen_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_clausen_e(double x, gsl_sf_result * result)`
"""
function sf_clausen_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_clausen_e(x, result)
    return result
end

export sf_hydrogenicR_1_e
@doc md"""
    sf_hydrogenicR_1_e(Z, r) -> gsl_sf_result

C signature:
`int gsl_sf_hydrogenicR_1_e(const double Z, const double r, gsl_sf_result * result)`
"""
function sf_hydrogenicR_1_e(Z, r)
    result = gsl_sf_result(0,0)
    output = C.sf_hydrogenicR_1_e(Z, r, result)
    return result
end

export sf_hydrogenicR_e
@doc md"""
    sf_hydrogenicR_e(n, l, Z, r) -> gsl_sf_result

C signature:
`int gsl_sf_hydrogenicR_e(const int n, const int l, const double Z, const double r, gsl_sf_result * result)`
"""
function sf_hydrogenicR_e(n, l, Z, r)
    result = gsl_sf_result(0,0)
    output = C.sf_hydrogenicR_e(n, l, Z, r, result)
    return result
end

export sf_coulomb_wave_FG_e
@doc md"""
    sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, exp_F, exp_G) -> (gsl_sf_result, gsl_sf_result, gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_coulomb_wave_FG_e(const double eta, const double x, const double lam_F, const int k_lam_G, gsl_sf_result * F, gsl_sf_result * Fp, gsl_sf_result * G, gsl_sf_result * Gp, double * exp_F, double * exp_G)`

GSL documentation:

### `int gsl_sf_coulomb_wave_FG_e (double eta, double x, double L_F, int k, gsl_sf_result * F, gsl_sf_result * Fp, gsl_sf_result * G, gsl_sf_result * Gp, double * exp_F, double * exp_G)`

> This function computes the Coulomb wave functions $F_L(\eta,x)$,
> $G_{L-k}(\eta,x)$ and their derivatives $F'_L(\eta,x)$,
> $G'_{L-k}(\eta,x)$ with respect to $x$. The parameters are restricted
> to $L, L-k > -1/2$, $x > 0$ and integer $k$. Note that $L$ itself is
> not restricted to being an integer. The results are stored in the
> parameters F, G for the function values and `Fp`, `Gp` for the
> derivative values. If an overflow occurs, `GSL_EOVRFLW` is returned
> and scaling exponents are stored in the modifiable parameters `exp_F`,
> `exp_G`.

"""
function sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, exp_F, exp_G)
    F = gsl_sf_result(0,0)
    Fp = gsl_sf_result(0,0)
    G = gsl_sf_result(0,0)
    Gp = gsl_sf_result(0,0)
    output = C.sf_coulomb_wave_FG_e(eta, x, lam_F, k_lam_G, F, Fp, G, Gp, exp_F, exp_G)
    return F, Fp, G, Gp
end

export sf_coulomb_CL_e
@doc md"""
    sf_coulomb_CL_e(L, eta) -> gsl_sf_result

C signature:
`int gsl_sf_coulomb_CL_e(double L, double eta, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_coulomb_CL_e (double L, double eta, gsl_sf_result * result)`

> This function computes the Coulomb wave function normalization
> constant $C_L(\eta)$ for $L > -1$.

"""
function sf_coulomb_CL_e(L, eta)
    result = gsl_sf_result(0,0)
    output = C.sf_coulomb_CL_e(L, eta, result)
    return result
end

export sf_coupling_3j_e
@doc md"""
    sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc) -> gsl_sf_result

C signature:
`int gsl_sf_coupling_3j_e(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc, gsl_sf_result * result )`
"""
function sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc)
    result = gsl_sf_result(0,0)
    output = C.sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result)
    return result
end

export sf_coupling_6j_e
@doc md"""
    sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> gsl_sf_result

C signature:
`int gsl_sf_coupling_6j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    result = gsl_sf_result(0,0)
    output = C.sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    return result
end

export sf_coupling_RacahW_e
@doc md"""
    sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> gsl_sf_result

C signature:
`int gsl_sf_coupling_RacahW_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    result = gsl_sf_result(0,0)
    output = C.sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    return result
end

export sf_coupling_9j_e
@doc md"""
    sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji) -> gsl_sf_result

C signature:
`int gsl_sf_coupling_9j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg, int two_jh, int two_ji, gsl_sf_result * result )`
"""
function sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji)
    result = gsl_sf_result(0,0)
    output = C.sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result)
    return result
end

export sf_coupling_6j_INCORRECT_e
@doc md"""
    sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf) -> gsl_sf_result

C signature:
`int gsl_sf_coupling_6j_INCORRECT_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, gsl_sf_result * result )`
"""
function sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf)
    result = gsl_sf_result(0,0)
    output = C.sf_coupling_6j_INCORRECT_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, result)
    return result
end

export sf_dawson_e
@doc md"""
    sf_dawson_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_dawson_e(double x, gsl_sf_result * result)`
"""
function sf_dawson_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_dawson_e(x, result)
    return result
end

export sf_debye_1_e
@doc md"""
    sf_debye_1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_debye_1_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_debye_1_e(x, result)
    return result
end

export sf_debye_2_e
@doc md"""
    sf_debye_2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_debye_2_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_debye_2_e(x, result)
    return result
end

export sf_debye_3_e
@doc md"""
    sf_debye_3_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_debye_3_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_3_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_debye_3_e(x, result)
    return result
end

export sf_debye_4_e
@doc md"""
    sf_debye_4_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_debye_4_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_4_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_debye_4_e(x, result)
    return result
end

export sf_debye_5_e
@doc md"""
    sf_debye_5_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_debye_5_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_5_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_debye_5_e(x, result)
    return result
end

export sf_debye_6_e
@doc md"""
    sf_debye_6_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_debye_6_e(const double x, gsl_sf_result * result)`
"""
function sf_debye_6_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_debye_6_e(x, result)
    return result
end

export sf_dilog_e
@doc md"""
    sf_dilog_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_dilog_e(const double x, gsl_sf_result * result)`
"""
function sf_dilog_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_dilog_e(x, result)
    return result
end

export sf_complex_dilog_xy_e
@doc md"""
    sf_complex_dilog_xy_e(x, y) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_dilog_xy_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_dilog_xy_e(x, y)
    result_re = gsl_sf_result(0,0)
    result_im = gsl_sf_result(0,0)
    output = C.sf_complex_dilog_xy_e(x, y, result_re, result_im)
    return result_re, result_im
end

export sf_complex_dilog_e
@doc md"""
    sf_complex_dilog_e(r, theta) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_dilog_e( const double r, const double theta, gsl_sf_result * result_re, gsl_sf_result * result_im )`

GSL documentation:

### `int gsl_sf_complex_dilog_e (double r, double theta, gsl_sf_result * result_re, gsl_sf_result * result_im)`

> This function computes the full complex-valued dilogarithm for the
> complex argument $z = r \exp(i \theta)$. The real and imaginary

"""
function sf_complex_dilog_e(r, theta)
    result_re = gsl_sf_result(0,0)
    result_im = gsl_sf_result(0,0)
    output = C.sf_complex_dilog_e(r, theta, result_re, result_im)
    return result_re, result_im
end

export sf_complex_spence_xy_e
@doc md"""
    sf_complex_spence_xy_e(x, y) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_spence_xy_e( const double x, const double y, gsl_sf_result * real_sp, gsl_sf_result * imag_sp )`
"""
function sf_complex_spence_xy_e(x, y)
    real_sp = gsl_sf_result(0,0)
    imag_sp = gsl_sf_result(0,0)
    output = C.sf_complex_spence_xy_e(x, y, real_sp, imag_sp)
    return real_sp, imag_sp
end

export sf_multiply_e
@doc md"""
    sf_multiply_e(x, y) -> gsl_sf_result

C signature:
`int gsl_sf_multiply_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_multiply_e(x, y)
    result = gsl_sf_result(0,0)
    output = C.sf_multiply_e(x, y, result)
    return result
end

export sf_multiply_err_e
@doc md"""
    sf_multiply_err_e(x, dx, y, dy) -> gsl_sf_result

C signature:
`int gsl_sf_multiply_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_multiply_err_e (double x, double dx, double y, double dy, gsl_sf_result * result)`

> This function multiplies `x` and `y` with associated absolute errors
> `dx` and `dy`. The product $xy \pm xy \sqrt{(dx/x)^2 +(dy/y)^2}$ is
> stored in `result`.

"""
function sf_multiply_err_e(x, dx, y, dy)
    result = gsl_sf_result(0,0)
    output = C.sf_multiply_err_e(x, dx, y, dy, result)
    return result
end

export sf_ellint_Kcomp_e
@doc md"""
    sf_ellint_Kcomp_e(k, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_Kcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Kcomp_e(k, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_Kcomp_e(k, mode, result)
    return result
end

export sf_ellint_Ecomp_e
@doc md"""
    sf_ellint_Ecomp_e(k, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_Ecomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Ecomp_e(k, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_Ecomp_e(k, mode, result)
    return result
end

export sf_ellint_Pcomp_e
@doc md"""
    sf_ellint_Pcomp_e(k, n, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_Pcomp_e(double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Pcomp_e(k, n, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_Pcomp_e(k, n, mode, result)
    return result
end

export sf_ellint_Dcomp_e
@doc md"""
    sf_ellint_Dcomp_e(k, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_Dcomp_e(double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_Dcomp_e(k, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_Dcomp_e(k, mode, result)
    return result
end

export sf_ellint_F_e
@doc md"""
    sf_ellint_F_e(phi, k, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_F_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_F_e(phi, k, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_F_e(phi, k, mode, result)
    return result
end

export sf_ellint_E_e
@doc md"""
    sf_ellint_E_e(phi, k, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_E_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_E_e(phi, k, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_E_e(phi, k, mode, result)
    return result
end

export sf_ellint_P_e
@doc md"""
    sf_ellint_P_e(phi, k, n, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_P_e(double phi, double k, double n, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_P_e(phi, k, n, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_P_e(phi, k, n, mode, result)
    return result
end

export sf_ellint_D_e
@doc md"""
    sf_ellint_D_e(phi, k, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_D_e(double phi, double k, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_D_e(phi, k, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_D_e(phi, k, mode, result)
    return result
end

export sf_ellint_RC_e
@doc md"""
    sf_ellint_RC_e(x, y, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_RC_e(double x, double y, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RC_e(x, y, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_RC_e(x, y, mode, result)
    return result
end

export sf_ellint_RD_e
@doc md"""
    sf_ellint_RD_e(x, y, z, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_RD_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RD_e(x, y, z, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_RD_e(x, y, z, mode, result)
    return result
end

export sf_ellint_RF_e
@doc md"""
    sf_ellint_RF_e(x, y, z, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_RF_e(double x, double y, double z, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RF_e(x, y, z, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_RF_e(x, y, z, mode, result)
    return result
end

export sf_ellint_RJ_e
@doc md"""
    sf_ellint_RJ_e(x, y, z, p, mode) -> gsl_sf_result

C signature:
`int gsl_sf_ellint_RJ_e(double x, double y, double z, double p, gsl_mode_t mode, gsl_sf_result * result)`
"""
function sf_ellint_RJ_e(x, y, z, p, mode)
    result = gsl_sf_result(0,0)
    output = C.sf_ellint_RJ_e(x, y, z, p, mode, result)
    return result
end

export sf_erfc_e
@doc md"""
    sf_erfc_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_erfc_e(double x, gsl_sf_result * result)`
"""
function sf_erfc_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_erfc_e(x, result)
    return result
end

export sf_log_erfc_e
@doc md"""
    sf_log_erfc_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_log_erfc_e(double x, gsl_sf_result * result)`
"""
function sf_log_erfc_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_log_erfc_e(x, result)
    return result
end

export sf_erf_e
@doc md"""
    sf_erf_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_erf_e(double x, gsl_sf_result * result)`
"""
function sf_erf_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_erf_e(x, result)
    return result
end

export sf_erf_Z_e
@doc md"""
    sf_erf_Z_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_erf_Z_e(double x, gsl_sf_result * result)`
"""
function sf_erf_Z_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_erf_Z_e(x, result)
    return result
end

export sf_erf_Q_e
@doc md"""
    sf_erf_Q_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_erf_Q_e(double x, gsl_sf_result * result)`
"""
function sf_erf_Q_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_erf_Q_e(x, result)
    return result
end

export sf_hazard_e
@doc md"""
    sf_hazard_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_hazard_e(double x, gsl_sf_result * result)`
"""
function sf_hazard_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_hazard_e(x, result)
    return result
end

export sf_exp_e
@doc md"""
    sf_exp_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_exp_e(const double x, gsl_sf_result * result)`
"""
function sf_exp_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_exp_e(x, result)
    return result
end

export sf_exp_e10_e
@doc md"""
    sf_exp_e10_e(x) -> gsl_sf_result_e10

C signature:
`int gsl_sf_exp_e10_e(const double x, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_e10_e (double x, gsl_sf_result_e10 * result)`

> This function computes the exponential $\exp(x)$ using the
> `gsl_sf_result_e10` type to return a result with extended range. This
> function may be useful if the value of $\exp(x)$ would overflow the
> numeric range of `double`.

"""
function sf_exp_e10_e(x)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_exp_e10_e(x, result)
    return result
end

export sf_exp_mult_e
@doc md"""
    sf_exp_mult_e(x, y) -> gsl_sf_result

C signature:
`int gsl_sf_exp_mult_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_exp_mult_e(x, y)
    result = gsl_sf_result(0,0)
    output = C.sf_exp_mult_e(x, y, result)
    return result
end

export sf_exp_mult_e10_e
@doc md"""
    sf_exp_mult_e10_e(x, y) -> gsl_sf_result_e10

C signature:
`int gsl_sf_exp_mult_e10_e(const double x, const double y, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_mult_e10_e (const double x, const double y, gsl_sf_result_e10 * result)`

> This function computes the product $y \exp(x)$ using the
> `gsl_sf_result_e10` type to return a result with extended numeric
> range.

"""
function sf_exp_mult_e10_e(x, y)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_exp_mult_e10_e(x, y, result)
    return result
end

export sf_expm1_e
@doc md"""
    sf_expm1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expm1_e(const double x, gsl_sf_result * result)`
"""
function sf_expm1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expm1_e(x, result)
    return result
end

export sf_exprel_e
@doc md"""
    sf_exprel_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_exprel_e(const double x, gsl_sf_result * result)`
"""
function sf_exprel_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_exprel_e(x, result)
    return result
end

export sf_exprel_2_e
@doc md"""
    sf_exprel_2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_exprel_2_e(double x, gsl_sf_result * result)`
"""
function sf_exprel_2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_exprel_2_e(x, result)
    return result
end

export sf_exprel_n_e
@doc md"""
    sf_exprel_n_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_exprel_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_exprel_n_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_exprel_n_e(n, x, result)
    return result
end

export sf_exprel_n_CF_e
@doc md"""
    sf_exprel_n_CF_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_exprel_n_CF_e(const double n, const double x, gsl_sf_result * result)`
"""
function sf_exprel_n_CF_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_exprel_n_CF_e(n, x, result)
    return result
end

export sf_exp_err_e
@doc md"""
    sf_exp_err_e(x, dx) -> gsl_sf_result

C signature:
`int gsl_sf_exp_err_e(const double x, const double dx, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_exp_err_e (double x, double dx, gsl_sf_result * result)`

> This function exponentiates `x` with an associated absolute error
> `dx`.

"""
function sf_exp_err_e(x, dx)
    result = gsl_sf_result(0,0)
    output = C.sf_exp_err_e(x, dx, result)
    return result
end

export sf_exp_err_e10_e
@doc md"""
    sf_exp_err_e10_e(x, dx) -> gsl_sf_result_e10

C signature:
`int gsl_sf_exp_err_e10_e(const double x, const double dx, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_err_e10_e (double x, double dx, gsl_sf_result_e10 * result)`

> This function exponentiates a quantity `x` with an associated absolute
> error `dx` using the `gsl_sf_result_e10` type to return a result with
> extended range.

"""
function sf_exp_err_e10_e(x, dx)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_exp_err_e10_e(x, dx, result)
    return result
end

export sf_exp_mult_err_e
@doc md"""
    sf_exp_mult_err_e(x, dx, y, dy) -> gsl_sf_result

C signature:
`int gsl_sf_exp_mult_err_e(const double x, const double dx, const double y, const double dy, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_exp_mult_err_e (double x, double dx, double y, double dy, gsl_sf_result * result)`

> This routine computes the product $y \exp(x)$ for the quantities `x`,
> `y` with associated absolute errors `dx`, `dy`.

"""
function sf_exp_mult_err_e(x, dx, y, dy)
    result = gsl_sf_result(0,0)
    output = C.sf_exp_mult_err_e(x, dx, y, dy, result)
    return result
end

export sf_exp_mult_err_e10_e
@doc md"""
    sf_exp_mult_err_e10_e(x, dx, y, dy) -> gsl_sf_result_e10

C signature:
`int gsl_sf_exp_mult_err_e10_e(const double x, const double dx, const double y, const double dy, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_exp_mult_err_e10_e (double x, double dx, double y, double dy, gsl_sf_result_e10 * result)`

> This routine computes the product $y \exp(x)$ for the quantities `x`,
> `y` with associated absolute errors `dx`, `dy` using the
> `gsl_sf_result_e10` type to return a result with extended range.

"""
function sf_exp_mult_err_e10_e(x, dx, y, dy)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_exp_mult_err_e10_e(x, dx, y, dy, result)
    return result
end

export sf_expint_E1_e
@doc md"""
    sf_expint_E1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_E1_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_E1_e(x, result)
    return result
end

export sf_expint_E2_e
@doc md"""
    sf_expint_E2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_E2_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_E2_e(x, result)
    return result
end

export sf_expint_En_e
@doc md"""
    sf_expint_En_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_En_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_expint_En_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_En_e(n, x, result)
    return result
end

export sf_expint_E1_scaled_e
@doc md"""
    sf_expint_E1_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_E1_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E1_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_E1_scaled_e(x, result)
    return result
end

export sf_expint_E2_scaled_e
@doc md"""
    sf_expint_E2_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_E2_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_E2_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_E2_scaled_e(x, result)
    return result
end

export sf_expint_En_scaled_e
@doc md"""
    sf_expint_En_scaled_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_En_scaled_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_expint_En_scaled_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_En_scaled_e(n, x, result)
    return result
end

export sf_expint_Ei_e
@doc md"""
    sf_expint_Ei_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_Ei_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_Ei_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_Ei_e(x, result)
    return result
end

export sf_expint_Ei_scaled_e
@doc md"""
    sf_expint_Ei_scaled_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_Ei_scaled_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_Ei_scaled_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_Ei_scaled_e(x, result)
    return result
end

export sf_Shi_e
@doc md"""
    sf_Shi_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_Shi_e(const double x, gsl_sf_result * result)`
"""
function sf_Shi_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_Shi_e(x, result)
    return result
end

export sf_Chi_e
@doc md"""
    sf_Chi_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_Chi_e(const double x, gsl_sf_result * result)`
"""
function sf_Chi_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_Chi_e(x, result)
    return result
end

export sf_expint_3_e
@doc md"""
    sf_expint_3_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_expint_3_e(const double x, gsl_sf_result * result)`
"""
function sf_expint_3_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_expint_3_e(x, result)
    return result
end

export sf_Si_e
@doc md"""
    sf_Si_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_Si_e(const double x, gsl_sf_result * result)`
"""
function sf_Si_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_Si_e(x, result)
    return result
end

export sf_Ci_e
@doc md"""
    sf_Ci_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_Ci_e(const double x, gsl_sf_result * result)`
"""
function sf_Ci_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_Ci_e(x, result)
    return result
end

export sf_atanint_e
@doc md"""
    sf_atanint_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_atanint_e(const double x, gsl_sf_result * result)`
"""
function sf_atanint_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_atanint_e(x, result)
    return result
end

export sf_fermi_dirac_m1_e
@doc md"""
    sf_fermi_dirac_m1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_m1_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_m1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_m1_e(x, result)
    return result
end

export sf_fermi_dirac_0_e
@doc md"""
    sf_fermi_dirac_0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_0_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_0_e(x, result)
    return result
end

export sf_fermi_dirac_1_e
@doc md"""
    sf_fermi_dirac_1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_1_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_1_e(x, result)
    return result
end

export sf_fermi_dirac_2_e
@doc md"""
    sf_fermi_dirac_2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_2_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_2_e(x, result)
    return result
end

export sf_fermi_dirac_int_e
@doc md"""
    sf_fermi_dirac_int_e(j, x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_int_e(const int j, const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_int_e(j, x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_int_e(j, x, result)
    return result
end

export sf_fermi_dirac_mhalf_e
@doc md"""
    sf_fermi_dirac_mhalf_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_mhalf_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_mhalf_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_mhalf_e(x, result)
    return result
end

export sf_fermi_dirac_half_e
@doc md"""
    sf_fermi_dirac_half_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_half_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_half_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_half_e(x, result)
    return result
end

export sf_fermi_dirac_3half_e
@doc md"""
    sf_fermi_dirac_3half_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_3half_e(const double x, gsl_sf_result * result)`
"""
function sf_fermi_dirac_3half_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_3half_e(x, result)
    return result
end

export sf_fermi_dirac_inc_0_e
@doc md"""
    sf_fermi_dirac_inc_0_e(x, b) -> gsl_sf_result

C signature:
`int gsl_sf_fermi_dirac_inc_0_e(const double x, const double b, gsl_sf_result * result)`
"""
function sf_fermi_dirac_inc_0_e(x, b)
    result = gsl_sf_result(0,0)
    output = C.sf_fermi_dirac_inc_0_e(x, b, result)
    return result
end

export sf_lngamma_e
@doc md"""
    sf_lngamma_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_lngamma_e(double x, gsl_sf_result * result)`
"""
function sf_lngamma_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_lngamma_e(x, result)
    return result
end

export sf_lngamma_sgn_e
@doc md"""
    sf_lngamma_sgn_e(x, sgn) -> gsl_sf_result

C signature:
`int gsl_sf_lngamma_sgn_e(double x, gsl_sf_result * result_lg, double *sgn)`

GSL documentation:

### `int gsl_sf_lngamma_sgn_e (double x, gsl_sf_result * result_lg, double * sgn)`

> This routine computes the sign of the gamma function and the logarithm
> of its magnitude, subject to $x$ not being a negative integer or zero.
> The function is computed using the real Lanczos method. The value of
> the gamma function and its error can be reconstructed using the
> relation $\Gamma(x) = sgn * \exp(result\_lg)$, taking into account the
> two components of `result_lg`.

"""
function sf_lngamma_sgn_e(x, sgn)
    result_lg = gsl_sf_result(0,0)
    output = C.sf_lngamma_sgn_e(x, result_lg, sgn)
    return result_lg
end

export sf_gamma_e
@doc md"""
    sf_gamma_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_gamma_e(const double x, gsl_sf_result * result)`
"""
function sf_gamma_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_gamma_e(x, result)
    return result
end

export sf_gammastar_e
@doc md"""
    sf_gammastar_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_gammastar_e(const double x, gsl_sf_result * result)`
"""
function sf_gammastar_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_gammastar_e(x, result)
    return result
end

export sf_gammainv_e
@doc md"""
    sf_gammainv_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_gammainv_e(const double x, gsl_sf_result * result)`
"""
function sf_gammainv_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_gammainv_e(x, result)
    return result
end

export sf_lngamma_complex_e
@doc md"""
    sf_lngamma_complex_e(zr, zi) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_lngamma_complex_e(double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * arg)`

GSL documentation:

### `int gsl_sf_lngamma_complex_e (double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * arg)`

> This routine computes $\log(\Gamma(z))$ for complex $z = z_r + i z_i$
> and $z$ not a negative integer or zero, using the complex Lanczos
> method. The returned parameters are $lnr = \log|\Gamma(z)|$ and
> $arg = \arg(\Gamma(z))$ in $(-\pi,\pi]$. Note that the phase part
> (`arg`) is not well-determined when $|z|$ is very large, due to
> inevitable roundoff in restricting to $(-\pi,\pi]$. This will result
> in a `GSL_ELOSS` error when it occurs. The absolute value part
> (`lnr`), however, never suffers from loss of precision.

"""
function sf_lngamma_complex_e(zr, zi)
    lnr = gsl_sf_result(0,0)
    arg = gsl_sf_result(0,0)
    output = C.sf_lngamma_complex_e(zr, zi, lnr, arg)
    return lnr, arg
end

export sf_taylorcoeff_e
@doc md"""
    sf_taylorcoeff_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_taylorcoeff_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_taylorcoeff_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_taylorcoeff_e(n, x, result)
    return result
end

export sf_fact_e
@doc md"""
    sf_fact_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_fact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_fact_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_fact_e(n, result)
    return result
end

export sf_doublefact_e
@doc md"""
    sf_doublefact_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_doublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_doublefact_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_doublefact_e(n, result)
    return result
end

export sf_lnfact_e
@doc md"""
    sf_lnfact_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_lnfact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_lnfact_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_lnfact_e(n, result)
    return result
end

export sf_lndoublefact_e
@doc md"""
    sf_lndoublefact_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_lndoublefact_e(const unsigned int n, gsl_sf_result * result)`
"""
function sf_lndoublefact_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_lndoublefact_e(n, result)
    return result
end

export sf_lnchoose_e
@doc md"""
    sf_lnchoose_e(n, m) -> gsl_sf_result

C signature:
`int gsl_sf_lnchoose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function sf_lnchoose_e(n, m)
    result = gsl_sf_result(0,0)
    output = C.sf_lnchoose_e(n, m, result)
    return result
end

export sf_choose_e
@doc md"""
    sf_choose_e(n, m) -> gsl_sf_result

C signature:
`int gsl_sf_choose_e(unsigned int n, unsigned int m, gsl_sf_result * result)`
"""
function sf_choose_e(n, m)
    result = gsl_sf_result(0,0)
    output = C.sf_choose_e(n, m, result)
    return result
end

export sf_lnpoch_e
@doc md"""
    sf_lnpoch_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_lnpoch_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_lnpoch_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_lnpoch_e(a, x, result)
    return result
end

export sf_lnpoch_sgn_e
@doc md"""
    sf_lnpoch_sgn_e(a, x, sgn) -> gsl_sf_result

C signature:
`int gsl_sf_lnpoch_sgn_e(const double a, const double x, gsl_sf_result * result, double * sgn)`

GSL documentation:

### `int gsl_sf_lnpoch_sgn_e (double a, double x, gsl_sf_result * result, double * sgn)`

> These routines compute the sign of the Pochhammer symbol and the
> logarithm of its magnitude. The computed parameters are
> $result = \log(|(a)_x|)$ with a corresponding error term, and
> $sgn = \sgn((a)_x)$ where $(a)_x = \Gamma(a + x)/\Gamma(a)$.

"""
function sf_lnpoch_sgn_e(a, x, sgn)
    result = gsl_sf_result(0,0)
    output = C.sf_lnpoch_sgn_e(a, x, result, sgn)
    return result
end

export sf_poch_e
@doc md"""
    sf_poch_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_poch_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_poch_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_poch_e(a, x, result)
    return result
end

export sf_pochrel_e
@doc md"""
    sf_pochrel_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_pochrel_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_pochrel_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_pochrel_e(a, x, result)
    return result
end

export sf_gamma_inc_Q_e
@doc md"""
    sf_gamma_inc_Q_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_gamma_inc_Q_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_Q_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gamma_inc_Q_e(a, x, result)
    return result
end

export sf_gamma_inc_P_e
@doc md"""
    sf_gamma_inc_P_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_gamma_inc_P_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_P_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gamma_inc_P_e(a, x, result)
    return result
end

export sf_gamma_inc_e
@doc md"""
    sf_gamma_inc_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_gamma_inc_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_gamma_inc_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gamma_inc_e(a, x, result)
    return result
end

export sf_lnbeta_e
@doc md"""
    sf_lnbeta_e(a, b) -> gsl_sf_result

C signature:
`int gsl_sf_lnbeta_e(const double a, const double b, gsl_sf_result * result)`
"""
function sf_lnbeta_e(a, b)
    result = gsl_sf_result(0,0)
    output = C.sf_lnbeta_e(a, b, result)
    return result
end

export sf_lnbeta_sgn_e
@doc md"""
    sf_lnbeta_sgn_e(x, y, sgn) -> gsl_sf_result

C signature:
`int gsl_sf_lnbeta_sgn_e(const double x, const double y, gsl_sf_result * result, double * sgn)`
"""
function sf_lnbeta_sgn_e(x, y, sgn)
    result = gsl_sf_result(0,0)
    output = C.sf_lnbeta_sgn_e(x, y, result, sgn)
    return result
end

export sf_beta_e
@doc md"""
    sf_beta_e(a, b) -> gsl_sf_result

C signature:
`int gsl_sf_beta_e(const double a, const double b, gsl_sf_result * result)`
"""
function sf_beta_e(a, b)
    result = gsl_sf_result(0,0)
    output = C.sf_beta_e(a, b, result)
    return result
end

export sf_beta_inc_e
@doc md"""
    sf_beta_inc_e(a, b, x) -> gsl_sf_result

C signature:
`int gsl_sf_beta_inc_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_beta_inc_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = C.sf_beta_inc_e(a, b, x, result)
    return result
end

export sf_gegenpoly_1_e
@doc md"""
    sf_gegenpoly_1_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_gegenpoly_1_e(double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_1_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gegenpoly_1_e(lambda, x, result)
    return result
end

export sf_gegenpoly_2_e
@doc md"""
    sf_gegenpoly_2_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_gegenpoly_2_e(double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_2_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gegenpoly_2_e(lambda, x, result)
    return result
end

export sf_gegenpoly_3_e
@doc md"""
    sf_gegenpoly_3_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_gegenpoly_3_e(double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_3_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gegenpoly_3_e(lambda, x, result)
    return result
end

export sf_gegenpoly_n_e
@doc md"""
    sf_gegenpoly_n_e(n, lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_gegenpoly_n_e(int n, double lambda, double x, gsl_sf_result * result)`
"""
function sf_gegenpoly_n_e(n, lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_gegenpoly_n_e(n, lambda, x, result)
    return result
end

export sf_gegenpoly_array
@doc md"""
    sf_gegenpoly_array(nmax, lambda, x) -> Array{Float64}

C signature:
`int gsl_sf_gegenpoly_array(int nmax, double lambda, double x, double * result_array)`

GSL documentation:

### `int gsl_sf_gegenpoly_array (int nmax, double lambda, double x, double result_array[])`

> This function computes an array of Gegenbauer polynomials
> $C^{(\lambda)}_n(x)$ for $n = 0, 1, 2, \dots, nmax$, subject to
> $\lambda > -1/2$, $nmax \ge 0$.

"""
function sf_gegenpoly_array(nmax, lambda, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_gegenpoly_array(nmax, lambda, x, result_array)
    return result_array
end

export sf_hermite_prob_e
@doc md"""
    sf_hermite_prob_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_prob_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_prob_e(n, x, result)
    return result
end

export sf_hermite_prob_deriv_e
@doc md"""
    sf_hermite_prob_deriv_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_prob_deriv_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_deriv_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_prob_deriv_e(m, n, x, result)
    return result
end

export sf_hermite_e
@doc md"""
    sf_hermite_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_e(n, x, result)
    return result
end

export sf_hermite_deriv_e
@doc md"""
    sf_hermite_deriv_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_deriv_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_deriv_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_deriv_e(m, n, x, result)
    return result
end

export sf_hermite_func_e
@doc md"""
    sf_hermite_func_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_func_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_func_e(n, x, result)
    return result
end

export sf_hermite_func_fast_e
@doc md"""
    sf_hermite_func_fast_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_func_fast_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_fast_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_func_fast_e(n, x, result)
    return result
end

export sf_hermite_prob_array
@doc md"""
    sf_hermite_prob_array(nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_prob_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all probabilist Hermite polynomials $He_n(x)$
> up to order `nmax` at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_prob_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_prob_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_prob_array_deriv
@doc md"""
    sf_hermite_prob_array_deriv(m, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_prob_array_deriv(const int m, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_array_deriv (const int m, const int nmax, const double x, double * result_array)`

> This routine evaluates the `m`-th derivative of all probabilist
> Hermite polynomials $He_n(x)$ from orders $0, \dots, \text{nmax}$ at
> position `x`. The result $d^m/dx^m He_n(x)$ is stored in
> `result_array[n]`. The output `result_array` must have length at least
> `nmax + 1`.

"""
function sf_hermite_prob_array_deriv(m, nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_prob_array_deriv(m, nmax, x, result_array)
    return result_array
end

export sf_hermite_prob_deriv_array
@doc md"""
    sf_hermite_prob_deriv_array(mmax, n, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_prob_deriv_array(const int mmax, const int n, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_prob_deriv_array (const int mmax, const int n, const double x, double * result_array)`

> This routine evaluates all derivative orders from
> $0, \dots, \text{mmax}$ of the probabilist Hermite polynomial of order
> `n`, $He_n$, at position `x`. The result $d^m/dx^m He_n(x)$ is stored
> in `result_array[m]`. The output `result_array` must have length at
> least `mmax + 1`.

"""
function sf_hermite_prob_deriv_array(mmax, n, x)
    result_array = zeros(Cdouble, mmax)
    output = C.sf_hermite_prob_deriv_array(mmax, n, x, result_array)
    return result_array
end

export sf_hermite_prob_series_e
@doc md"""
    sf_hermite_prob_series_e(n, x, a) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_prob_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_prob_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_prob_series_e(n, x, a, result)
    return result
end

export sf_hermite_array
@doc md"""
    sf_hermite_array(nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all physicist Hermite polynomials $H_n$ up to
> order `nmax` at position `x`. The results are stored in
> `result_array`.

"""
function sf_hermite_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_array_deriv
@doc md"""
    sf_hermite_array_deriv(m, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_array_deriv(const int m, const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_array_deriv (const int m, const int nmax, const double x, double * result_array)`

> This routine evaluates the `m`-th derivative of all physicist Hermite
> polynomials $H_n(x)$ from orders $0, \dots, \text{nmax}$ at position
> `x`. The result $d^m/dx^m H_n(x)$ is stored in `result_array[n]`. The
> output `result_array` must have length at least `nmax + 1`.

"""
function sf_hermite_array_deriv(m, nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_array_deriv(m, nmax, x, result_array)
    return result_array
end

export sf_hermite_deriv_array
@doc md"""
    sf_hermite_deriv_array(mmax, n, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_deriv_array(const int mmax, const int n, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_deriv_array (const int mmax, const int n, const double x, double * result_array)`

> This routine evaluates all derivative orders from
> $0, \dots, \text{mmax}$ of the physicist Hermite polynomial of order
> `n`, $H_n$, at position `x`. The result $d^m/dx^m H_n(x)$ is stored in
> `result_array[m]`. The output `result_array` must have length at least
> `mmax + 1`.

"""
function sf_hermite_deriv_array(mmax, n, x)
    result_array = zeros(Cdouble, mmax)
    output = C.sf_hermite_deriv_array(mmax, n, x, result_array)
    return result_array
end

export sf_hermite_series_e
@doc md"""
    sf_hermite_series_e(n, x, a) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_series_e(n, x, a, result)
    return result
end

export sf_hermite_func_array
@doc md"""
    sf_hermite_func_array(nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_func_array(const int nmax, const double x, double * result_array)`

GSL documentation:

### `int gsl_sf_hermite_func_array (const int nmax, const double x, double * result_array)`

> This routine evaluates all Hermite functions $\psi_n(x)$ for orders
> $n = 0, \dots, \textrm{nmax}$ at position `x`, using the recurrence
> relation algorithm. The results are stored in `result_array` which has
> length at least `nmax + 1`.

"""
function sf_hermite_func_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_func_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_func_series_e
@doc md"""
    sf_hermite_func_series_e(n, x, a) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_func_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_func_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_func_series_e(n, x, a, result)
    return result
end

export sf_hermite_func_der_e
@doc md"""
    sf_hermite_func_der_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_func_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_func_der_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_func_der_e(m, n, x, result)
    return result
end

export sf_hermite_prob_zero_e
@doc md"""
    sf_hermite_prob_zero_e(n, s) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_prob_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_prob_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_prob_zero_e(n, s, result)
    return result
end

export sf_hermite_zero_e
@doc md"""
    sf_hermite_zero_e(n, s) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_zero_e(n, s, result)
    return result
end

export sf_hermite_func_zero_e
@doc md"""
    sf_hermite_func_zero_e(n, s) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_func_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_func_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_func_zero_e(n, s, result)
    return result
end

export sf_hermite_phys_e
@doc md"""
    sf_hermite_phys_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_phys_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_phys_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_phys_e(n, x, result)
    return result
end

export sf_hermite_phys_der_e
@doc md"""
    sf_hermite_phys_der_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_phys_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_phys_der_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_phys_der_e(m, n, x, result)
    return result
end

export sf_hermite_phys_array
@doc md"""
    sf_hermite_phys_array(nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_phys_array(const int nmax, const double x, double * result_array)`
"""
function sf_hermite_phys_array(nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_phys_array(nmax, x, result_array)
    return result_array
end

export sf_hermite_phys_series_e
@doc md"""
    sf_hermite_phys_series_e(n, x, a) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_phys_series_e(const int n, const double x, const double * a, gsl_sf_result * result)`
"""
function sf_hermite_phys_series_e(n, x, a)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_phys_series_e(n, x, a, result)
    return result
end

export sf_hermite_phys_array_der
@doc md"""
    sf_hermite_phys_array_der(m, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_phys_array_der(const int m, const int nmax, const double x, double * result_array)`
"""
function sf_hermite_phys_array_der(m, nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_phys_array_der(m, nmax, x, result_array)
    return result_array
end

export sf_hermite_phys_der_array
@doc md"""
    sf_hermite_phys_der_array(mmax, n, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_phys_der_array(const int mmax, const int n, const double x, double * result_array)`
"""
function sf_hermite_phys_der_array(mmax, n, x)
    result_array = zeros(Cdouble, mmax)
    output = C.sf_hermite_phys_der_array(mmax, n, x, result_array)
    return result_array
end

export sf_hermite_phys_zero_e
@doc md"""
    sf_hermite_phys_zero_e(n, s) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_phys_zero_e(const int n, const int s, gsl_sf_result * result)`
"""
function sf_hermite_phys_zero_e(n, s)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_phys_zero_e(n, s, result)
    return result
end

export sf_hermite_prob_array_der
@doc md"""
    sf_hermite_prob_array_der(m, nmax, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_prob_array_der(const int m, const int nmax, const double x, double * result_array)`
"""
function sf_hermite_prob_array_der(m, nmax, x)
    result_array = zeros(Cdouble, (nmax + 1))
    output = C.sf_hermite_prob_array_der(m, nmax, x, result_array)
    return result_array
end

export sf_hermite_prob_der_array
@doc md"""
    sf_hermite_prob_der_array(mmax, n, x) -> Array{Float64}

C signature:
`int gsl_sf_hermite_prob_der_array(const int mmax, const int n, const double x, double * result_array)`
"""
function sf_hermite_prob_der_array(mmax, n, x)
    result_array = zeros(Cdouble, mmax)
    output = C.sf_hermite_prob_der_array(mmax, n, x, result_array)
    return result_array
end

export sf_hermite_prob_der_e
@doc md"""
    sf_hermite_prob_der_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hermite_prob_der_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hermite_prob_der_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hermite_prob_der_e(m, n, x, result)
    return result
end

export sf_hyperg_0F1_e
@doc md"""
    sf_hyperg_0F1_e(c, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_0F1_e(double c, double x, gsl_sf_result * result)`
"""
function sf_hyperg_0F1_e(c, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_0F1_e(c, x, result)
    return result
end

export sf_hyperg_1F1_int_e
@doc md"""
    sf_hyperg_1F1_int_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_1F1_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_1F1_int_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_1F1_int_e(m, n, x, result)
    return result
end

export sf_hyperg_1F1_e
@doc md"""
    sf_hyperg_1F1_e(a, b, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_1F1_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_1F1_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_1F1_e(a, b, x, result)
    return result
end

export sf_hyperg_U_int_e
@doc md"""
    sf_hyperg_U_int_e(m, n, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_U_int_e(const int m, const int n, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_U_int_e(m, n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_U_int_e(m, n, x, result)
    return result
end

export sf_hyperg_U_int_e10_e
@doc md"""
    sf_hyperg_U_int_e10_e(m, n, x) -> gsl_sf_result_e10

C signature:
`int gsl_sf_hyperg_U_int_e10_e(const int m, const int n, const double x, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_hyperg_U_int_e10_e (int m, int n, double x, gsl_sf_result_e10 * result)`

> This routine computes the confluent hypergeometric function $U(m,n,x)$
> for integer parameters `m`, `n` using the `gsl_sf_result_e10` type to
> return a result with extended range.

"""
function sf_hyperg_U_int_e10_e(m, n, x)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_hyperg_U_int_e10_e(m, n, x, result)
    return result
end

export sf_hyperg_U_e
@doc md"""
    sf_hyperg_U_e(a, b, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_U_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_U_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_U_e(a, b, x, result)
    return result
end

export sf_hyperg_U_e10_e
@doc md"""
    sf_hyperg_U_e10_e(a, b, x) -> gsl_sf_result_e10

C signature:
`int gsl_sf_hyperg_U_e10_e(const double a, const double b, const double x, gsl_sf_result_e10 * result)`

GSL documentation:

### `int gsl_sf_hyperg_U_e10_e (double a, double b, double x, gsl_sf_result_e10 * result)`

> This routine computes the confluent hypergeometric function $U(a,b,x)$
> using the `gsl_sf_result_e10` type to return a result with extended
> range.

"""
function sf_hyperg_U_e10_e(a, b, x)
    result = gsl_sf_result_e10(0,0,0)
    output = C.sf_hyperg_U_e10_e(a, b, x, result)
    return result
end

export sf_hyperg_2F1_e
@doc md"""
    sf_hyperg_2F1_e(a, b, c, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_2F1_e(double a, double b, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_e(a, b, c, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_2F1_e(a, b, c, x, result)
    return result
end

export sf_hyperg_2F1_conj_e
@doc md"""
    sf_hyperg_2F1_conj_e(aR, aI, c, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_2F1_conj_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_conj_e(aR, aI, c, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_2F1_conj_e(aR, aI, c, x, result)
    return result
end

export sf_hyperg_2F1_renorm_e
@doc md"""
    sf_hyperg_2F1_renorm_e(a, b, c, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_2F1_renorm_e(const double a, const double b, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_renorm_e(a, b, c, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_2F1_renorm_e(a, b, c, x, result)
    return result
end

export sf_hyperg_2F1_conj_renorm_e
@doc md"""
    sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_2F1_conj_renorm_e(const double aR, const double aI, const double c, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, result)
    return result
end

export sf_hyperg_2F0_e
@doc md"""
    sf_hyperg_2F0_e(a, b, x) -> gsl_sf_result

C signature:
`int gsl_sf_hyperg_2F0_e(const double a, const double b, const double x, gsl_sf_result * result)`
"""
function sf_hyperg_2F0_e(a, b, x)
    result = gsl_sf_result(0,0)
    output = C.sf_hyperg_2F0_e(a, b, x, result)
    return result
end

export sf_laguerre_1_e
@doc md"""
    sf_laguerre_1_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_laguerre_1_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_1_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_laguerre_1_e(a, x, result)
    return result
end

export sf_laguerre_2_e
@doc md"""
    sf_laguerre_2_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_laguerre_2_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_2_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_laguerre_2_e(a, x, result)
    return result
end

export sf_laguerre_3_e
@doc md"""
    sf_laguerre_3_e(a, x) -> gsl_sf_result

C signature:
`int gsl_sf_laguerre_3_e(const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_3_e(a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_laguerre_3_e(a, x, result)
    return result
end

export sf_laguerre_n_e
@doc md"""
    sf_laguerre_n_e(n, a, x) -> gsl_sf_result

C signature:
`int gsl_sf_laguerre_n_e(const int n, const double a, const double x, gsl_sf_result * result)`
"""
function sf_laguerre_n_e(n, a, x)
    result = gsl_sf_result(0,0)
    output = C.sf_laguerre_n_e(n, a, x, result)
    return result
end

export sf_lambert_W0_e
@doc md"""
    sf_lambert_W0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_lambert_W0_e(double x, gsl_sf_result * result)`
"""
function sf_lambert_W0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_lambert_W0_e(x, result)
    return result
end

export sf_lambert_Wm1_e
@doc md"""
    sf_lambert_Wm1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_lambert_Wm1_e(double x, gsl_sf_result * result)`
"""
function sf_lambert_Wm1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_lambert_Wm1_e(x, result)
    return result
end

export sf_legendre_Pl_e
@doc md"""
    sf_legendre_Pl_e(l, x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_Pl_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Pl_e(l, x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_Pl_e(l, x, result)
    return result
end

export sf_legendre_Pl_array
@doc md"""
    sf_legendre_Pl_array(lmax, x) -> Array{Float64}

C signature:
`int gsl_sf_legendre_Pl_array( const int lmax, const double x, double * result_array )`

GSL documentation:

### `int gsl_sf_legendre_Pl_array (int lmax, double x, double result_array[])`

> int gsl\_sf\_legendre\_Pl\_deriv\_array (int lmax, double x, double
> result\_array\[\], double result\_deriv\_array\[\])

> These functions compute arrays of Legendre polynomials $P_l(x)$ and
> derivatives $dP_l(x)/dx$ for $l = 0, \dots, lmax$ and $|x| \le 1$.

"""
function sf_legendre_Pl_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_legendre_Pl_array(lmax, x, result_array)
    return result_array
end

export sf_legendre_Pl_deriv_array
@doc md"""
    sf_legendre_Pl_deriv_array(lmax, x) -> (Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_Pl_deriv_array( const int lmax, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_Pl_deriv_array(lmax, x)
    result_array = zeros(Cdouble, (lmax+1))
    result_deriv_array = zeros(Cdouble, (lmax+1))
    output = C.sf_legendre_Pl_deriv_array(lmax, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_P1_e
@doc md"""
    sf_legendre_P1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_P1_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_P1_e(x, result)
    return result
end

export sf_legendre_P2_e
@doc md"""
    sf_legendre_P2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_P2_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_P2_e(x, result)
    return result
end

export sf_legendre_P3_e
@doc md"""
    sf_legendre_P3_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_P3_e(double x, gsl_sf_result * result)`
"""
function sf_legendre_P3_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_P3_e(x, result)
    return result
end

export sf_legendre_Q0_e
@doc md"""
    sf_legendre_Q0_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_Q0_e(const double x, gsl_sf_result * result)`
"""
function sf_legendre_Q0_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_Q0_e(x, result)
    return result
end

export sf_legendre_Q1_e
@doc md"""
    sf_legendre_Q1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_Q1_e(const double x, gsl_sf_result * result)`
"""
function sf_legendre_Q1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_Q1_e(x, result)
    return result
end

export sf_legendre_Ql_e
@doc md"""
    sf_legendre_Ql_e(l, x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_Ql_e(const int l, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Ql_e(l, x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_Ql_e(l, x, result)
    return result
end

export sf_legendre_Plm_e
@doc md"""
    sf_legendre_Plm_e(l, m, x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_Plm_e(const int l, const int m, const double x, gsl_sf_result * result)`
"""
function sf_legendre_Plm_e(l, m, x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_Plm_e(l, m, x, result)
    return result
end

export sf_legendre_sphPlm_e
@doc md"""
    sf_legendre_sphPlm_e(l, m, x) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_sphPlm_e(const int l, int m, const double x, gsl_sf_result * result)`
"""
function sf_legendre_sphPlm_e(l, m, x)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_sphPlm_e(l, m, x, result)
    return result
end

export sf_legendre_sphPlm_array
@doc md"""
    sf_legendre_sphPlm_array(lmax, m, x) -> Array{Float64}

C signature:
`int gsl_sf_legendre_sphPlm_array( const int lmax, int m, const double x, double * result_array )`

GSL documentation:

### `int gsl_sf_legendre_sphPlm_array (int lmax, int m, double x, double result_array[])`

> int gsl\_sf\_legendre\_sphPlm\_deriv\_array (int lmax, int m, double
> x, double result\_array\[\], double result\_deriv\_array\[\])

> These functions are now deprecated and will be removed in a future
> release; see `gsl_sf_legendre_array` and
> `gsl_sf_legendre_deriv_array`.

"""
function sf_legendre_sphPlm_array(lmax, m, x)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_legendre_sphPlm_array(lmax, m, x, result_array)
    return result_array
end

export sf_legendre_sphPlm_deriv_array
@doc md"""
    sf_legendre_sphPlm_deriv_array(lmax, m, x) -> (Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_sphPlm_deriv_array( const int lmax, const int m, const double x, double * result_array, double * result_deriv_array )`
"""
function sf_legendre_sphPlm_deriv_array(lmax, m, x)
    result_array = zeros(Cdouble, (lmax+1))
    result_deriv_array = zeros(Cdouble, (lmax+1))
    output = C.sf_legendre_sphPlm_deriv_array(lmax, m, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_conicalP_half_e
@doc md"""
    sf_conicalP_half_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_conicalP_half_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_half_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_conicalP_half_e(lambda, x, result)
    return result
end

export sf_conicalP_mhalf_e
@doc md"""
    sf_conicalP_mhalf_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_conicalP_mhalf_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_mhalf_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_conicalP_mhalf_e(lambda, x, result)
    return result
end

export sf_conicalP_0_e
@doc md"""
    sf_conicalP_0_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_conicalP_0_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_0_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_conicalP_0_e(lambda, x, result)
    return result
end

export sf_conicalP_1_e
@doc md"""
    sf_conicalP_1_e(lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_conicalP_1_e(const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_1_e(lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_conicalP_1_e(lambda, x, result)
    return result
end

export sf_conicalP_sph_reg_e
@doc md"""
    sf_conicalP_sph_reg_e(l, lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_conicalP_sph_reg_e(const int l, const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_sph_reg_e(l, lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_conicalP_sph_reg_e(l, lambda, x, result)
    return result
end

export sf_conicalP_cyl_reg_e
@doc md"""
    sf_conicalP_cyl_reg_e(m, lambda, x) -> gsl_sf_result

C signature:
`int gsl_sf_conicalP_cyl_reg_e(const int m, const double lambda, const double x, gsl_sf_result * result)`
"""
function sf_conicalP_cyl_reg_e(m, lambda, x)
    result = gsl_sf_result(0,0)
    output = C.sf_conicalP_cyl_reg_e(m, lambda, x, result)
    return result
end

export sf_legendre_H3d_0_e
@doc md"""
    sf_legendre_H3d_0_e(lambda, eta) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_H3d_0_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_0_e(lambda, eta)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_H3d_0_e(lambda, eta, result)
    return result
end

export sf_legendre_H3d_1_e
@doc md"""
    sf_legendre_H3d_1_e(lambda, eta) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_H3d_1_e(const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_1_e(lambda, eta)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_H3d_1_e(lambda, eta, result)
    return result
end

export sf_legendre_H3d_e
@doc md"""
    sf_legendre_H3d_e(l, lambda, eta) -> gsl_sf_result

C signature:
`int gsl_sf_legendre_H3d_e(const int l, const double lambda, const double eta, gsl_sf_result * result)`
"""
function sf_legendre_H3d_e(l, lambda, eta)
    result = gsl_sf_result(0,0)
    output = C.sf_legendre_H3d_e(l, lambda, eta, result)
    return result
end

export sf_legendre_H3d_array
@doc md"""
    sf_legendre_H3d_array(lmax, lambda, eta) -> Array{Float64}

C signature:
`int gsl_sf_legendre_H3d_array(const int lmax, const double lambda, const double eta, double * result_array)`

GSL documentation:

### `int gsl_sf_legendre_H3d_array (int lmax, double lambda, double eta, double result_array[])`

> This function computes an array of radial eigenfunctions
> $L^{H3d}_l( \lambda, \eta)$ for $0 \le l \le lmax$.

"""
function sf_legendre_H3d_array(lmax, lambda, eta)
    result_array = zeros(Cdouble, (lmax+1))
    output = C.sf_legendre_H3d_array(lmax, lambda, eta, result_array)
    return result_array
end

export sf_legendre_array
@doc md"""
    sf_legendre_array(norm, lmax, x) -> Array{Float64}

C signature:
`int gsl_sf_legendre_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[])`

GSL documentation:

### `int gsl_sf_legendre_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[])`

> int gsl\_sf\_legendre\_array\_e (const gsl\_sf\_legendre\_t norm,
> const size\_t lmax, const double x, const double csphase, double
> result\_array\[\])

> These functions calculate all normalized associated Legendre
> polynomials for $0 \le l \le lmax$ and $0 \le m \le l$ for
> $|x| \le 1$. The `norm` parameter specifies which normalization is
> used. The normalized $P_l^m(x)$ values are stored in `result_array`,
> whose minimum size can be obtained from calling
> `gsl_sf_legendre_array_n`. The array index of $P_l^m(x)$ is obtained
> from calling `gsl_sf_legendre_array_index(l, m)`. To include or
> exclude the Condon-Shortley phase factor of $(-1)^m$, set the
> parameter `csphase` to either $-1$ or $1$ respectively in the `_e`
> function. This factor is excluded by default.

"""
function sf_legendre_array(norm, lmax, x)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_array(norm, lmax, x, result_array)
    return result_array
end

export sf_legendre_array_e
@doc md"""
    sf_legendre_array_e(norm, lmax, x, csphase) -> Array{Float64}

C signature:
`int gsl_sf_legendre_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[])`
"""
function sf_legendre_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_array_e(norm, lmax, x, csphase, result_array)
    return result_array
end

export sf_legendre_deriv_array
@doc md"""
    sf_legendre_deriv_array(norm, lmax, x) -> (Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

> int gsl\_sf\_legendre\_deriv\_array\_e (const gsl\_sf\_legendre\_t
> norm, const size\_t lmax, const double x, const double csphase, double
> result\_array\[\], double result\_deriv\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their first derivatives up to degree `lmax` for $|x| < 1$. The
> parameter `norm` specifies the normalization used. The normalized
> $P_l^m(x)$ values and their derivatives $dP_l^m(x)/dx$ are stored in
> `result_array` and `result_deriv_array` respectively. To include or
> exclude the Condon-Shortley phase factor of $(-1)^m$, set the
> parameter `csphase` to either $-1$ or $1$ respectively in the `_e`
> function. This factor is excluded by default.

"""
function sf_legendre_deriv_array(norm, lmax, x)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv_array(norm, lmax, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv_array_e
@doc md"""
    sf_legendre_deriv_array_e(norm, lmax, x, csphase) -> (Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv_alt_array
@doc md"""
    sf_legendre_deriv_alt_array(norm, lmax, x) -> (Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv_alt_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[])`

> int gsl\_sf\_legendre\_deriv\_alt\_array\_e (const
> gsl\_sf\_legendre\_t norm, const size\_t lmax, const double x, const
> double csphase, double result\_array\[\], double
> result\_deriv\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their (alternate) first derivatives up to degree `lmax` for
> $|x| < 1$. The normalized $P_l^m(x)$ values and their derivatives
> $dP_l^m(\cos{\theta})/d\theta$ are stored in `result_array` and
> `result_deriv_array` respectively. To include or exclude the
> Condon-Shortley phase factor of $(-1)^m$, set the parameter `csphase`
> to either $-1$ or $1$ respectively in the `_e` function. This factor
> is excluded by default.

"""
function sf_legendre_deriv_alt_array(norm, lmax, x)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv_alt_array(norm, lmax, x, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv_alt_array_e
@doc md"""
    sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase) -> (Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[])`
"""
function sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array)
    return result_array, result_deriv_array
end

export sf_legendre_deriv2_array
@doc md"""
    sf_legendre_deriv2_array(norm, lmax, x) -> (Array{Float64}, Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv2_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv2_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

> int gsl\_sf\_legendre\_deriv2\_array\_e (const gsl\_sf\_legendre\_t
> norm, const size\_t lmax, const double x, const double csphase, double
> result\_array\[\], double result\_deriv\_array\[\], double
> result\_deriv2\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their first and second derivatives up to degree `lmax` for
> $|x| < 1$. The parameter `norm` specifies the normalization used. The
> normalized $P_l^m(x)$, their first derivatives $dP_l^m(x)/dx$, and
> their second derivatives $d^2 P_l^m(x)/dx^2$ are stored in
> `result_array`, `result_deriv_array`, and `result_deriv2_array`
> respectively. To include or exclude the Condon-Shortley phase factor
> of $(-1)^m$, set the parameter `csphase` to either $-1$ or $1$
> respectively in the `_e` function. This factor is excluded by default.

"""
function sf_legendre_deriv2_array(norm, lmax, x)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv2_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_legendre_deriv2_array_e
@doc md"""
    sf_legendre_deriv2_array_e(norm, lmax, x, csphase) -> (Array{Float64}, Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv2_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv2_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_legendre_deriv2_alt_array
@doc md"""
    sf_legendre_deriv2_alt_array(norm, lmax, x) -> (Array{Float64}, Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv2_alt_array(const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

GSL documentation:

### `int gsl_sf_legendre_deriv2_alt_array (const gsl_sf_legendre_t norm, const size_t lmax, const double x, double result_array[], double result_deriv_array[], double result_deriv2_array[])`

> int gsl\_sf\_legendre\_deriv2\_alt\_array\_e (const
> gsl\_sf\_legendre\_t norm, const size\_t lmax, const double x, const
> double csphase, double result\_array\[\], double
> result\_deriv\_array\[\], double result\_deriv2\_array\[\])

> These functions calculate all normalized associated Legendre functions
> and their (alternate) first and second derivatives up to degree `lmax`
> for $|x| < 1$. The parameter `norm` specifies the normalization used.
> The normalized $P_l^m(x)$, their first derivatives
> $dP_l^m(\cos{\theta})/d\theta$, and their second derivatives
> $d^2 P_l^m(\cos{\theta})/d\theta^2$ are stored in `result_array`,
> `result_deriv_array`, and `result_deriv2_array` respectively. To
> include or exclude the Condon-Shortley phase factor of $(-1)^m$, set
> the parameter `csphase` to either $-1$ or $1$ respectively in the `_e`
> function. This factor is excluded by default.

"""
function sf_legendre_deriv2_alt_array(norm, lmax, x)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv2_alt_array(norm, lmax, x, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_legendre_deriv2_alt_array_e
@doc md"""
    sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase) -> (Array{Float64}, Array{Float64}, Array{Float64})

C signature:
`int gsl_sf_legendre_deriv2_alt_array_e(const gsl_sf_legendre_t norm, const size_t lmax, const double x, const double csphase, double result_array[], double result_deriv_array[], double result_deriv2_array[])`
"""
function sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase)
    result_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    result_deriv2_array = zeros(Cdouble, sf_legendre_array_n(lmax))
    output = C.sf_legendre_deriv2_alt_array_e(norm, lmax, x, csphase, result_array, result_deriv_array, result_deriv2_array)
    return result_array, result_deriv_array, result_deriv2_array
end

export sf_log_e
@doc md"""
    sf_log_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_log_e(const double x, gsl_sf_result * result)`
"""
function sf_log_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_log_e(x, result)
    return result
end

export sf_log_abs_e
@doc md"""
    sf_log_abs_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_log_abs_e(const double x, gsl_sf_result * result)`
"""
function sf_log_abs_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_log_abs_e(x, result)
    return result
end

export sf_complex_log_e
@doc md"""
    sf_complex_log_e(zr, zi) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_log_e(const double zr, const double zi, gsl_sf_result * lnr, gsl_sf_result * theta)`

GSL documentation:

### `int gsl_sf_complex_log_e (double zr, double zi, gsl_sf_result * lnr, gsl_sf_result * theta)`

> This routine computes the complex logarithm of $z = z_r + i z_i$. The
> results are returned as `lnr`, `theta` such that
> $\exp(lnr + i \theta) = z_r + i z_i$, where $\theta$ lies in the range
> $[-\pi,\pi]$.

"""
function sf_complex_log_e(zr, zi)
    lnr = gsl_sf_result(0,0)
    theta = gsl_sf_result(0,0)
    output = C.sf_complex_log_e(zr, zi, lnr, theta)
    return lnr, theta
end

export sf_log_1plusx_e
@doc md"""
    sf_log_1plusx_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_log_1plusx_e(const double x, gsl_sf_result * result)`
"""
function sf_log_1plusx_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_log_1plusx_e(x, result)
    return result
end

export sf_log_1plusx_mx_e
@doc md"""
    sf_log_1plusx_mx_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_log_1plusx_mx_e(const double x, gsl_sf_result * result)`
"""
function sf_log_1plusx_mx_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_log_1plusx_mx_e(x, result)
    return result
end

export sf_mathieu_a_array
@doc md"""
    sf_mathieu_a_array(order_min, order_max, qq, work) -> Array{Float64}

C signature:
`int gsl_sf_mathieu_a_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`

GSL documentation:

### `int gsl_sf_mathieu_a_array (int order_min, int order_max, double q, gsl_sf_mathieu_workspace * work, double result_array[])`

> int gsl\_sf\_mathieu\_b\_array (int order\_min, int order\_max, double
> q, gsl\_sf\_mathieu\_workspace \* work, double result\_array\[\])

> These routines compute a series of Mathieu characteristic values
> $a_n(q)$, $b_n(q)$ for $n$ from `order_min` to `order_max` inclusive,
> storing the results in the array `result_array`.

"""
function sf_mathieu_a_array(order_min, order_max, qq, work)
    result_array = zeros(Cdouble, order_min)
    output = C.sf_mathieu_a_array(order_min, order_max, qq, work, result_array)
    return result_array
end

export sf_mathieu_b_array
@doc md"""
    sf_mathieu_b_array(order_min, order_max, qq, work) -> Array{Float64}

C signature:
`int gsl_sf_mathieu_b_array(int order_min, int order_max, double qq, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_b_array(order_min, order_max, qq, work)
    result_array = zeros(Cdouble, order_min)
    output = C.sf_mathieu_b_array(order_min, order_max, qq, work, result_array)
    return result_array
end

export sf_mathieu_a_e
@doc md"""
    sf_mathieu_a_e(order, qq) -> gsl_sf_result

C signature:
`int gsl_sf_mathieu_a_e(int order, double qq, gsl_sf_result *result)`
"""
function sf_mathieu_a_e(order, qq)
    result = gsl_sf_result(0,0)
    output = C.sf_mathieu_a_e(order, qq, result)
    return result
end

export sf_mathieu_b_e
@doc md"""
    sf_mathieu_b_e(order, qq) -> gsl_sf_result

C signature:
`int gsl_sf_mathieu_b_e(int order, double qq, gsl_sf_result *result)`
"""
function sf_mathieu_b_e(order, qq)
    result = gsl_sf_result(0,0)
    output = C.sf_mathieu_b_e(order, qq, result)
    return result
end

export sf_mathieu_ce_e
@doc md"""
    sf_mathieu_ce_e(order, qq, zz) -> gsl_sf_result

C signature:
`int gsl_sf_mathieu_ce_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_ce_e(order, qq, zz)
    result = gsl_sf_result(0,0)
    output = C.sf_mathieu_ce_e(order, qq, zz, result)
    return result
end

export sf_mathieu_se_e
@doc md"""
    sf_mathieu_se_e(order, qq, zz) -> gsl_sf_result

C signature:
`int gsl_sf_mathieu_se_e(int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_se_e(order, qq, zz)
    result = gsl_sf_result(0,0)
    output = C.sf_mathieu_se_e(order, qq, zz, result)
    return result
end

export sf_mathieu_ce_array
@doc md"""
    sf_mathieu_ce_array(nmin, nmax, qq, zz, work) -> Array{Float64}

C signature:
`int gsl_sf_mathieu_ce_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`

GSL documentation:

### `int gsl_sf_mathieu_ce_array (int nmin, int nmax, double q, double x, gsl_sf_mathieu_workspace * work, double result_array[])`

> int gsl\_sf\_mathieu\_se\_array (int nmin, int nmax, double q, double
> x, gsl\_sf\_mathieu\_workspace \* work, double result\_array\[\])

> These routines compute a series of the angular Mathieu functions
> $ce_n(q,x)$ and $se_n(q,x)$ of order $n$ from `nmin` to `nmax`
> inclusive, storing the results in the array `result_array`.

"""
function sf_mathieu_ce_array(nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_mathieu_ce_array(nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_mathieu_se_array
@doc md"""
    sf_mathieu_se_array(nmin, nmax, qq, zz, work) -> Array{Float64}

C signature:
`int gsl_sf_mathieu_se_array(int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_se_array(nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_mathieu_se_array(nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_mathieu_Mc_e
@doc md"""
    sf_mathieu_Mc_e(kind, order, qq, zz) -> gsl_sf_result

C signature:
`int gsl_sf_mathieu_Mc_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_Mc_e(kind, order, qq, zz)
    result = gsl_sf_result(0,0)
    output = C.sf_mathieu_Mc_e(kind, order, qq, zz, result)
    return result
end

export sf_mathieu_Ms_e
@doc md"""
    sf_mathieu_Ms_e(kind, order, qq, zz) -> gsl_sf_result

C signature:
`int gsl_sf_mathieu_Ms_e(int kind, int order, double qq, double zz, gsl_sf_result *result)`
"""
function sf_mathieu_Ms_e(kind, order, qq, zz)
    result = gsl_sf_result(0,0)
    output = C.sf_mathieu_Ms_e(kind, order, qq, zz, result)
    return result
end

export sf_mathieu_Mc_array
@doc md"""
    sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work) -> Array{Float64}

C signature:
`int gsl_sf_mathieu_Mc_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`

GSL documentation:

### `int gsl_sf_mathieu_Mc_array (int j, int nmin, int nmax, double q, double x, gsl_sf_mathieu_workspace * work, double result_array[])`

> int gsl\_sf\_mathieu\_Ms\_array (int j, int nmin, int nmax, double q,
> double x, gsl\_sf\_mathieu\_workspace \* work, double
> result\_array\[\])

> These routines compute a series of the radial Mathieu functions of
> kind `j`, with order from `nmin` to `nmax` inclusive, storing the

"""
function sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_mathieu_Mc_array(kind, nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_mathieu_Ms_array
@doc md"""
    sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work) -> Array{Float64}

C signature:
`int gsl_sf_mathieu_Ms_array(int kind, int nmin, int nmax, double qq, double zz, gsl_sf_mathieu_workspace *work, double result_array[])`
"""
function sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work)
    result_array = zeros(Cdouble, (nmax - nmin + 1))
    output = C.sf_mathieu_Ms_array(kind, nmin, nmax, qq, zz, work, result_array)
    return result_array
end

export sf_pow_int_e
@doc md"""
    sf_pow_int_e(x, n) -> gsl_sf_result

C signature:
`int gsl_sf_pow_int_e(double x, int n, gsl_sf_result * result)`
"""
function sf_pow_int_e(x, n)
    result = gsl_sf_result(0,0)
    output = C.sf_pow_int_e(x, n, result)
    return result
end

export sf_psi_int_e
@doc md"""
    sf_psi_int_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_psi_int_e(const int n, gsl_sf_result * result)`
"""
function sf_psi_int_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_psi_int_e(n, result)
    return result
end

export sf_psi_e
@doc md"""
    sf_psi_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_psi_e(const double x, gsl_sf_result * result)`
"""
function sf_psi_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_psi_e(x, result)
    return result
end

export sf_psi_1piy_e
@doc md"""
    sf_psi_1piy_e(y) -> gsl_sf_result

C signature:
`int gsl_sf_psi_1piy_e(const double y, gsl_sf_result * result)`
"""
function sf_psi_1piy_e(y)
    result = gsl_sf_result(0,0)
    output = C.sf_psi_1piy_e(y, result)
    return result
end

export sf_complex_psi_e
@doc md"""
    sf_complex_psi_e(x, y) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_psi_e( const double x, const double y, gsl_sf_result * result_re, gsl_sf_result * result_im )`
"""
function sf_complex_psi_e(x, y)
    result_re = gsl_sf_result(0,0)
    result_im = gsl_sf_result(0,0)
    output = C.sf_complex_psi_e(x, y, result_re, result_im)
    return result_re, result_im
end

export sf_psi_1_int_e
@doc md"""
    sf_psi_1_int_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_psi_1_int_e(const int n, gsl_sf_result * result)`
"""
function sf_psi_1_int_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_psi_1_int_e(n, result)
    return result
end

export sf_psi_1_e
@doc md"""
    sf_psi_1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_psi_1_e(const double x, gsl_sf_result * result)`
"""
function sf_psi_1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_psi_1_e(x, result)
    return result
end

export sf_psi_n_e
@doc md"""
    sf_psi_n_e(n, x) -> gsl_sf_result

C signature:
`int gsl_sf_psi_n_e(const int n, const double x, gsl_sf_result * result)`
"""
function sf_psi_n_e(n, x)
    result = gsl_sf_result(0,0)
    output = C.sf_psi_n_e(n, x, result)
    return result
end

export sf_result_smash_e
@doc md"""
    sf_result_smash_e() -> (gsl_sf_result_e10, gsl_sf_result)

C signature:
`int gsl_sf_result_smash_e(const gsl_sf_result_e10 * re, gsl_sf_result * r)`
"""
function sf_result_smash_e()
    re = gsl_sf_result_e10(0,0,0)
    r = gsl_sf_result(0,0)
    output = C.sf_result_smash_e(re, r)
    return re, r
end

export sf_sin_pi_e
@doc md"""
    sf_sin_pi_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_sin_pi_e(double x, gsl_sf_result * result)`
"""
function sf_sin_pi_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_sin_pi_e(x, result)
    return result
end

export sf_cos_pi_e
@doc md"""
    sf_cos_pi_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_cos_pi_e(double x, gsl_sf_result * result)`
"""
function sf_cos_pi_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_cos_pi_e(x, result)
    return result
end

export sf_synchrotron_1_e
@doc md"""
    sf_synchrotron_1_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_synchrotron_1_e(const double x, gsl_sf_result * result)`
"""
function sf_synchrotron_1_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_synchrotron_1_e(x, result)
    return result
end

export sf_synchrotron_2_e
@doc md"""
    sf_synchrotron_2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_synchrotron_2_e(const double x, gsl_sf_result * result)`
"""
function sf_synchrotron_2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_synchrotron_2_e(x, result)
    return result
end

export sf_transport_2_e
@doc md"""
    sf_transport_2_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_transport_2_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_2_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_transport_2_e(x, result)
    return result
end

export sf_transport_3_e
@doc md"""
    sf_transport_3_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_transport_3_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_3_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_transport_3_e(x, result)
    return result
end

export sf_transport_4_e
@doc md"""
    sf_transport_4_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_transport_4_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_4_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_transport_4_e(x, result)
    return result
end

export sf_transport_5_e
@doc md"""
    sf_transport_5_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_transport_5_e(const double x, gsl_sf_result * result)`
"""
function sf_transport_5_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_transport_5_e(x, result)
    return result
end

export sf_sin_e
@doc md"""
    sf_sin_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_sin_e(double x, gsl_sf_result * result)`
"""
function sf_sin_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_sin_e(x, result)
    return result
end

export sf_cos_e
@doc md"""
    sf_cos_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_cos_e(double x, gsl_sf_result * result)`
"""
function sf_cos_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_cos_e(x, result)
    return result
end

export sf_hypot_e
@doc md"""
    sf_hypot_e(x, y) -> gsl_sf_result

C signature:
`int gsl_sf_hypot_e(const double x, const double y, gsl_sf_result * result)`
"""
function sf_hypot_e(x, y)
    result = gsl_sf_result(0,0)
    output = C.sf_hypot_e(x, y, result)
    return result
end

export sf_complex_sin_e
@doc md"""
    sf_complex_sin_e(zr, zi) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_sin_e(const double zr, const double zi, gsl_sf_result * szr, gsl_sf_result * szi)`

GSL documentation:

### `int gsl_sf_complex_sin_e (double zr, double zi, gsl_sf_result * szr, gsl_sf_result * szi)`

> This function computes the complex sine, $\sin(z_r + i z_i)$ storing
> the real and imaginary parts in `szr`, `szi`.

"""
function sf_complex_sin_e(zr, zi)
    szr = gsl_sf_result(0,0)
    szi = gsl_sf_result(0,0)
    output = C.sf_complex_sin_e(zr, zi, szr, szi)
    return szr, szi
end

export sf_complex_cos_e
@doc md"""
    sf_complex_cos_e(zr, zi) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_cos_e(const double zr, const double zi, gsl_sf_result * czr, gsl_sf_result * czi)`

GSL documentation:

### `int gsl_sf_complex_cos_e (double zr, double zi, gsl_sf_result * czr, gsl_sf_result * czi)`

> This function computes the complex cosine, $\cos(z_r + i z_i)$ storing
> the real and imaginary parts in `czr`, `czi`.

"""
function sf_complex_cos_e(zr, zi)
    czr = gsl_sf_result(0,0)
    czi = gsl_sf_result(0,0)
    output = C.sf_complex_cos_e(zr, zi, czr, czi)
    return czr, czi
end

export sf_complex_logsin_e
@doc md"""
    sf_complex_logsin_e(zr, zi) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_complex_logsin_e(const double zr, const double zi, gsl_sf_result * lszr, gsl_sf_result * lszi)`

GSL documentation:

### `int gsl_sf_complex_logsin_e (double zr, double zi, gsl_sf_result * lszr, gsl_sf_result * lszi)`

> This function computes the logarithm of the complex sine,
> $\log(\sin(z_r + i z_i))$ storing the real and imaginary parts in
> `lszr`, `lszi`.

"""
function sf_complex_logsin_e(zr, zi)
    lszr = gsl_sf_result(0,0)
    lszi = gsl_sf_result(0,0)
    output = C.sf_complex_logsin_e(zr, zi, lszr, lszi)
    return lszr, lszi
end

export sf_sinc_e
@doc md"""
    sf_sinc_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_sinc_e(double x, gsl_sf_result * result)`
"""
function sf_sinc_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_sinc_e(x, result)
    return result
end

export sf_lnsinh_e
@doc md"""
    sf_lnsinh_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_lnsinh_e(const double x, gsl_sf_result * result)`
"""
function sf_lnsinh_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_lnsinh_e(x, result)
    return result
end

export sf_lncosh_e
@doc md"""
    sf_lncosh_e(x) -> gsl_sf_result

C signature:
`int gsl_sf_lncosh_e(const double x, gsl_sf_result * result)`
"""
function sf_lncosh_e(x)
    result = gsl_sf_result(0,0)
    output = C.sf_lncosh_e(x, result)
    return result
end

export sf_polar_to_rect
@doc md"""
    sf_polar_to_rect(r, theta) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_polar_to_rect(const double r, const double theta, gsl_sf_result * x, gsl_sf_result * y)`

GSL documentation:

### `int gsl_sf_polar_to_rect (double r, double theta, gsl_sf_result * x, gsl_sf_result * y)`

> This function converts the polar coordinates (`r`, `theta`) to
> rectilinear coordinates (`x`, `y`), $x = r\cos(\theta)$,
> $y = r\sin(\theta)$.

"""
function sf_polar_to_rect(r, theta)
    x = gsl_sf_result(0,0)
    y = gsl_sf_result(0,0)
    output = C.sf_polar_to_rect(r, theta, x, y)
    return x, y
end

export sf_rect_to_polar
@doc md"""
    sf_rect_to_polar(x, y) -> (gsl_sf_result, gsl_sf_result)

C signature:
`int gsl_sf_rect_to_polar(const double x, const double y, gsl_sf_result * r, gsl_sf_result * theta)`

GSL documentation:

### `int gsl_sf_rect_to_polar (double x, double y, gsl_sf_result * r, gsl_sf_result * theta)`

> This function converts the rectilinear coordinates (`x`, `y`) to polar
> coordinates (`r`, `theta`), such that $x = r\cos(\theta)$,
> $y = r\sin(\theta)$. The argument `theta` lies in the range
> $[-\pi, \pi]$.

"""
function sf_rect_to_polar(x, y)
    r = gsl_sf_result(0,0)
    theta = gsl_sf_result(0,0)
    output = C.sf_rect_to_polar(x, y, r, theta)
    return r, theta
end

export sf_sin_err_e
@doc md"""
    sf_sin_err_e(x, dx) -> gsl_sf_result

C signature:
`int gsl_sf_sin_err_e(const double x, const double dx, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_sin_err_e (double x, double dx, gsl_sf_result * result)`

> This routine computes the sine of an angle `x` with an associated
> absolute error `dx`, $\sin(x \pm dx)$. Note that this function is
> provided in the error-handling form only since its purpose is to
> compute the propagated error.

"""
function sf_sin_err_e(x, dx)
    result = gsl_sf_result(0,0)
    output = C.sf_sin_err_e(x, dx, result)
    return result
end

export sf_cos_err_e
@doc md"""
    sf_cos_err_e(x, dx) -> gsl_sf_result

C signature:
`int gsl_sf_cos_err_e(const double x, const double dx, gsl_sf_result * result)`

GSL documentation:

### `int gsl_sf_cos_err_e (double x, double dx, gsl_sf_result * result)`

> This routine computes the cosine of an angle `x` with an associated
> absolute error `dx`, $\cos(x \pm dx)$. Note that this function is
> provided in the error-handling form only since

"""
function sf_cos_err_e(x, dx)
    result = gsl_sf_result(0,0)
    output = C.sf_cos_err_e(x, dx, result)
    return result
end

export sf_angle_restrict_symm_err_e
@doc md"""
    sf_angle_restrict_symm_err_e(theta) -> gsl_sf_result

C signature:
`int gsl_sf_angle_restrict_symm_err_e(const double theta, gsl_sf_result * result)`
"""
function sf_angle_restrict_symm_err_e(theta)
    result = gsl_sf_result(0,0)
    output = C.sf_angle_restrict_symm_err_e(theta, result)
    return result
end

export sf_angle_restrict_pos_err_e
@doc md"""
    sf_angle_restrict_pos_err_e(theta) -> gsl_sf_result

C signature:
`int gsl_sf_angle_restrict_pos_err_e(const double theta, gsl_sf_result * result)`
"""
function sf_angle_restrict_pos_err_e(theta)
    result = gsl_sf_result(0,0)
    output = C.sf_angle_restrict_pos_err_e(theta, result)
    return result
end

export sf_zeta_int_e
@doc md"""
    sf_zeta_int_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_zeta_int_e(const int n, gsl_sf_result * result)`
"""
function sf_zeta_int_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_zeta_int_e(n, result)
    return result
end

export sf_zeta_e
@doc md"""
    sf_zeta_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_zeta_e(const double s, gsl_sf_result * result)`
"""
function sf_zeta_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_zeta_e(s, result)
    return result
end

export sf_zetam1_e
@doc md"""
    sf_zetam1_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_zetam1_e(const double s, gsl_sf_result * result)`
"""
function sf_zetam1_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_zetam1_e(s, result)
    return result
end

export sf_zetam1_int_e
@doc md"""
    sf_zetam1_int_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_zetam1_int_e(const int s, gsl_sf_result * result)`
"""
function sf_zetam1_int_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_zetam1_int_e(s, result)
    return result
end

export sf_hzeta_e
@doc md"""
    sf_hzeta_e(s, q) -> gsl_sf_result

C signature:
`int gsl_sf_hzeta_e(const double s, const double q, gsl_sf_result * result)`
"""
function sf_hzeta_e(s, q)
    result = gsl_sf_result(0,0)
    output = C.sf_hzeta_e(s, q, result)
    return result
end

export sf_eta_int_e
@doc md"""
    sf_eta_int_e(n) -> gsl_sf_result

C signature:
`int gsl_sf_eta_int_e(int n, gsl_sf_result * result)`
"""
function sf_eta_int_e(n)
    result = gsl_sf_result(0,0)
    output = C.sf_eta_int_e(n, result)
    return result
end

export sf_eta_e
@doc md"""
    sf_eta_e(s) -> gsl_sf_result

C signature:
`int gsl_sf_eta_e(const double s, gsl_sf_result * result)`
"""
function sf_eta_e(s)
    result = gsl_sf_result(0,0)
    output = C.sf_eta_e(s, result)
    return result
end

export spline_name
@doc md"""
    spline_name(spline) -> String

C signature:
`const char * gsl_spline_name(const gsl_spline * spline)`

GSL documentation:

### `const char * gsl_spline_name (const gsl_spline * spline)`



"""
function spline_name(spline)
    output = C.spline_name(spline)
    output = unsafe_string(output)
    return output
end

export spline2d_name
@doc md"""
    spline2d_name(interp) -> String

C signature:
`const char * gsl_spline2d_name(const gsl_spline2d * interp)`

GSL documentation:

### `const char * gsl_spline2d_name (const gsl_spline2d * spline)`



"""
function spline2d_name(interp)
    output = C.spline2d_name(interp)
    output = unsafe_string(output)
    return output
end

export wavelet_name
@doc md"""
    wavelet_name(w) -> String

C signature:
`const char *gsl_wavelet_name (const gsl_wavelet * w)`

GSL documentation:

### `const char * gsl_wavelet_name (const gsl_wavelet * w)`

> This function returns a pointer to the name of the wavelet family for
> `w`.

"""
function wavelet_name(w)
    output = C.wavelet_name(w)
    output = unsafe_string(output)
    return output
end

