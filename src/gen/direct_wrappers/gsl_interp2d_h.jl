#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_interp2d.h ###########################################################


@doc md"""
    interp2d_alloc(T, xsize, ysize) -> Ptr{gsl_interp2d}

C signature:
`gsl_interp2d * gsl_interp2d_alloc(const gsl_interp2d_type * T, const size_t xsize, const size_t ysize)`

GSL documentation:

### `gsl_interp2d * gsl_interp2d_alloc (const gsl_interp2d_type * T, const size_t xsize, const size_t ysize)`

> This function returns a pointer to a newly allocated interpolation
> object of type `T` for `xsize` grid points in the $x$ direction and
> `ysize` grid points in the $y$ direction.

"""
function interp2d_alloc(T, xsize, ysize)
    ccall((:gsl_interp2d_alloc, libgsl), Ptr{gsl_interp2d}, (Ref{gsl_interp2d_type}, Csize_t, Csize_t), T, xsize, ysize)
end

@doc md"""
    interp2d_name(interp) -> Ptr{Cchar}

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
    ccall((:gsl_interp2d_name, libgsl), Ptr{Cchar}, (Ptr{gsl_interp2d},), interp)
end

@doc md"""
    interp2d_min_size(interp) -> Csize_t

C signature:
`size_t gsl_interp2d_min_size(const gsl_interp2d * interp)`

GSL documentation:

### `unsigned int gsl_interp2d_min_size (const gsl_interp2d * interp)`

> unsigned int gsl\_interp2d\_type\_min\_size (const gsl\_interp2d\_type
> \* T)

> These functions return the minimum number of points required by the
> interpolation object `interp` or interpolation type `T`. For example,
> bicubic interpolation requires a minimum of 4 points.

"""
function interp2d_min_size(interp)
    ccall((:gsl_interp2d_min_size, libgsl), Csize_t, (Ptr{gsl_interp2d},), interp)
end

@doc md"""
    interp2d_type_min_size(T) -> Csize_t

C signature:
`size_t gsl_interp2d_type_min_size(const gsl_interp2d_type * T)`
"""
function interp2d_type_min_size(T)
    ccall((:gsl_interp2d_type_min_size, libgsl), Csize_t, (Ptr{gsl_interp2d_type},), T)
end

@doc md"""
    interp2d_set(interp, zarr, i, j, z) -> Cint

C signature:
`int gsl_interp2d_set(const gsl_interp2d * interp, double zarr[], const size_t i, const size_t j, const double z)`

GSL documentation:

### `int gsl_interp2d_set (const gsl_interp2d * interp, double za[], const size_t i, const size_t j, const double z)`

> This function sets the value $z_{ij}$ for grid point (`i`, `j`) of the
> array `za` to `z`.

"""
function interp2d_set(interp, zarr, i, j, z)
    ccall((:gsl_interp2d_set, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), interp, zarr, i, j, z)
end

@doc md"""
    interp2d_get(interp, zarr, i, j) -> Cdouble

C signature:
`double gsl_interp2d_get(const gsl_interp2d * interp, const double zarr[], const size_t i, const size_t j)`

GSL documentation:

### `double gsl_interp2d_get (const gsl_interp2d * interp, const double za[], const size_t i, const size_t j)`

> This function returns the value $z_{ij}$ for grid point (`i`, `j`)
> stored in the array `za`.

"""
function interp2d_get(interp, zarr, i, j)
    ccall((:gsl_interp2d_get, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Csize_t, Csize_t), interp, zarr, i, j)
end

@doc md"""
    interp2d_idx(interp, i, j) -> Csize_t

C signature:
`size_t gsl_interp2d_idx(const gsl_interp2d * interp, const size_t i, const size_t j)`

GSL documentation:

### `size_t gsl_interp2d_idx (const gsl_interp2d * interp, const size_t i, const size_t j)`

> This function returns the index corresponding to the grid point (`i`,
> `j`). The index is given by $j*xsize + i$.

