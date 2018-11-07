#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_odeiv.h ##############################################################


@doc md"""
    odeiv_step_alloc(T, dim) -> Ptr{gsl_odeiv_step}

C signature:
`gsl_odeiv_step * gsl_odeiv_step_alloc(const gsl_odeiv_step_type * T, size_t dim)`
"""
function odeiv_step_alloc(T, dim)
    ccall((:gsl_odeiv_step_alloc, libgsl), Ptr{gsl_odeiv_step}, (Ref{gsl_odeiv_step_type}, Csize_t), T, dim)
end

@doc md"""
    odeiv_step_reset(s) -> Cint

C signature:
`int gsl_odeiv_step_reset(gsl_odeiv_step * s)`
"""
function odeiv_step_reset(s)
    ccall((:gsl_odeiv_step_reset, libgsl), Cint, (Ptr{gsl_odeiv_step},), s)
end

@doc md"""
    odeiv_step_free(s) -> Cvoid

C signature:
`void gsl_odeiv_step_free(gsl_odeiv_step * s)`
"""
function odeiv_step_free(s)
    ccall((:gsl_odeiv_step_free, libgsl), Cvoid, (Ptr{gsl_odeiv_step},), s)
end

@doc md"""
    odeiv_step_name(s) -> Ptr{Cchar}

C signature:
`const char * gsl_odeiv_step_name(const gsl_odeiv_step * s)`
"""
function odeiv_step_name(s)
    ccall((:gsl_odeiv_step_name, libgsl), Ptr{Cchar}, (Ptr{gsl_odeiv_step},), s)
end

@doc md"""
    odeiv_step_order(s) -> Cuint

C signature:
`unsigned int gsl_odeiv_step_order(const gsl_odeiv_step * s)`
"""
function odeiv_step_order(s)
    ccall((:gsl_odeiv_step_order, libgsl), Cuint, (Ptr{gsl_odeiv_step},), s)
end

@doc md"""
    odeiv_step_apply(s, t, h, y, yerr, dydt_in, dydt_out, dydt) -> Cint

C signature:
`int gsl_odeiv_step_apply(gsl_odeiv_step * s, double t, double h, double y[], double yerr[], const double dydt_in[], double dydt_out[], const gsl_odeiv_system * dydt)`
"""
function odeiv_step_apply(s, t, h, y, yerr, dydt_in, dydt_out, dydt)
    ccall((:gsl_odeiv_step_apply, libgsl), Cint, (Ref{gsl_odeiv_step}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_odeiv_system}), s, t, h, y, yerr, dydt_in, dydt_out, dydt)
end

@doc md"""
    odeiv_control_alloc(T) -> Ptr{gsl_odeiv_control}

C signature:
`gsl_odeiv_control * gsl_odeiv_control_alloc(const gsl_odeiv_control_type * T)`
"""
function odeiv_control_alloc(T)
    ccall((:gsl_odeiv_control_alloc, libgsl), Ptr{gsl_odeiv_control}, (Ptr{gsl_odeiv_control_type},), T)
end

@doc md"""
    odeiv_control_init(c, eps_abs, eps_rel, a_y, a_dydt) -> Cint

C signature:
`int gsl_odeiv_control_init(gsl_odeiv_control * c, double eps_abs, double eps_rel, double a_y, double a_dydt)`
"""
function odeiv_control_init(c, eps_abs, eps_rel, a_y, a_dydt)
    ccall((:gsl_odeiv_control_init, libgsl), Cint, (Ref{gsl_odeiv_control}, Cdouble, Cdouble, Cdouble, Cdouble), c, eps_abs, eps_rel, a_y, a_dydt)
end

@doc md"""
    odeiv_control_free(c) -> Cvoid

C signature:
`void gsl_odeiv_control_free(gsl_odeiv_control * c)`
"""
function odeiv_control_free(c)
    ccall((:gsl_odeiv_control_free, libgsl), Cvoid, (Ptr{gsl_odeiv_control},), c)
end

@doc md"""
    odeiv_control_hadjust(c, s, y, yerr, dydt, h) -> Cint

C signature:
`int gsl_odeiv_control_hadjust (gsl_odeiv_control * c, gsl_odeiv_step * s, const double y[], const double yerr[], const double dydt[], double * h)`
"""
function odeiv_control_hadjust(c, s, y, yerr, dydt, h)
    ccall((:gsl_odeiv_control_hadjust, libgsl), Cint, (Ref{gsl_odeiv_control}, Ref{gsl_odeiv_step}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), c, s, y, yerr, dydt, h)
