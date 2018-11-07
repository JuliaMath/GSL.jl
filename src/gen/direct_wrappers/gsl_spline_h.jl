#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_spline.h #############################################################


@doc md"""
    spline_alloc(T, size) -> Ptr{gsl_spline}

C signature:
`gsl_spline * gsl_spline_alloc(const gsl_interp_type * T, size_t size)`

GSL documentation:

### `gsl_spline * gsl_spline_alloc (const gsl_interp_type * T, size_t size)`



"""
function spline_alloc(T, size)
    ccall((:gsl_spline_alloc, libgsl), Ptr{gsl_spline}, (Ref{gsl_interp_type}, Csize_t), T, size)
end

@doc md"""
    spline_init(spline, xa, ya, size) -> Cint

C signature:
`int gsl_spline_init(gsl_spline * spline, const double xa[], const double ya[], size_t size)`

GSL documentation:

### `int gsl_spline_init (gsl_spline * spline, const double xa[], const double ya[], size_t size)`



"""
function spline_init(spline, xa, ya, size)
    ccall((:gsl_spline_init, libgsl), Cint, (Ref{gsl_spline}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), spline, xa, ya, size)
end

@doc md"""
    spline_name(spline) -> Ptr{Cchar}

C signature:
`const char * gsl_spline_name(const gsl_spline * spline)`

GSL documentation:

### `const char * gsl_spline_name (const gsl_spline * spline)`



"""
function spline_name(spline)
    ccall((:gsl_spline_name, libgsl), Ptr{Cchar}, (Ptr{gsl_spline},), spline)
end

@doc md"""
    spline_min_size(spline) -> Cuint

C signature:
`unsigned int gsl_spline_min_size(const gsl_spline * spline)`

GSL documentation:

### `unsigned int gsl_spline_min_size (const gsl_spline * spline)`



"""
function spline_min_size(spline)
    ccall((:gsl_spline_min_size, libgsl), Cuint, (Ptr{gsl_spline},), spline)
end

@doc md"""
    spline_eval_e(spline, x, a, y) -> Cint

C signature:
`int gsl_spline_eval_e(const gsl_spline * spline, double x, gsl_interp_accel * a, double * y)`
"""
function spline_eval_e(spline, x, a, y)
    ccall((:gsl_spline_eval_e, libgsl), Cint, (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), spline, x, a, y)
end

@doc md"""
    spline_eval(spline, x, a) -> Cdouble

C signature:
`double gsl_spline_eval(const gsl_spline * spline, double x, gsl_interp_accel * a)`

GSL documentation:

### `double gsl_spline_eval (const gsl_spline * spline, double x, gsl_interp_accel * acc)`

> int gsl\_spline\_eval\_e (const gsl\_spline \* spline, double x,
> gsl\_interp\_accel \* acc, double \* y)

"""
function spline_eval(spline, x, a)
    ccall((:gsl_spline_eval, libgsl), Cdouble, (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}), spline, x, a)
end

@doc md"""
    spline_eval_deriv_e(spline, x, a, y) -> Cint

C signature:
`int gsl_spline_eval_deriv_e(const gsl_spline * spline, double x, gsl_interp_accel * a, double * y)`
"""
function spline_eval_deriv_e(spline, x, a, y)
    ccall((:gsl_spline_eval_deriv_e, libgsl), Cint, (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), spline, x, a, y)
end

@doc md"""
    spline_eval_deriv(spline, x, a) -> Cdouble

C signature:
`double gsl_spline_eval_deriv(const gsl_spline * spline, double x, gsl_interp_accel * a)`

GSL documentation:

### `double gsl_spline_eval_deriv (const gsl_spline * spline, double x, gsl_interp_accel * acc)`

> int gsl\_spline\_eval\_deriv\_e (const gsl\_spline \* spline, double
> x, gsl\_interp\_accel \* acc, double \* d)

"""
function spline_eval_deriv(spline, x, a)
    ccall((:gsl_spline_eval_deriv, libgsl), Cdouble, (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}), spline, x, a)
end

@doc md"""
    spline_eval_deriv2_e(spline, x, a, y) -> Cint

C signature:
`int gsl_spline_eval_deriv2_e(const gsl_spline * spline, double x, gsl_interp_accel * a, double * y)`
"""
function spline_eval_deriv2_e(spline, x, a, y)
    ccall((:gsl_spline_eval_deriv2_e, libgsl), Cint, (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), spline, x, a, y)
end

@doc md"""
    spline_eval_deriv2(spline, x, a) -> Cdouble

C signature:
`double gsl_spline_eval_deriv2(const gsl_spline * spline, double x, gsl_interp_accel * a)`

GSL documentation:

### `double gsl_spline_eval_deriv2 (const gsl_spline * spline, double x, gsl_interp_accel * acc)`

> int gsl\_spline\_eval\_deriv2\_e (const gsl\_spline \* spline, double
> x, gsl\_interp\_accel \* acc, double \* d2)

"""
function spline_eval_deriv2(spline, x, a)
    ccall((:gsl_spline_eval_deriv2, libgsl), Cdouble, (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}), spline, x, a)
end

@doc md"""
    spline_eval_integ_e(spline, a, b, acc, y) -> Cint

C signature:
`int gsl_spline_eval_integ_e(const gsl_spline * spline, double a, double b, gsl_interp_accel * acc, double * y)`
"""
function spline_eval_integ_e(spline, a, b, acc, y)
    ccall((:gsl_spline_eval_integ_e, libgsl), Cint, (Ref{gsl_spline}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), spline, a, b, acc, y)
end

@doc md"""
    spline_eval_integ(spline, a, b, acc) -> Cdouble

C signature:
`double gsl_spline_eval_integ(const gsl_spline * spline, double a, double b, gsl_interp_accel * acc)`

GSL documentation:

### `double gsl_spline_eval_integ (const gsl_spline * spline, double a, double b, gsl_interp_accel * acc)`

> int gsl\_spline\_eval\_integ\_e (const gsl\_spline \* spline, double
> a, double b, gsl\_interp\_accel \* acc, double \* result)

"""
function spline_eval_integ(spline, a, b, acc)
    ccall((:gsl_spline_eval_integ, libgsl), Cdouble, (Ref{gsl_spline}, Cdouble, Cdouble, Ref{gsl_interp_accel}), spline, a, b, acc)
end

@doc md"""
    spline_free(spline) -> Cvoid

C signature:
`void gsl_spline_free(gsl_spline * spline)`

GSL documentation:

### `void gsl_spline_free (gsl_spline * spline)`



"""
function spline_free(spline)
    ccall((:gsl_spline_free, libgsl), Cvoid, (Ptr{gsl_spline},), spline)
end

