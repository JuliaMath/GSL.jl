#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_integration.h ########################################################


"""
    gsl_integration_workspace_alloc(n) -> Ptr{gsl_integration_workspace}

C signature:
`gsl_integration_workspace * gsl_integration_workspace_alloc (const size_t n)`
"""
function gsl_integration_workspace_alloc(n)
    ccall((:gsl_integration_workspace_alloc, libgsl), Ptr{gsl_integration_workspace}, (Csize_t,), n)
end

"""
    gsl_integration_workspace_free(w) -> Cvoid

C signature:
`void gsl_integration_workspace_free (gsl_integration_workspace * w)`
"""
function gsl_integration_workspace_free(w)
    ccall((:gsl_integration_workspace_free, libgsl), Cvoid, (Ptr{gsl_integration_workspace},), w)
end

"""
    gsl_integration_qaws_table_alloc(alpha, beta, mu, nu) -> Ptr{gsl_integration_qaws_table}

C signature:
`gsl_integration_qaws_table * gsl_integration_qaws_table_alloc (double alpha, double beta, int mu, int nu)`
"""
function gsl_integration_qaws_table_alloc(alpha, beta, mu, nu)
    ccall((:gsl_integration_qaws_table_alloc, libgsl), Ptr{gsl_integration_qaws_table}, (Cdouble, Cdouble, Cint, Cint), alpha, beta, mu, nu)
end

"""
    gsl_integration_qaws_table_set(t, alpha, beta, mu, nu) -> Cint

C signature:
`int gsl_integration_qaws_table_set (gsl_integration_qaws_table * t, double alpha, double beta, int mu, int nu)`
"""
function gsl_integration_qaws_table_set(t, alpha, beta, mu, nu)
    ccall((:gsl_integration_qaws_table_set, libgsl), Cint, (Ref{gsl_integration_qaws_table}, Cdouble, Cdouble, Cint, Cint), t, alpha, beta, mu, nu)
end

"""
    gsl_integration_qaws_table_free(t) -> Cvoid

C signature:
`void gsl_integration_qaws_table_free (gsl_integration_qaws_table * t)`
"""
function gsl_integration_qaws_table_free(t)
    ccall((:gsl_integration_qaws_table_free, libgsl), Cvoid, (Ptr{gsl_integration_qaws_table},), t)
end

"""
    gsl_integration_qawo_table_alloc(omega, L, sine, n) -> Ptr{gsl_integration_qawo_table}

C signature:
`gsl_integration_qawo_table * gsl_integration_qawo_table_alloc (double omega, double L, enum gsl_integration_qawo_enum sine, size_t n)`
"""
function gsl_integration_qawo_table_alloc(omega, L, sine, n)
    ccall((:gsl_integration_qawo_table_alloc, libgsl), Ptr{gsl_integration_qawo_table}, (Cdouble, Cdouble, Cint, Csize_t), omega, L, sine, n)
end

"""
    gsl_integration_qawo_table_set(t, omega, L, sine) -> Cint

C signature:
`int gsl_integration_qawo_table_set (gsl_integration_qawo_table * t, double omega, double L, enum gsl_integration_qawo_enum sine)`
"""
function gsl_integration_qawo_table_set(t, omega, L, sine)
    ccall((:gsl_integration_qawo_table_set, libgsl), Cint, (Ref{gsl_integration_qawo_table}, Cdouble, Cdouble, Cint), t, omega, L, sine)
end

"""
    gsl_integration_qawo_table_set_length(t, L) -> Cint

C signature:
`int gsl_integration_qawo_table_set_length (gsl_integration_qawo_table * t, double L)`
"""
function gsl_integration_qawo_table_set_length(t, L)
    ccall((:gsl_integration_qawo_table_set_length, libgsl), Cint, (Ref{gsl_integration_qawo_table}, Cdouble), t, L)
end

"""
    gsl_integration_qawo_table_free(t) -> Cvoid

C signature:
`void gsl_integration_qawo_table_free (gsl_integration_qawo_table * t)`
"""
function gsl_integration_qawo_table_free(t)
    ccall((:gsl_integration_qawo_table_free, libgsl), Cvoid, (Ptr{gsl_integration_qawo_table},), t)
end

