#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_interp.h #############################################################


@doc md"""
    interp_accel_alloc() -> Ptr{gsl_interp_accel}

C signature:
`gsl_interp_accel * gsl_interp_accel_alloc(void)`

GSL documentation:

### `gsl_interp_accel * gsl_interp_accel_alloc (void)`

> This function returns a pointer to an accelerator object, which is a
> kind of iterator for interpolation lookups. It tracks the state of
> lookups, thus allowing for application of various acceleration
> strategies.

"""
function interp_accel_alloc()
    ccall((:gsl_interp_accel_alloc, libgsl), Ptr{gsl_interp_accel}, (), )
end

@doc md"""
    interp_accel_reset(a) -> Cint

C signature:
`int gsl_interp_accel_reset (gsl_interp_accel * a)`

GSL documentation:

### `int gsl_interp_accel_reset (gsl_interp_accel * acc);`

> This function reinitializes the accelerator object `acc`. It should be
> used when the cached information is no longer applicable---for
> example, when switching to a new dataset.

"""
function interp_accel_reset(a)
    ccall((:gsl_interp_accel_reset, libgsl), Cint, (Ptr{gsl_interp_accel},), a)
end

@doc md"""
    interp_accel_free(a) -> Cvoid

C signature:
`void gsl_interp_accel_free(gsl_interp_accel * a)`

GSL documentation:

### `void gsl_interp_accel_free (gsl_interp_accel* acc)`

> This function frees the accelerator object `acc`.

"""
function interp_accel_free(a)
    ccall((:gsl_interp_accel_free, libgsl), Cvoid, (Ptr{gsl_interp_accel},), a)
end

@doc md"""
    interp_alloc(T, n) -> Ptr{gsl_interp}

C signature:
`gsl_interp * gsl_interp_alloc(const gsl_interp_type * T, size_t n)`

GSL documentation:

### `gsl_interp * gsl_interp_alloc (const gsl_interp_type * T, size_t size)`

> This function returns a pointer to a newly allocated interpolation
> object of type `T` for `size` data-points.

"""
function interp_alloc(T, n)
    ccall((:gsl_interp_alloc, libgsl), Ptr{gsl_interp}, (Ref{gsl_interp_type}, Csize_t), T, n)
end

@doc md"""
    interp_init(obj, xa, ya, size) -> Cint

C signature:
`int gsl_interp_init(gsl_interp * obj, const double xa[], const double ya[], size_t size)`

GSL documentation:

### `int gsl_interp_init (gsl_interp * interp, const double xa[], const double ya[], size_t size)`

> This function initializes the interpolation object `interp` for the
> data (`xa`, `ya`) where `xa` and `ya` are arrays of size `size`. The
> interpolation object (`gsl_interp`) does not save the data arrays `xa`
> and `ya` and only stores the static state computed from the data. The
> `xa` data array is always assumed to be strictly ordered, with
> increasing $x$ values; the behavior for other arrangements is not
> defined.

"""
function interp_init(obj, xa, ya, size)
    ccall((:gsl_interp_init, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), obj, xa, ya, size)
end

@doc md"""
    interp_name(interp) -> Ptr{Cchar}

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
    ccall((:gsl_interp_name, libgsl), Ptr{Cchar}, (Ptr{gsl_interp},), interp)
end

@doc md"""
    interp_min_size(interp) -> Cuint

C signature:
`unsigned int gsl_interp_min_size(const gsl_interp * interp)`

GSL documentation:

### `unsigned int gsl_interp_min_size (const gsl_interp * interp)`

> unsigned int gsl\_interp\_type\_min\_size (const gsl\_interp\_type \*
> T)

> These functions return the minimum number of points required by the
> interpolation object `interp` or interpolation type `T`. For example,
> Akima spline interpolation requires a minimum of 5 points.

"""
function interp_min_size(interp)
    ccall((:gsl_interp_min_size, libgsl), Cuint, (Ptr{gsl_interp},), interp)
end

@doc md"""
    interp_type_min_size(T) -> Cuint

C signature:
`unsigned int gsl_interp_type_min_size(const gsl_interp_type * T)`
"""
function interp_type_min_size(T)
    ccall((:gsl_interp_type_min_size, libgsl), Cuint, (Ptr{gsl_interp_type},), T)
end

@doc md"""
    interp_eval_e(obj, xa, ya, x, a, y) -> Cint

C signature:
`int gsl_interp_eval_e(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a, double * y)`
"""
function interp_eval_e(obj, xa, ya, x, a, y)
    ccall((:gsl_interp_eval_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, x, a, y)
end

@doc md"""
    interp_eval(obj, xa, ya, x, a) -> Cdouble

C signature:
`double gsl_interp_eval(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a)`

GSL documentation:

### `double gsl_interp_eval (const gsl_interp * interp, const double xa[], const double ya[], double x, gsl_interp_accel * acc)`

> int gsl\_interp\_eval\_e (const gsl\_interp \* interp, const double
> xa\[\], const double ya\[\], double x, gsl\_interp\_accel \* acc,
> double \* y)

> These functions return the interpolated value of `y` for a given point
> `x`, using the interpolation object `interp`, data arrays `xa` and
> `ya` and the accelerator `acc`. When `x` is outside the range of `xa`,
> the error code `GSL_EDOM` is returned with a value of `GSL_NAN` for
> `y`.

"""
function interp_eval(obj, xa, ya, x, a)
    ccall((:gsl_interp_eval, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, x, a)
end

@doc md"""
    interp_eval_deriv_e(obj, xa, ya, x, a, d) -> Cint