"""
function interp2d_idx(interp, i, j)
    ccall((:gsl_interp2d_idx, libgsl), Csize_t, (Ref{gsl_interp2d}, Csize_t, Csize_t), interp, i, j)
end

@doc md"""
    interp2d_init(interp, xa, ya, za, xsize, ysize) -> Cint

C signature:
`int gsl_interp2d_init(gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const size_t xsize, const size_t ysize)`

GSL documentation:

### `int gsl_interp2d_init (gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const size_t xsize, const size_t ysize)`

> This function initializes the interpolation object `interp` for the
> data (`xa`, `ya`, `za`) where `xa` and `ya` are arrays of the $x$ and
> $y$ grid points of size `xsize` and `ysize` respectively, and `za` is
> an array of function values of size `xsize` \* `ysize`. The
> interpolation object (`gsl_interp2d`) does not save the data arrays
> `xa`, `ya`, and `za` and only stores the static state computed from
> the data. The `xa` and `ya` data arrays are always assumed to be
> strictly ordered, with increasing $x,y$ values; the behavior for other
> arrangements is not defined.

"""
function interp2d_init(interp, xa, ya, za, xsize, ysize)
    ccall((:gsl_interp2d_init, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t), interp, xa, ya, za, xsize, ysize)
end

@doc md"""
    interp2d_free(interp) -> Cvoid

C signature:
`void gsl_interp2d_free(gsl_interp2d * interp)`

GSL documentation:

### `void gsl_interp2d_free (gsl_interp2d * interp)`

> This function frees the interpolation object `interp`.

