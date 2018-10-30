#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_odeiv2.h #############################################################


"""
    gsl_odeiv2_step_alloc(T, dim) -> Ptr{gsl_odeiv2_step}

C signature:
`gsl_odeiv2_step *gsl_odeiv2_step_alloc (const gsl_odeiv2_step_type * T, size_t dim)`
"""
function gsl_odeiv2_step_alloc(T, dim)
    ccall((:gsl_odeiv2_step_alloc, libgsl), Ptr{gsl_odeiv2_step}, (Ref{gsl_odeiv2_step_type}, Csize_t), T, dim)
end

"""
    gsl_odeiv2_step_reset(s) -> Cint

C signature:
`int gsl_odeiv2_step_reset (gsl_odeiv2_step * s)`
"""
function gsl_odeiv2_step_reset(s)
    ccall((:gsl_odeiv2_step_reset, libgsl), Cint, (Ptr{gsl_odeiv2_step},), s)
end

"""
    gsl_odeiv2_step_free(s) -> Cvoid

C signature:
`void gsl_odeiv2_step_free (gsl_odeiv2_step * s)`
"""
function gsl_odeiv2_step_free(s)
    ccall((:gsl_odeiv2_step_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_step},), s)
end

"""
    gsl_odeiv2_step_name(s) -> Ptr{Cchar}

C signature:
`const char *gsl_odeiv2_step_name (const gsl_odeiv2_step * s)`
"""
function gsl_odeiv2_step_name(s)
    ccall((:gsl_odeiv2_step_name, libgsl), Ptr{Cchar}, (Ptr{gsl_odeiv2_step},), s)
end

"""
    gsl_odeiv2_step_order(s) -> Cuint

C signature:
`unsigned int gsl_odeiv2_step_order (const gsl_odeiv2_step * s)`
"""
function gsl_odeiv2_step_order(s)
    ccall((:gsl_odeiv2_step_order, libgsl), Cuint, (Ptr{gsl_odeiv2_step},), s)
end

"""
    gsl_odeiv2_step_apply(s, t, h, y, yerr, dydt_in, dydt_out, dydt) -> Cint

C signature:
`int gsl_odeiv2_step_apply (gsl_odeiv2_step * s, double t, double h, double y[], double yerr[], const double dydt_in[], double dydt_out[], const gsl_odeiv2_system * dydt)`
"""
function gsl_odeiv2_step_apply(s, t, h, y, yerr, dydt_in, dydt_out, dydt)
    ccall((:gsl_odeiv2_step_apply, libgsl), Cint, (Ref{gsl_odeiv2_step}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_odeiv2_system}), s, t, h, y, yerr, dydt_in, dydt_out, dydt)
end

"""
    gsl_odeiv2_step_set_driver(s, d) -> Cint

C signature:
`int gsl_odeiv2_step_set_driver (gsl_odeiv2_step * s, const gsl_odeiv2_driver * d)`
"""
function gsl_odeiv2_step_set_driver(s, d)
    ccall((:gsl_odeiv2_step_set_driver, libgsl), Cint, (Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_driver}), s, d)
end

"""
    gsl_odeiv2_control_alloc(T) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_alloc (const gsl_odeiv2_control_type * T)`
"""
function gsl_odeiv2_control_alloc(T)
    ccall((:gsl_odeiv2_control_alloc, libgsl), Ptr{gsl_odeiv2_control}, (Ptr{gsl_odeiv2_control_type},), T)
end

"""
    gsl_odeiv2_control_init(c, eps_abs, eps_rel, a_y, a_dydt) -> Cint

C signature:
`int gsl_odeiv2_control_init (gsl_odeiv2_control * c, double eps_abs, double eps_rel, double a_y, double a_dydt)`
"""
function gsl_odeiv2_control_init(c, eps_abs, eps_rel, a_y, a_dydt)
    ccall((:gsl_odeiv2_control_init, libgsl), Cint, (Ref{gsl_odeiv2_control}, Cdouble, Cdouble, Cdouble, Cdouble), c, eps_abs, eps_rel, a_y, a_dydt)
end