C signature:
`int gsl_interp_eval_deriv_e(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a, double * d)`
"""
function interp_eval_deriv_e(obj, xa, ya, x, a, d)
    ccall((:gsl_interp_eval_deriv_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, x, a, d)
end

@doc md"""
    interp_eval_deriv(obj, xa, ya, x, a) -> Cdouble

C signature:
`double gsl_interp_eval_deriv(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a)`

GSL documentation:

### `double gsl_interp_eval_deriv (const gsl_interp * interp, const double xa[], const double ya[], double x, gsl_interp_accel * acc)`

> int gsl\_interp\_eval\_deriv\_e (const gsl\_interp \* interp, const
> double xa\[\], const double ya\[\], double x, gsl\_interp\_accel \*
> acc, double \* d)

> These functions return the derivative `d` of an interpolated function
> for a given point `x`, using the interpolation object `interp`, data
> arrays `xa` and `ya` and the accelerator `acc`.

"""
function interp_eval_deriv(obj, xa, ya, x, a)
    ccall((:gsl_interp_eval_deriv, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, x, a)
end

@doc md"""
    interp_eval_deriv2_e(obj, xa, ya, x, a, d2) -> Cint

C signature:
`int gsl_interp_eval_deriv2_e(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a, double * d2)`
"""
function interp_eval_deriv2_e(obj, xa, ya, x, a, d2)
    ccall((:gsl_interp_eval_deriv2_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, x, a, d2)
end

@doc md"""
    interp_eval_deriv2(obj, xa, ya, x, a) -> Cdouble

C signature:
`double gsl_interp_eval_deriv2(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a)`

GSL documentation:

### `double gsl_interp_eval_deriv2 (const gsl_interp * interp, const double xa[], const double ya[], double x, gsl_interp_accel * acc)`

> int gsl\_interp\_eval\_deriv2\_e (const gsl\_interp \* interp, const
> double xa\[\], const double ya\[\], double x, gsl\_interp\_accel \*
> acc, double \* d2)

> These functions return the second derivative `d2` of an interpolated
> function for a given point `x`, using the interpolation object
> `interp`, data arrays `xa` and `ya` and the accelerator `acc`.

"""
function interp_eval_deriv2(obj, xa, ya, x, a)
    ccall((:gsl_interp_eval_deriv2, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, x, a)
end

@doc md"""
    interp_eval_integ_e(obj, xa, ya, a, b, acc, result) -> Cint

C signature:
`int gsl_interp_eval_integ_e(const gsl_interp * obj, const double xa[], const double ya[], double a, double b, gsl_interp_accel * acc, double * result)`
"""
function interp_eval_integ_e(obj, xa, ya, a, b, acc, result)
    ccall((:gsl_interp_eval_integ_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, a, b, acc, result)
end

@doc md"""
    interp_eval_integ(obj, xa, ya, a, b, acc) -> Cdouble

C signature:
`double gsl_interp_eval_integ(const gsl_interp * obj, const double xa[], const double ya[], double a, double b, gsl_interp_accel * acc)`

GSL documentation:

### `double gsl_interp_eval_integ (const gsl_interp * interp, const double xa[], const double ya[], double a, double b, gsl_interp_accel * acc)`

> int gsl\_interp\_eval\_integ\_e (const gsl\_interp \* interp, const
> double xa\[\], const double ya\[\], double a, double b,
> gsl\_interp\_accel \* acc, double \* result)

> These functions return the numerical integral `result` of an
> interpolated function over the range \[`a`, `b`\], using the
> interpolation object `interp`, data arrays `xa` and `ya` and the
> accelerator `acc`.

"""
function interp_eval_integ(obj, xa, ya, a, b, acc)
    ccall((:gsl_interp_eval_integ, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, a, b, acc)
end

@doc md"""
    interp_free(interp) -> Cvoid

C signature:
`void gsl_interp_free(gsl_interp * interp)`

GSL documentation:

### `void gsl_interp_free (gsl_interp * interp)`

> This function frees the interpolation object `interp`.

"""
function interp_free(interp)
    ccall((:gsl_interp_free, libgsl), Cvoid, (Ptr{gsl_interp},), interp)
end

@doc md"""
    interp_bsearch(x_array, x, index_lo, index_hi) -> Csize_t

C signature:
`size_t gsl_interp_bsearch(const double x_array[], double x, size_t index_lo, size_t index_hi)`

GSL documentation:

### `size_t gsl_interp_bsearch (const double x_array[], double x, size_t index_lo, size_t index_hi)`

> This function returns the index $i$ of the array `x_array` such that
> `x_array[i] <= x < x_array[i+1]`. The index is searched for in the
> range \[`index_lo`, `index_hi`\].

"""
function interp_bsearch(x_array, x, index_lo, index_hi)
    ccall((:gsl_interp_bsearch, libgsl), Csize_t, (Ref{Cdouble}, Cdouble, Csize_t, Csize_t), x_array, x, index_lo, index_hi)
end

@doc md"""
    interp_accel_find(a, x_array, size, x) -> Csize_t

C signature:
`size_t gsl_interp_accel_find(gsl_interp_accel * a, const double x_array[], size_t size, double x)`

GSL documentation:

### `size_t gsl_interp_accel_find (gsl_interp_accel * a, const double x_array[], size_t size, double x)`

> This function performs a lookup action on the data array `x_array` of
> size `size`, using the given accelerator `a`. This is how lookups are
> performed during evaluation of an interpolation. The function returns
> an index $i$ such that `x_array[i] <= x < x_array[i+1]`.

"""
function interp_accel_find(a, x_array, size, x)
    ccall((:gsl_interp_accel_find, libgsl), Csize_t, (Ref{gsl_interp_accel}, Ref{Cdouble}, Csize_t, Cdouble), a, x_array, size, x)
end