"""
function interp2d_free(interp)
    ccall((:gsl_interp2d_free, libgsl), Cvoid, (Ptr{gsl_interp2d},), interp)
end

@doc md"""
    interp2d_eval(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`

GSL documentation:

### `double gsl_interp2d_eval (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_e (const gsl\_interp2d \* interp, const
> double xa\[\], const double ya\[\], const double za\[\], const double
> x, const double y, gsl\_interp\_accel \* xacc, gsl\_interp\_accel \*
> yacc, double \* z)

> These functions return the interpolated value of `z` for a given point
> (`x`, `y`), using the interpolation object `interp`, data arrays `xa`,
> `ya`, and `za` and the accelerators `xacc` and `yacc`. When `x` is
> outside the range of `xa` or `y` is outside the range of `ya`, the
> error code `GSL_EDOM` is returned.

"""
function interp2d_eval(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_extrap(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_extrap(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`

GSL documentation:

### `double gsl_interp2d_eval_extrap (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_extrap\_e (const gsl\_interp2d \* interp,
> const double xa\[\], const double ya\[\], const double za\[\], const
> double x, const double y, gsl\_interp\_accel \* xacc,
> gsl\_interp\_accel \* yacc, double \* z)

> These functions return the interpolated value of `z` for a given point
> (`x`, `y`), using the interpolation object `interp`, data arrays `xa`,
> `ya`, and `za` and the accelerators `xacc` and `yacc`. The functions
> perform no bounds checking, so when `x` is outside the range of `xa`
> or `y` is outside the range of `ya`, extrapolation is performed.

"""
function interp2d_eval_extrap(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_extrap, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel* xa, gsl_interp_accel* ya, double * z)`
"""
function interp2d_eval_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_e_extrap(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_e_extrap(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_e_extrap(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_e_extrap, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_extrap_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_extrap_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_extrap_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_extrap_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_deriv_x(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_x(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`

GSL documentation:

### `double gsl_interp2d_eval_deriv_x (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_deriv\_x\_e (const gsl\_interp2d \* interp,
> const double xa\[\], const double ya\[\], const double za\[\], const
> double x, const double y, gsl\_interp\_accel \* xacc,
> gsl\_interp\_accel \* yacc, double \* d)

> These functions return the interpolated value `d`
> $= \partial z / \partial x$ for a given point (`x`, `y`), using the
> interpolation object `interp`, data arrays `xa`, `ya`, and `za` and
> the accelerators `xacc` and `yacc`. When `x` is outside the range of
> `xa` or `y` is outside the range of `ya`, the error code `GSL_EDOM` is
> returned.

"""
function interp2d_eval_deriv_x(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_x, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_deriv_x_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_x_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_deriv_x_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_x_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_deriv_y(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_y(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel* xa, gsl_interp_accel* ya)`

GSL documentation:

### `double gsl_interp2d_eval_deriv_y (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_deriv\_y\_e (const gsl\_interp2d \* interp,
> const double xa\[\], const double ya\[\], const double za\[\], const
> double x, const double y, gsl\_interp\_accel \* xacc,
> gsl\_interp\_accel \* yacc, double \* d)

> These functions return the interpolated value `d`
> $= \partial z / \partial y$ for a given point (`x`, `y`), using the
> interpolation object `interp`, data arrays `xa`, `ya`, and `za` and
> the accelerators `xacc` and `yacc`. When `x` is outside the range of
> `xa` or `y` is outside the range of `ya`, the error code `GSL_EDOM` is
> returned.

"""
function interp2d_eval_deriv_y(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_y, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_deriv_y_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_y_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_deriv_y_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_y_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_deriv_xx(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_xx(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`

GSL documentation:

### `double gsl_interp2d_eval_deriv_xx (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_deriv\_xx\_e (const gsl\_interp2d \* interp,
> const double xa\[\], const double ya\[\], const double za\[\], const
> double x, const double y, gsl\_interp\_accel \* xacc,
> gsl\_interp\_accel \* yacc, double \* d)

> These functions return the interpolated value `d`
> $= \partial^2 z / \partial x^2$ for a given point (`x`, `y`), using
> the interpolation object `interp`, data arrays `xa`, `ya`, and `za`
> and the accelerators `xacc` and `yacc`. When `x` is outside the range
> of `xa` or `y` is outside the range of `ya`, the error code `GSL_EDOM`
> is returned.

"""
function interp2d_eval_deriv_xx(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_xx, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_deriv_xx_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_xx_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_deriv_xx_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_xx_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_deriv_yy(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_yy(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`

GSL documentation:

### `double gsl_interp2d_eval_deriv_yy (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_deriv\_yy\_e (const gsl\_interp2d \* interp,
> const double xa\[\], const double ya\[\], const double za\[\], const
> double x, const double y, gsl\_interp\_accel \* xacc,
> gsl\_interp\_accel \* yacc, double \* d)

> These functions return the interpolated value `d`
> $= \partial^2 z / \partial y^2$ for a given point (`x`, `y`), using
> the interpolation object `interp`, data arrays `xa`, `ya`, and `za`
> and the accelerators `xacc` and `yacc`. When `x` is outside the range
> of `xa` or `y` is outside the range of `ya`, the error code `GSL_EDOM`
> is returned.

"""
function interp2d_eval_deriv_yy(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_yy, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_deriv_yy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_yy_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_deriv_yy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_yy_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

@doc md"""
    interp2d_eval_deriv_xy(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_xy(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`

GSL documentation:

### `double gsl_interp2d_eval_deriv_xy (const gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const double x, const double y, gsl_interp_accel * xacc, gsl_interp_accel * yacc)`

> int gsl\_interp2d\_eval\_deriv\_xy\_e (const gsl\_interp2d \* interp,
> const double xa\[\], const double ya\[\], const double za\[\], const
> double x, const double y, gsl\_interp\_accel \* xacc,
> gsl\_interp\_accel \* yacc, double \* d)

> These functions return the interpolated value `d`
> $= \partial^2 z / \partial x \partial y$ for a given point (`x`, `y`),
> using the interpolation object `interp`, data arrays `xa`, `ya`, and
> `za` and the accelerators `xacc` and `yacc`. When `x` is outside the
> range of `xa` or `y` is outside the range of `ya`, the error code
> `GSL_EDOM` is returned.

"""
function interp2d_eval_deriv_xy(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_xy, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

@doc md"""
    interp2d_eval_deriv_xy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_xy_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function interp2d_eval_deriv_xy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_xy_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