"""
    gsl_odeiv2_control_free(c) -> Cvoid

C signature:
`void gsl_odeiv2_control_free (gsl_odeiv2_control * c)`
"""
function gsl_odeiv2_control_free(c)
    ccall((:gsl_odeiv2_control_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_control},), c)
end

"""
    gsl_odeiv2_control_hadjust(c, s, y, yerr, dydt, h) -> Cint

C signature:
`int gsl_odeiv2_control_hadjust (gsl_odeiv2_control * c, gsl_odeiv2_step * s, const double y[], const double yerr[], const double dydt[], double *h)`
"""
function gsl_odeiv2_control_hadjust(c, s, y, yerr, dydt, h)
    ccall((:gsl_odeiv2_control_hadjust, libgsl), Cint, (Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_step}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), c, s, y, yerr, dydt, h)
end

"""
    gsl_odeiv2_control_name(c) -> Ptr{Cchar}

C signature:
`const char *gsl_odeiv2_control_name (const gsl_odeiv2_control * c)`
"""
function gsl_odeiv2_control_name(c)
    ccall((:gsl_odeiv2_control_name, libgsl), Ptr{Cchar}, (Ptr{gsl_odeiv2_control},), c)
end

"""
    gsl_odeiv2_control_errlevel(c, y, dydt, h, ind, errlev) -> Cint

C signature:
`int gsl_odeiv2_control_errlevel (gsl_odeiv2_control * c, const double y, const double dydt, const double h, const size_t ind, double *errlev)`
"""
function gsl_odeiv2_control_errlevel(c, y, dydt, h, ind, errlev)
    ccall((:gsl_odeiv2_control_errlevel, libgsl), Cint, (Ref{gsl_odeiv2_control}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{Cdouble}), c, y, dydt, h, ind, errlev)
end

"""
    gsl_odeiv2_control_set_driver(c, d) -> Cint

C signature:
`int gsl_odeiv2_control_set_driver (gsl_odeiv2_control * c, const gsl_odeiv2_driver * d)`
"""
function gsl_odeiv2_control_set_driver(c, d)
    ccall((:gsl_odeiv2_control_set_driver, libgsl), Cint, (Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_driver}), c, d)
end

"""
    gsl_odeiv2_control_standard_new(eps_abs, eps_rel, a_y, a_dydt) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_standard_new (double eps_abs, double eps_rel, double a_y, double a_dydt)`
"""
function gsl_odeiv2_control_standard_new(eps_abs, eps_rel, a_y, a_dydt)
    ccall((:gsl_odeiv2_control_standard_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble, Cdouble, Cdouble), eps_abs, eps_rel, a_y, a_dydt)
end

"""
    gsl_odeiv2_control_y_new(eps_abs, eps_rel) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_y_new (double eps_abs, double eps_rel)`
"""
function gsl_odeiv2_control_y_new(eps_abs, eps_rel)
    ccall((:gsl_odeiv2_control_y_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble), eps_abs, eps_rel)
end

"""
    gsl_odeiv2_control_yp_new(eps_abs, eps_rel) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_yp_new (double eps_abs, double eps_rel)`
"""
function gsl_odeiv2_control_yp_new(eps_abs, eps_rel)
    ccall((:gsl_odeiv2_control_yp_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble), eps_abs, eps_rel)
end

"""
    gsl_odeiv2_control_scaled_new(eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim) -> Ptr{gsl_odeiv2_control}

C signature:
`gsl_odeiv2_control *gsl_odeiv2_control_scaled_new (double eps_abs, double eps_rel, double a_y, double a_dydt, const double scale_abs[], size_t dim)`
"""
function gsl_odeiv2_control_scaled_new(eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim)
    ccall((:gsl_odeiv2_control_scaled_new, libgsl), Ptr{gsl_odeiv2_control}, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Csize_t), eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim)
end

"""
    gsl_odeiv2_evolve_alloc(dim) -> Ptr{gsl_odeiv2_evolve}

C signature:
`gsl_odeiv2_evolve *gsl_odeiv2_evolve_alloc (size_t dim)`
"""
function gsl_odeiv2_evolve_alloc(dim)
    ccall((:gsl_odeiv2_evolve_alloc, libgsl), Ptr{gsl_odeiv2_evolve}, (Csize_t,), dim)
