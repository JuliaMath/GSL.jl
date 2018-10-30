#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_interp2d.h ###########################################################


"""
    gsl_interp2d_alloc(T, xsize, ysize) -> Ptr{gsl_interp2d}

C signature:
`gsl_interp2d * gsl_interp2d_alloc(const gsl_interp2d_type * T, const size_t xsize, const size_t ysize)`
"""
function gsl_interp2d_alloc(T, xsize, ysize)
    ccall((:gsl_interp2d_alloc, libgsl), Ptr{gsl_interp2d}, (Ref{gsl_interp2d_type}, Csize_t, Csize_t), T, xsize, ysize)
end

"""
    gsl_interp2d_name(interp) -> Ptr{Cchar}

C signature:
`const char * gsl_interp2d_name(const gsl_interp2d * interp)`
"""
function gsl_interp2d_name(interp)
    ccall((:gsl_interp2d_name, libgsl), Ptr{Cchar}, (Ptr{gsl_interp2d},), interp)
end

"""
    gsl_interp2d_min_size(interp) -> Csize_t

C signature:
`size_t gsl_interp2d_min_size(const gsl_interp2d * interp)`
"""
function gsl_interp2d_min_size(interp)
    ccall((:gsl_interp2d_min_size, libgsl), Csize_t, (Ptr{gsl_interp2d},), interp)
end

"""
    gsl_interp2d_type_min_size(T) -> Csize_t

C signature:
`size_t gsl_interp2d_type_min_size(const gsl_interp2d_type * T)`
"""
function gsl_interp2d_type_min_size(T)
    ccall((:gsl_interp2d_type_min_size, libgsl), Csize_t, (Ptr{gsl_interp2d_type},), T)
end

"""
    gsl_interp2d_set(interp, zarr, i, j, z) -> Cint

C signature:
`int gsl_interp2d_set(const gsl_interp2d * interp, double zarr[], const size_t i, const size_t j, const double z)`
"""
function gsl_interp2d_set(interp, zarr, i, j, z)
    ccall((:gsl_interp2d_set, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Csize_t, Csize_t, Cdouble), interp, zarr, i, j, z)
end

"""
    gsl_interp2d_get(interp, zarr, i, j) -> Cdouble

C signature:
`double gsl_interp2d_get(const gsl_interp2d * interp, const double zarr[], const size_t i, const size_t j)`
"""
function gsl_interp2d_get(interp, zarr, i, j)
    ccall((:gsl_interp2d_get, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Csize_t, Csize_t), interp, zarr, i, j)
end

"""
    gsl_interp2d_idx(interp, i, j) -> Csize_t

C signature:
`size_t gsl_interp2d_idx(const gsl_interp2d * interp, const size_t i, const size_t j)`
"""
function gsl_interp2d_idx(interp, i, j)
    ccall((:gsl_interp2d_idx, libgsl), Csize_t, (Ref{gsl_interp2d}, Csize_t, Csize_t), interp, i, j)
end

"""
    gsl_interp2d_init(interp, xa, ya, za, xsize, ysize) -> Cint

C signature:
`int gsl_interp2d_init(gsl_interp2d * interp, const double xa[], const double ya[], const double za[], const size_t xsize, const size_t ysize)`
"""
function gsl_interp2d_init(interp, xa, ya, za, xsize, ysize)
    ccall((:gsl_interp2d_init, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t, Csize_t), interp, xa, ya, za, xsize, ysize)
end

"""
    gsl_interp2d_free(interp) -> Cvoid

C signature:
`void gsl_interp2d_free(gsl_interp2d * interp)`
"""
function gsl_interp2d_free(interp)
    ccall((:gsl_interp2d_free, libgsl), Cvoid, (Ptr{gsl_interp2d},), interp)
end

"""
    gsl_interp2d_eval(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`
"""
function gsl_interp2d_eval(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_extrap(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_extrap(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`
"""
function gsl_interp2d_eval_extrap(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_extrap, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel* xa, gsl_interp_accel* ya, double * z)`
"""
function gsl_interp2d_eval_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

"""
    gsl_interp2d_eval_e_extrap(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_e_extrap(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function gsl_interp2d_eval_e_extrap(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_e_extrap, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

"""
    gsl_interp2d_eval_deriv_x(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_x(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`
"""
function gsl_interp2d_eval_deriv_x(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_x, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_deriv_x_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_x_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function gsl_interp2d_eval_deriv_x_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_x_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

"""
    gsl_interp2d_eval_deriv_y(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_y(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel* xa, gsl_interp_accel* ya)`
"""
function gsl_interp2d_eval_deriv_y(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_y, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_deriv_y_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_y_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function gsl_interp2d_eval_deriv_y_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_y_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

"""
    gsl_interp2d_eval_deriv_xx(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_xx(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`
"""
function gsl_interp2d_eval_deriv_xx(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_xx, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_deriv_xx_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_xx_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function gsl_interp2d_eval_deriv_xx_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_xx_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

"""
    gsl_interp2d_eval_deriv_yy(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_yy(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`
"""
function gsl_interp2d_eval_deriv_yy(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_yy, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_deriv_yy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_yy_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function gsl_interp2d_eval_deriv_yy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_yy_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

"""
    gsl_interp2d_eval_deriv_xy(interp, xarr, yarr, zarr, x, y, xa, ya) -> Cdouble

C signature:
`double gsl_interp2d_eval_deriv_xy(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya)`
"""
function gsl_interp2d_eval_deriv_xy(interp, xarr, yarr, zarr, x, y, xa, ya)
    ccall((:gsl_interp2d_eval_deriv_xy, libgsl), Cdouble, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}), interp, xarr, yarr, zarr, x, y, xa, ya)
end

"""
    gsl_interp2d_eval_deriv_xy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z) -> Cint

C signature:
`int gsl_interp2d_eval_deriv_xy_e(const gsl_interp2d * interp, const double xarr[], const double yarr[], const double zarr[], const double x, const double y, gsl_interp_accel * xa, gsl_interp_accel * ya, double * z)`
"""
function gsl_interp2d_eval_deriv_xy_e(interp, xarr, yarr, zarr, x, y, xa, ya, z)
    ccall((:gsl_interp2d_eval_deriv_xy_e, libgsl), Cint, (Ref{gsl_interp2d}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{gsl_interp_accel}, Ref{Cdouble}), interp, xarr, yarr, zarr, x, y, xa, ya, z)
end

