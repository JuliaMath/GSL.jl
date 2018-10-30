#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_interp.h #############################################################


"""
    gsl_interp_accel_alloc() -> Ptr{gsl_interp_accel}

C signature:
`gsl_interp_accel * gsl_interp_accel_alloc(void)`
"""
function gsl_interp_accel_alloc()
    ccall((:gsl_interp_accel_alloc, libgsl), Ptr{gsl_interp_accel}, (), )
end

"""
    gsl_interp_accel_reset(a) -> Cint

C signature:
`int gsl_interp_accel_reset (gsl_interp_accel * a)`
"""
function gsl_interp_accel_reset(a)
    ccall((:gsl_interp_accel_reset, libgsl), Cint, (Ptr{gsl_interp_accel},), a)
end

"""
    gsl_interp_accel_free(a) -> Cvoid

C signature:
`void gsl_interp_accel_free(gsl_interp_accel * a)`
"""
function gsl_interp_accel_free(a)
    ccall((:gsl_interp_accel_free, libgsl), Cvoid, (Ptr{gsl_interp_accel},), a)
end

"""
    gsl_interp_alloc(T, n) -> Ptr{gsl_interp}

C signature:
`gsl_interp * gsl_interp_alloc(const gsl_interp_type * T, size_t n)`
"""
function gsl_interp_alloc(T, n)
    ccall((:gsl_interp_alloc, libgsl), Ptr{gsl_interp}, (Ref{gsl_interp_type}, Csize_t), T, n)
end

"""
    gsl_interp_init(obj, xa, ya, size) -> Cint

C signature:
`int gsl_interp_init(gsl_interp * obj, const double xa[], const double ya[], size_t size)`
"""
function gsl_interp_init(obj, xa, ya, size)
    ccall((:gsl_interp_init, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), obj, xa, ya, size)
end

"""
    gsl_interp_name(interp) -> Ptr{Cchar}

C signature:
`const char * gsl_interp_name(const gsl_interp * interp)`
"""
function gsl_interp_name(interp)
    ccall((:gsl_interp_name, libgsl), Ptr{Cchar}, (Ptr{gsl_interp},), interp)
end

"""
    gsl_interp_min_size(interp) -> Cuint

C signature:
`unsigned int gsl_interp_min_size(const gsl_interp * interp)`
"""
function gsl_interp_min_size(interp)
    ccall((:gsl_interp_min_size, libgsl), Cuint, (Ptr{gsl_interp},), interp)
end

"""
    gsl_interp_type_min_size(T) -> Cuint

C signature:
`unsigned int gsl_interp_type_min_size(const gsl_interp_type * T)`
"""
function gsl_interp_type_min_size(T)
    ccall((:gsl_interp_type_min_size, libgsl), Cuint, (Ptr{gsl_interp_type},), T)
end

"""
    gsl_interp_eval_e(obj, xa, ya, x, a, y) -> Cint

C signature:
`int gsl_interp_eval_e(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a, double * y)`
"""
function gsl_interp_eval_e(obj, xa, ya, x, a, y)
    ccall((:gsl_interp_eval_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, x, a, y)
end

"""
    gsl_interp_eval(obj, xa, ya, x, a) -> Cdouble

C signature:
`double gsl_interp_eval(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a)`
"""
function gsl_interp_eval(obj, xa, ya, x, a)
    ccall((:gsl_interp_eval, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, x, a)
end

"""
    gsl_interp_eval_deriv_e(obj, xa, ya, x, a, d) -> Cint

C signature:
`int gsl_interp_eval_deriv_e(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a, double * d)`
"""
function gsl_interp_eval_deriv_e(obj, xa, ya, x, a, d)
    ccall((:gsl_interp_eval_deriv_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, x, a, d)
end

"""
    gsl_interp_eval_deriv(obj, xa, ya, x, a) -> Cdouble

C signature:
`double gsl_interp_eval_deriv(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a)`
"""
function gsl_interp_eval_deriv(obj, xa, ya, x, a)
    ccall((:gsl_interp_eval_deriv, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, x, a)
end

"""
    gsl_interp_eval_deriv2_e(obj, xa, ya, x, a, d2) -> Cint

C signature:
`int gsl_interp_eval_deriv2_e(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a, double * d2)`
"""
function gsl_interp_eval_deriv2_e(obj, xa, ya, x, a, d2)
    ccall((:gsl_interp_eval_deriv2_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, x, a, d2)
end

"""
    gsl_interp_eval_deriv2(obj, xa, ya, x, a) -> Cdouble

C signature:
`double gsl_interp_eval_deriv2(const gsl_interp * obj, const double xa[], const double ya[], double x, gsl_interp_accel * a)`
"""
function gsl_interp_eval_deriv2(obj, xa, ya, x, a)
    ccall((:gsl_interp_eval_deriv2, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, x, a)
end

"""
    gsl_interp_eval_integ_e(obj, xa, ya, a, b, acc, result) -> Cint

C signature:
`int gsl_interp_eval_integ_e(const gsl_interp * obj, const double xa[], const double ya[], double a, double b, gsl_interp_accel * acc, double * result)`
"""
function gsl_interp_eval_integ_e(obj, xa, ya, a, b, acc, result)
    ccall((:gsl_interp_eval_integ_e, libgsl), Cint, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), obj, xa, ya, a, b, acc, result)
end

"""
    gsl_interp_eval_integ(obj, xa, ya, a, b, acc) -> Cdouble

C signature:
`double gsl_interp_eval_integ(const gsl_interp * obj, const double xa[], const double ya[], double a, double b, gsl_interp_accel * acc)`
"""
function gsl_interp_eval_integ(obj, xa, ya, a, b, acc)
    ccall((:gsl_interp_eval_integ, libgsl), Cdouble, (Ref{gsl_interp}, Ref{Cdouble}, Ref{Cdouble}, Cdouble, Cdouble, Ref{gsl_interp_accel}), obj, xa, ya, a, b, acc)
end

"""
    gsl_interp_free(interp) -> Cvoid

C signature:
`void gsl_interp_free(gsl_interp * interp)`
"""
function gsl_interp_free(interp)
    ccall((:gsl_interp_free, libgsl), Cvoid, (Ptr{gsl_interp},), interp)
end

"""
    gsl_interp_bsearch(x_array, x, index_lo, index_hi) -> Csize_t

C signature:
`size_t gsl_interp_bsearch(const double x_array[], double x, size_t index_lo, size_t index_hi)`
"""
function gsl_interp_bsearch(x_array, x, index_lo, index_hi)
    ccall((:gsl_interp_bsearch, libgsl), Csize_t, (Ref{Cdouble}, Cdouble, Csize_t, Csize_t), x_array, x, index_lo, index_hi)
end

"""
    gsl_interp_accel_find(a, x_array, size, x) -> Csize_t

C signature:
`size_t gsl_interp_accel_find(gsl_interp_accel * a, const double x_array[], size_t size, double x)`
"""
function gsl_interp_accel_find(a, x_array, size, x)
    ccall((:gsl_interp_accel_find, libgsl), Csize_t, (Ref{gsl_interp_accel}, Ref{Cdouble}, Csize_t, Cdouble), a, x_array, size, x)
end