end

"""
    gsl_odeiv2_evolve_apply(e, con, step, dydt, t, t1, h, y) -> Cint

C signature:
`int gsl_odeiv2_evolve_apply (gsl_odeiv2_evolve * e, gsl_odeiv2_control * con, gsl_odeiv2_step * step, const gsl_odeiv2_system * dydt, double *t, double t1, double *h, double y[])`
"""
function gsl_odeiv2_evolve_apply(e, con, step, dydt, t, t1, h, y)
    ccall((:gsl_odeiv2_evolve_apply, libgsl), Cint, (Ref{gsl_odeiv2_evolve}, Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_system}, Ref{Cdouble}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), e, con, step, dydt, t, t1, h, y)
end

"""
    gsl_odeiv2_evolve_apply_fixed_step(e, con, step, dydt, t, h0, y) -> Cint

C signature:
`int gsl_odeiv2_evolve_apply_fixed_step (gsl_odeiv2_evolve * e, gsl_odeiv2_control * con, gsl_odeiv2_step * step, const gsl_odeiv2_system * dydt, double *t, const double h0, double y[])`
"""
function gsl_odeiv2_evolve_apply_fixed_step(e, con, step, dydt, t, h0, y)
    ccall((:gsl_odeiv2_evolve_apply_fixed_step, libgsl), Cint, (Ref{gsl_odeiv2_evolve}, Ref{gsl_odeiv2_control}, Ref{gsl_odeiv2_step}, Ref{gsl_odeiv2_system}, Ref{Cdouble}, Cdouble, Ref{Cdouble}), e, con, step, dydt, t, h0, y)
end

"""
    gsl_odeiv2_evolve_reset(e) -> Cint

C signature:
`int gsl_odeiv2_evolve_reset (gsl_odeiv2_evolve * e)`
"""
function gsl_odeiv2_evolve_reset(e)
    ccall((:gsl_odeiv2_evolve_reset, libgsl), Cint, (Ptr{gsl_odeiv2_evolve},), e)
end

"""
    gsl_odeiv2_evolve_free(e) -> Cvoid

C signature:
`void gsl_odeiv2_evolve_free (gsl_odeiv2_evolve * e)`
"""
function gsl_odeiv2_evolve_free(e)
    ccall((:gsl_odeiv2_evolve_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_evolve},), e)
end

"""
    gsl_odeiv2_evolve_set_driver(e, d) -> Cint

C signature:
`int gsl_odeiv2_evolve_set_driver (gsl_odeiv2_evolve * e, const gsl_odeiv2_driver * d)`
"""
function gsl_odeiv2_evolve_set_driver(e, d)
    ccall((:gsl_odeiv2_evolve_set_driver, libgsl), Cint, (Ref{gsl_odeiv2_evolve}, Ref{gsl_odeiv2_driver}), e, d)
end

"""
    gsl_odeiv2_driver_alloc_y_new(sys, T, hstart, epsabs, epsrel) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_y_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel)`
"""
function gsl_odeiv2_driver_alloc_y_new(sys, T, hstart, epsabs, epsrel)
    ccall((:gsl_odeiv2_driver_alloc_y_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble), sys, T, hstart, epsabs, epsrel)
end

"""
    gsl_odeiv2_driver_alloc_yp_new(sys, T, hstart, epsabs, epsrel) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_yp_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel)`
"""
function gsl_odeiv2_driver_alloc_yp_new(sys, T, hstart, epsabs, epsrel)
    ccall((:gsl_odeiv2_driver_alloc_yp_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble), sys, T, hstart, epsabs, epsrel)
end

"""
    gsl_odeiv2_driver_alloc_scaled_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_scaled_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel, const double a_y, const double a_dydt, const double scale_abs[])`
"""
function gsl_odeiv2_driver_alloc_scaled_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs)
    ccall((:gsl_odeiv2_driver_alloc_scaled_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}), sys, T, hstart, epsabs, epsrel, a_y, a_dydt, scale_abs)
end