end

@doc md"""
    odeiv_control_name(c) -> Ptr{Cchar}

C signature:
`const char * gsl_odeiv_control_name(const gsl_odeiv_control * c)`
"""
function odeiv_control_name(c)
    ccall((:gsl_odeiv_control_name, libgsl), Ptr{Cchar}, (Ptr{gsl_odeiv_control},), c)
end

@doc md"""
    odeiv_control_standard_new(eps_abs, eps_rel, a_y, a_dydt) -> Ptr{gsl_odeiv_control}

C signature:
`gsl_odeiv_control * gsl_odeiv_control_standard_new(double eps_abs, double eps_rel, double a_y, double a_dydt)`
"""
function odeiv_control_standard_new(eps_abs, eps_rel, a_y, a_dydt)
    ccall((:gsl_odeiv_control_standard_new, libgsl), Ptr{gsl_odeiv_control}, (Cdouble, Cdouble, Cdouble, Cdouble), eps_abs, eps_rel, a_y, a_dydt)
end

@doc md"""
    odeiv_control_y_new(eps_abs, eps_rel) -> Ptr{gsl_odeiv_control}

C signature:
`gsl_odeiv_control * gsl_odeiv_control_y_new(double eps_abs, double eps_rel)`
"""
function odeiv_control_y_new(eps_abs, eps_rel)
    ccall((:gsl_odeiv_control_y_new, libgsl), Ptr{gsl_odeiv_control}, (Cdouble, Cdouble), eps_abs, eps_rel)
end

@doc md"""
    odeiv_control_yp_new(eps_abs, eps_rel) -> Ptr{gsl_odeiv_control}

C signature:
`gsl_odeiv_control * gsl_odeiv_control_yp_new(double eps_abs, double eps_rel)`
"""
function odeiv_control_yp_new(eps_abs, eps_rel)
    ccall((:gsl_odeiv_control_yp_new, libgsl), Ptr{gsl_odeiv_control}, (Cdouble, Cdouble), eps_abs, eps_rel)
end

@doc md"""
    odeiv_control_scaled_new(eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim) -> Ptr{gsl_odeiv_control}

C signature:
`gsl_odeiv_control * gsl_odeiv_control_scaled_new(double eps_abs, double eps_rel, double a_y, double a_dydt, const double scale_abs[], size_t dim)`
"""
function odeiv_control_scaled_new(eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim)
    ccall((:gsl_odeiv_control_scaled_new, libgsl), Ptr{gsl_odeiv_control}, (Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Csize_t), eps_abs, eps_rel, a_y, a_dydt, scale_abs, dim)
end

@doc md"""
    odeiv_evolve_alloc(dim) -> Ptr{gsl_odeiv_evolve}

C signature:
`gsl_odeiv_evolve * gsl_odeiv_evolve_alloc(size_t dim)`
"""
function odeiv_evolve_alloc(dim)
    ccall((:gsl_odeiv_evolve_alloc, libgsl), Ptr{gsl_odeiv_evolve}, (Csize_t,), dim)
end

@doc md"""
    odeiv_evolve_apply(e, con, step, dydt, t, t1, h, y) -> Cint

C signature:
`int gsl_odeiv_evolve_apply(gsl_odeiv_evolve * e, gsl_odeiv_control * con, gsl_odeiv_step * step, const gsl_odeiv_system * dydt, double * t, double t1, double * h, double y[])`
"""
function odeiv_evolve_apply(e, con, step, dydt, t, t1, h, y)
    ccall((:gsl_odeiv_evolve_apply, libgsl), Cint, (Ref{gsl_odeiv_evolve}, Ref{gsl_odeiv_control}, Ref{gsl_odeiv_step}, Ref{gsl_odeiv_system}, Ref{Cdouble}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), e, con, step, dydt, t, t1, h, y)
end

@doc md"""
    odeiv_evolve_reset(e) -> Cint

C signature:
`int gsl_odeiv_evolve_reset(gsl_odeiv_evolve * e)`
"""
function odeiv_evolve_reset(e)
    ccall((:gsl_odeiv_evolve_reset, libgsl), Cint, (Ptr{gsl_odeiv_evolve},), e)
end

@doc md"""
    odeiv_evolve_free(e) -> Cvoid

C signature:
`void gsl_odeiv_evolve_free(gsl_odeiv_evolve * e)`
"""
function odeiv_evolve_free(e)
    ccall((:gsl_odeiv_evolve_free, libgsl), Cvoid, (Ptr{gsl_odeiv_evolve},), e)
end

