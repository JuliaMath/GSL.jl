#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_poly.h ###############################################################


"""
    gsl_poly_eval(c, len, x) -> Cdouble

C signature:
`double gsl_poly_eval(const double c[], const int len, const double x)`
"""
function gsl_poly_eval(c, len, x)
    ccall((:gsl_poly_eval, libgsl), Cdouble, (Ref{Cdouble}, Cint, Cdouble), c, len, x)
end

"""
    gsl_poly_complex_eval(c, len, z) -> gsl_complex

C signature:
`gsl_complex gsl_poly_complex_eval (const double c [], const int len, const gsl_complex z)`
"""
function gsl_poly_complex_eval(c, len, z)
    ccall((:gsl_poly_complex_eval, libgsl), gsl_complex, (Ref{Cdouble}, Cint, gsl_complex), c, len, z)
end

"""
    gsl_poly_eval_derivs(c, lenc, x, res, lenres) -> Cint

C signature:
`int gsl_poly_eval_derivs(const double c[], const size_t lenc, const double x, double res[], const size_t lenres)`
"""
function gsl_poly_eval_derivs(c, lenc, x, res, lenres)
    ccall((:gsl_poly_eval_derivs, libgsl), Cint, (Ref{Cdouble}, Csize_t, Cdouble, Ref{Cdouble}, Csize_t), c, lenc, x, res, lenres)
end

"""
    gsl_poly_dd_init(dd, x, y, size) -> Cint

C signature:
`int gsl_poly_dd_init (double dd[], const double x[], const double y[], size_t size)`
"""
function gsl_poly_dd_init(dd, x, y, size)
    ccall((:gsl_poly_dd_init, libgsl), Cint, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), dd, x, y, size)
end

"""
    gsl_poly_dd_eval(dd, xa, size, x) -> Cdouble

C signature:
`double gsl_poly_dd_eval (const double dd[], const double xa[], const size_t size, const double x)`
"""
function gsl_poly_dd_eval(dd, xa, size, x)
    ccall((:gsl_poly_dd_eval, libgsl), Cdouble, (Ref{Cdouble}, Ref{Cdouble}, Csize_t, Cdouble), dd, xa, size, x)
end

"""
    gsl_poly_dd_hermite_init(dd, z, xa, ya, dya, size) -> Cint

C signature:
`int gsl_poly_dd_hermite_init (double dd[], double z[], const double xa[], const double ya[], const double dya[], const size_t size)`
"""
function gsl_poly_dd_hermite_init(dd, z, xa, ya, dya, size)
    ccall((:gsl_poly_dd_hermite_init, libgsl), Cint, (Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Csize_t), dd, z, xa, ya, dya, size)
end

"""
    gsl_poly_solve_quadratic(a, b, c, x0, x1) -> Cint

C signature:
`int gsl_poly_solve_quadratic (double a, double b, double c, double * x0, double * x1)`
"""
function gsl_poly_solve_quadratic(a, b, c, x0, x1)
    ccall((:gsl_poly_solve_quadratic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), a, b, c, x0, x1)
end

"""
    gsl_poly_complex_solve_quadratic(a, b, c, z0, z1) -> Cint

C signature:
`int gsl_poly_complex_solve_quadratic (double a, double b, double c, gsl_complex * z0, gsl_complex * z1)`
"""
function gsl_poly_complex_solve_quadratic(a, b, c, z0, z1)
    ccall((:gsl_poly_complex_solve_quadratic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_complex}, Ref{gsl_complex}), a, b, c, z0, z1)
end

"""
    gsl_poly_solve_cubic(a, b, c, x0, x1, x2) -> Cint

C signature:
`int gsl_poly_solve_cubic (double a, double b, double c, double * x0, double * x1, double * x2)`
"""
function gsl_poly_solve_cubic(a, b, c, x0, x1, x2)
    ccall((:gsl_poly_solve_cubic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), a, b, c, x0, x1, x2)
end

"""
    gsl_poly_complex_solve_cubic(a, b, c, z0, z1, z2) -> Cint

C signature:
`int gsl_poly_complex_solve_cubic (double a, double b, double c, gsl_complex * z0, gsl_complex * z1, gsl_complex * z2)`
"""
function gsl_poly_complex_solve_cubic(a, b, c, z0, z1, z2)
    ccall((:gsl_poly_complex_solve_cubic, libgsl), Cint, (Cdouble, Cdouble, Cdouble, Ref{gsl_complex}, Ref{gsl_complex}, Ref{gsl_complex}), a, b, c, z0, z1, z2)
end

"""
    gsl_poly_complex_workspace_alloc(n) -> Ptr{gsl_poly_complex_workspace}

C signature:
`gsl_poly_complex_workspace * gsl_poly_complex_workspace_alloc (size_t n)`
"""
function gsl_poly_complex_workspace_alloc(n)
    ccall((:gsl_poly_complex_workspace_alloc, libgsl), Ptr{gsl_poly_complex_workspace}, (Csize_t,), n)
end

"""
    gsl_poly_complex_workspace_free(w) -> Cvoid

C signature:
`void gsl_poly_complex_workspace_free (gsl_poly_complex_workspace * w)`
"""
function gsl_poly_complex_workspace_free(w)
    ccall((:gsl_poly_complex_workspace_free, libgsl), Cvoid, (Ptr{gsl_poly_complex_workspace},), w)
end

"""
    gsl_poly_complex_solve(a, n, w, z) -> Cint

C signature:
`int gsl_poly_complex_solve (const double * a, size_t n, gsl_poly_complex_workspace * w, gsl_complex_packed_ptr z)`
"""
function gsl_poly_complex_solve(a, n, w, z)
    ccall((:gsl_poly_complex_solve, libgsl), Cint, (Ref{Cdouble}, Csize_t, Ref{gsl_poly_complex_workspace}, gsl_complex_packed_ptr), a, n, w, z)
end