"""
    gsl_odeiv2_driver_alloc_standard_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt) -> Ptr{gsl_odeiv2_driver}

C signature:
`gsl_odeiv2_driver *gsl_odeiv2_driver_alloc_standard_new (const gsl_odeiv2_system * sys, const gsl_odeiv2_step_type * T, const double hstart, const double epsabs, const double epsrel, const double a_y, const double a_dydt)`
"""
function gsl_odeiv2_driver_alloc_standard_new(sys, T, hstart, epsabs, epsrel, a_y, a_dydt)
    ccall((:gsl_odeiv2_driver_alloc_standard_new, libgsl), Ptr{gsl_odeiv2_driver}, (Ref{gsl_odeiv2_system}, Ref{gsl_odeiv2_step_type}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), sys, T, hstart, epsabs, epsrel, a_y, a_dydt)
end

"""
    gsl_odeiv2_driver_set_hmin(d, hmin) -> Cint

C signature:
`int gsl_odeiv2_driver_set_hmin (gsl_odeiv2_driver * d, const double hmin)`
"""
function gsl_odeiv2_driver_set_hmin(d, hmin)
    ccall((:gsl_odeiv2_driver_set_hmin, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Cdouble), d, hmin)
end

"""
    gsl_odeiv2_driver_set_hmax(d, hmax) -> Cint

C signature:
`int gsl_odeiv2_driver_set_hmax (gsl_odeiv2_driver * d, const double hmax)`
"""
function gsl_odeiv2_driver_set_hmax(d, hmax)
    ccall((:gsl_odeiv2_driver_set_hmax, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Cdouble), d, hmax)
end

"""
    gsl_odeiv2_driver_set_nmax(d, nmax) -> Cint

C signature:
`int gsl_odeiv2_driver_set_nmax (gsl_odeiv2_driver * d, const unsigned long int nmax)`
"""
function gsl_odeiv2_driver_set_nmax(d, nmax)
    ccall((:gsl_odeiv2_driver_set_nmax, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Culong), d, nmax)
end

"""
    gsl_odeiv2_driver_apply(d, t, t1, y) -> Cint

C signature:
`int gsl_odeiv2_driver_apply (gsl_odeiv2_driver * d, double *t, const double t1, double y[])`
"""
function gsl_odeiv2_driver_apply(d, t, t1, y)
    ccall((:gsl_odeiv2_driver_apply, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Ref{Cdouble}, Cdouble, Ref{Cdouble}), d, t, t1, y)
end

"""
    gsl_odeiv2_driver_apply_fixed_step(d, t, h, n, y) -> Cint

C signature:
`int gsl_odeiv2_driver_apply_fixed_step (gsl_odeiv2_driver * d, double *t, const double h, const unsigned long int n, double y[])`
"""
function gsl_odeiv2_driver_apply_fixed_step(d, t, h, n, y)
    ccall((:gsl_odeiv2_driver_apply_fixed_step, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Ref{Cdouble}, Cdouble, Culong, Ref{Cdouble}), d, t, h, n, y)
end

"""
    gsl_odeiv2_driver_reset(d) -> Cint

C signature:
`int gsl_odeiv2_driver_reset (gsl_odeiv2_driver * d)`
"""
function gsl_odeiv2_driver_reset(d)
    ccall((:gsl_odeiv2_driver_reset, libgsl), Cint, (Ptr{gsl_odeiv2_driver},), d)
end

"""
    gsl_odeiv2_driver_reset_hstart(d, hstart) -> Cint

C signature:
`int gsl_odeiv2_driver_reset_hstart (gsl_odeiv2_driver * d, const double hstart)`
"""
function gsl_odeiv2_driver_reset_hstart(d, hstart)
    ccall((:gsl_odeiv2_driver_reset_hstart, libgsl), Cint, (Ref{gsl_odeiv2_driver}, Cdouble), d, hstart)
end

"""
    gsl_odeiv2_driver_free(state) -> Cvoid

C signature:
`void gsl_odeiv2_driver_free (gsl_odeiv2_driver * state)`
"""
function gsl_odeiv2_driver_free(state)
    ccall((:gsl_odeiv2_driver_free, libgsl), Cvoid, (Ptr{gsl_odeiv2_driver},), state)
end