"""
    gsl_integration_qk15(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk15 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function gsl_integration_qk15(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk15, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qk21(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk21 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function gsl_integration_qk21(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk21, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qk31(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk31 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function gsl_integration_qk31(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk31, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qk41(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk41 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function gsl_integration_qk41(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk41, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qk51(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk51 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function gsl_integration_qk51(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk51, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qk61(f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk61 (const gsl_function * f, double a, double b, double *result, double *abserr, double *resabs, double *resasc)`
"""
function gsl_integration_qk61(f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk61, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qcheb(f, a, b, cheb12, cheb24) -> Cvoid

C signature:
`void gsl_integration_qcheb (gsl_function * f, double a, double b, double *cheb12, double *cheb24)`
"""
function gsl_integration_qcheb(f, a, b, cheb12, cheb24)
    ccall((:gsl_integration_qcheb, libgsl), Cvoid, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, a, b, cheb12, cheb24)
end

"""
    gsl_integration_qk(n, xgk, wg, wgk, fv1, fv2, f, a, b, result, abserr, resabs, resasc) -> Cvoid

C signature:
`void gsl_integration_qk (const int n, const double xgk[], const double wg[], const double wgk[], double fv1[], double fv2[], const gsl_function *f, double a, double b, double * result, double * abserr, double * resabs, double * resasc)`
"""
function gsl_integration_qk(n, xgk, wg, wgk, fv1, fv2, f, a, b, result, abserr, resabs, resasc)
    ccall((:gsl_integration_qk, libgsl), Cvoid, (Cint, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), n, xgk, wg, wgk, fv1, fv2, f, a, b, result, abserr, resabs, resasc)
end

"""
    gsl_integration_qng(f, a, b, epsabs, epsrel, result, abserr, neval) -> Cint

C signature:
`int gsl_integration_qng (const gsl_function * f, double a, double b, double epsabs, double epsrel, double *result, double *abserr, size_t * neval)`
"""
function gsl_integration_qng(f, a, b, epsabs, epsrel, result, abserr, neval)
    ccall((:gsl_integration_qng, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}, Ref{Csize_t}), f, a, b, epsabs, epsrel, result, abserr, neval)
end

"""
    gsl_integration_qag(f, a, b, epsabs, epsrel, limit, key, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qag (const gsl_function * f, double a, double b, double epsabs, double epsrel, size_t limit, int key, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qag(f, a, b, epsabs, epsrel, limit, key, workspace, result, abserr)
    ccall((:gsl_integration_qag, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Cint, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, epsabs, epsrel, limit, key, workspace, result, abserr)
end

"""
    gsl_integration_qagi(f, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagi (gsl_function * f, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qagi(f, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagi, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qagiu(f, a, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagiu (gsl_function * f, double a, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qagiu(f, a, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagiu, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qagil(f, b, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagil (gsl_function * f, double b, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qagil(f, b, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagil, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, b, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qags(f, a, b, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qags (const gsl_function * f, double a, double b, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qags(f, a, b, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qags, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qagp(f, pts, npts, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qagp (const gsl_function * f, double *pts, size_t npts, double epsabs, double epsrel, size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qagp(f, pts, npts, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qagp, libgsl), Cint, (Ref{gsl_function}, Ref{Cdouble}, Csize_t, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, pts, npts, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qawc(f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qawc (gsl_function *f, const double a, const double b, const double c, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, double * result, double * abserr)`
"""
function gsl_integration_qawc(f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qawc, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, c, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qaws(f, a, b, t, epsabs, epsrel, limit, workspace, result, abserr) -> Cint

C signature:
`int gsl_integration_qaws (gsl_function * f, const double a, const double b, gsl_integration_qaws_table * t, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, double *result, double *abserr)`
"""
function gsl_integration_qaws(f, a, b, t, epsabs, epsrel, limit, workspace, result, abserr)
    ccall((:gsl_integration_qaws, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{gsl_integration_qaws_table}, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{Cdouble}, Ref{Cdouble}), f, a, b, t, epsabs, epsrel, limit, workspace, result, abserr)
end

"""
    gsl_integration_qawo(f, a, epsabs, epsrel, limit, workspace, wf, result, abserr) -> Cint

C signature:
`int gsl_integration_qawo (gsl_function * f, const double a, const double epsabs, const double epsrel, const size_t limit, gsl_integration_workspace * workspace, gsl_integration_qawo_table * wf, double *result, double *abserr)`
"""
function gsl_integration_qawo(f, a, epsabs, epsrel, limit, workspace, wf, result, abserr)
    ccall((:gsl_integration_qawo, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{gsl_integration_qawo_table}, Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, epsrel, limit, workspace, wf, result, abserr)
end

"""
    gsl_integration_qawf(f, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr) -> Cint

C signature:
`int gsl_integration_qawf (gsl_function * f, const double a, const double epsabs, const size_t limit, gsl_integration_workspace * workspace, gsl_integration_workspace * cycle_workspace, gsl_integration_qawo_table * wf, double *result, double *abserr)`
"""
function gsl_integration_qawf(f, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr)
    ccall((:gsl_integration_qawf, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Csize_t, Ref{gsl_integration_workspace}, Ref{gsl_integration_workspace}, Ref{gsl_integration_qawo_table}, Ref{Cdouble}, Ref{Cdouble}), f, a, epsabs, limit, workspace, cycle_workspace, wf, result, abserr)
end

"""
    gsl_integration_glfixed_table_alloc(n) -> Ptr{gsl_integration_glfixed_table}

C signature:
`gsl_integration_glfixed_table * gsl_integration_glfixed_table_alloc (size_t n)`
"""
function gsl_integration_glfixed_table_alloc(n)
    ccall((:gsl_integration_glfixed_table_alloc, libgsl), Ptr{gsl_integration_glfixed_table}, (Csize_t,), n)
end

"""
    gsl_integration_glfixed_table_free(t) -> Cvoid

C signature:
`void gsl_integration_glfixed_table_free (gsl_integration_glfixed_table * t)`
"""
function gsl_integration_glfixed_table_free(t)
    ccall((:gsl_integration_glfixed_table_free, libgsl), Cvoid, (Ptr{gsl_integration_glfixed_table},), t)
end

"""
    gsl_integration_glfixed(f, a, b, t) -> Cdouble

C signature:
`double gsl_integration_glfixed (const gsl_function *f, double a, double b, const gsl_integration_glfixed_table * t)`
"""
function gsl_integration_glfixed(f, a, b, t)
    ccall((:gsl_integration_glfixed, libgsl), Cdouble, (Ref{gsl_function}, Cdouble, Cdouble, Ref{gsl_integration_glfixed_table}), f, a, b, t)
end

"""
    gsl_integration_glfixed_point(a, b, i, xi, wi, t) -> Cint

C signature:
`int gsl_integration_glfixed_point (double a, double b, size_t i, double *xi, double *wi, const gsl_integration_glfixed_table * t)`
"""
function gsl_integration_glfixed_point(a, b, i, xi, wi, t)
    ccall((:gsl_integration_glfixed_point, libgsl), Cint, (Cdouble, Cdouble, Csize_t, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_integration_glfixed_table}), a, b, i, xi, wi, t)
end

"""
    gsl_integration_cquad_workspace_alloc(n) -> Ptr{gsl_integration_cquad_workspace}

C signature:
`gsl_integration_cquad_workspace * gsl_integration_cquad_workspace_alloc (const size_t n)`
"""
function gsl_integration_cquad_workspace_alloc(n)
    ccall((:gsl_integration_cquad_workspace_alloc, libgsl), Ptr{gsl_integration_cquad_workspace}, (Csize_t,), n)
end

"""
    gsl_integration_cquad_workspace_free(w) -> Cvoid

C signature:
`void gsl_integration_cquad_workspace_free (gsl_integration_cquad_workspace * w)`
"""
function gsl_integration_cquad_workspace_free(w)
    ccall((:gsl_integration_cquad_workspace_free, libgsl), Cvoid, (Ptr{gsl_integration_cquad_workspace},), w)
end

"""
    gsl_integration_cquad(f, a, b, epsabs, epsrel, ws, result, abserr, nevals) -> Cint

C signature:
`int gsl_integration_cquad (const gsl_function * f, double a, double b, double epsabs, double epsrel, gsl_integration_cquad_workspace * ws, double *result, double *abserr, size_t * nevals)`
"""
function gsl_integration_cquad(f, a, b, epsabs, epsrel, ws, result, abserr, nevals)
    ccall((:gsl_integration_cquad, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Ref{gsl_integration_cquad_workspace}, Ref{Cdouble}, Ref{Cdouble}, Ref{Csize_t}), f, a, b, epsabs, epsrel, ws, result, abserr, nevals)
end

"""
    gsl_integration_romberg_alloc(n) -> Ptr{gsl_integration_romberg_workspace}

C signature:
`gsl_integration_romberg_workspace *gsl_integration_romberg_alloc(const size_t n)`
"""
function gsl_integration_romberg_alloc(n)
    ccall((:gsl_integration_romberg_alloc, libgsl), Ptr{gsl_integration_romberg_workspace}, (Csize_t,), n)
end

"""
    gsl_integration_romberg_free(w) -> Cvoid

C signature:
`void gsl_integration_romberg_free(gsl_integration_romberg_workspace * w)`
"""
function gsl_integration_romberg_free(w)
    ccall((:gsl_integration_romberg_free, libgsl), Cvoid, (Ptr{gsl_integration_romberg_workspace},), w)
end

"""
    gsl_integration_romberg(f, a, b, epsabs, epsrel, result, neval, w) -> Cint

C signature:
`int gsl_integration_romberg(const gsl_function * f, const double a, const double b, const double epsabs, const double epsrel, double * result, size_t * neval, gsl_integration_romberg_workspace * w)`
"""
function gsl_integration_romberg(f, a, b, epsabs, epsrel, result, neval, w)
    ccall((:gsl_integration_romberg, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Cdouble, Cdouble, Ref{Cdouble}, Ref{Csize_t}, Ref{gsl_integration_romberg_workspace}), f, a, b, epsabs, epsrel, result, neval, w)
end

"""
    gsl_integration_fixed_alloc(type, n, a, b, alpha, beta) -> Ptr{gsl_integration_fixed_workspace}

C signature:
`gsl_integration_fixed_workspace * gsl_integration_fixed_alloc(const gsl_integration_fixed_type * type, const size_t n, const double a, const double b, const double alpha, const double beta)`
"""
function gsl_integration_fixed_alloc(type, n, a, b, alpha, beta)
    ccall((:gsl_integration_fixed_alloc, libgsl), Ptr{gsl_integration_fixed_workspace}, (Ref{gsl_integration_fixed_type}, Csize_t, Cdouble, Cdouble, Cdouble, Cdouble), type, n, a, b, alpha, beta)
end

"""
    gsl_integration_fixed_free(w) -> Cvoid

C signature:
`void gsl_integration_fixed_free(gsl_integration_fixed_workspace * w)`
"""
function gsl_integration_fixed_free(w)
    ccall((:gsl_integration_fixed_free, libgsl), Cvoid, (Ptr{gsl_integration_fixed_workspace},), w)
end

"""
    gsl_integration_fixed_n(w) -> Csize_t

C signature:
`size_t gsl_integration_fixed_n(const gsl_integration_fixed_workspace * w)`
"""
function gsl_integration_fixed_n(w)
    ccall((:gsl_integration_fixed_n, libgsl), Csize_t, (Ptr{gsl_integration_fixed_workspace},), w)
end

"""
    gsl_integration_fixed_nodes(w) -> Ptr{Cdouble}

C signature:
`double *gsl_integration_fixed_nodes(const gsl_integration_fixed_workspace * w)`
"""
function gsl_integration_fixed_nodes(w)
    ccall((:gsl_integration_fixed_nodes, libgsl), Ptr{Cdouble}, (Ptr{gsl_integration_fixed_workspace},), w)
end

"""
    gsl_integration_fixed_weights(w) -> Ptr{Cdouble}

C signature:
`double *gsl_integration_fixed_weights(const gsl_integration_fixed_workspace * w)`
"""
function gsl_integration_fixed_weights(w)
    ccall((:gsl_integration_fixed_weights, libgsl), Ptr{Cdouble}, (Ptr{gsl_integration_fixed_workspace},), w)
end

"""
    gsl_integration_fixed(func, result, w) -> Cint

C signature:
`int gsl_integration_fixed(const gsl_function * func, double * result, const gsl_integration_fixed_workspace * w)`
"""
function gsl_integration_fixed(func, result, w)
    ccall((:gsl_integration_fixed, libgsl), Cint, (Ref{gsl_function}, Ref{Cdouble}, Ref{gsl_integration_fixed_workspace}), func, result, w)
end

