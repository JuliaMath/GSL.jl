#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_multilarge.h #########################################################


"""
    gsl_multilarge_linear_alloc(T, p) -> Ptr{gsl_multilarge_linear_workspace}

C signature:
`gsl_multilarge_linear_workspace * gsl_multilarge_linear_alloc(const gsl_multilarge_linear_type * T, const size_t p)`
"""
function gsl_multilarge_linear_alloc(T, p)
    ccall((:gsl_multilarge_linear_alloc, libgsl), Ptr{gsl_multilarge_linear_workspace}, (Ref{gsl_multilarge_linear_type}, Csize_t), T, p)
end

"""
    gsl_multilarge_linear_free(w) -> Cvoid

C signature:
`void gsl_multilarge_linear_free(gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_free(w)
    ccall((:gsl_multilarge_linear_free, libgsl), Cvoid, (Ptr{gsl_multilarge_linear_workspace},), w)
end

"""
    gsl_multilarge_linear_name(w) -> Ptr{Cchar}

C signature:
`const char *gsl_multilarge_linear_name(const gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_name(w)
    ccall((:gsl_multilarge_linear_name, libgsl), Ptr{Cchar}, (Ptr{gsl_multilarge_linear_workspace},), w)
end

"""
    gsl_multilarge_linear_reset(w) -> Cint

C signature:
`int gsl_multilarge_linear_reset(gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_reset(w)
    ccall((:gsl_multilarge_linear_reset, libgsl), Cint, (Ptr{gsl_multilarge_linear_workspace},), w)
end

"""
    gsl_multilarge_linear_accumulate(X, y, w) -> Cint

C signature:
`int gsl_multilarge_linear_accumulate(gsl_matrix * X, gsl_vector * y, gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_accumulate(X, y, w)
    ccall((:gsl_multilarge_linear_accumulate, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), X, y, w)
end

"""
    gsl_multilarge_linear_solve(lambda, c, rnorm, snorm, w) -> Cint

C signature:
`int gsl_multilarge_linear_solve(const double lambda, gsl_vector * c, double * rnorm, double * snorm, gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_solve(lambda, c, rnorm, snorm, w)
    ccall((:gsl_multilarge_linear_solve, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Ref{gsl_multilarge_linear_workspace}), lambda, c, rnorm, snorm, w)
end

"""
    gsl_multilarge_linear_rcond(rcond, w) -> Cint

C signature:
`int gsl_multilarge_linear_rcond(double *rcond, gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_rcond(rcond, w)
    ccall((:gsl_multilarge_linear_rcond, libgsl), Cint, (Ref{Cdouble}, Ref{gsl_multilarge_linear_workspace}), rcond, w)
end

"""
    gsl_multilarge_linear_lcurve(reg_param, rho, eta, w) -> Cint

C signature:
`int gsl_multilarge_linear_lcurve(gsl_vector * reg_param, gsl_vector * rho, gsl_vector * eta, gsl_multilarge_linear_workspace * w)`
"""
function gsl_multilarge_linear_lcurve(reg_param, rho, eta, w)
    ccall((:gsl_multilarge_linear_lcurve, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), reg_param, rho, eta, w)
end

"""
    gsl_multilarge_linear_wstdform1(L, X, w, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_wstdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`
"""
function gsl_multilarge_linear_wstdform1(L, X, w, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_wstdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), L, X, w, y, Xs, ys, work)
end

"""
    gsl_multilarge_linear_stdform1(L, X, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_stdform1 (const gsl_vector * L, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`
"""
function gsl_multilarge_linear_stdform1(L, X, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_stdform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), L, X, y, Xs, ys, work)
end

"""
    gsl_multilarge_linear_L_decomp(L, tau) -> Cint

C signature:
`int gsl_multilarge_linear_L_decomp (gsl_matrix * L, gsl_vector * tau)`
"""
function gsl_multilarge_linear_L_decomp(L, tau)
    ccall((:gsl_multilarge_linear_L_decomp, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}), L, tau)
end

"""
    gsl_multilarge_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_wstdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * w, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`
"""
function gsl_multilarge_linear_wstdform2(LQR, Ltau, X, w, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_wstdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), LQR, Ltau, X, w, y, Xs, ys, work)
end

"""
    gsl_multilarge_linear_stdform2(LQR, Ltau, X, y, Xs, ys, work) -> Cint

C signature:
`int gsl_multilarge_linear_stdform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_matrix * X, const gsl_vector * y, gsl_matrix * Xs, gsl_vector * ys, gsl_multilarge_linear_workspace * work)`
"""
function gsl_multilarge_linear_stdform2(LQR, Ltau, X, y, Xs, ys, work)
    ccall((:gsl_multilarge_linear_stdform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), LQR, Ltau, X, y, Xs, ys, work)
end

"""
    gsl_multilarge_linear_genform1(L, cs, c, work) -> Cint

C signature:
`int gsl_multilarge_linear_genform1 (const gsl_vector * L, const gsl_vector * cs, gsl_vector * c, gsl_multilarge_linear_workspace * work)`
"""
function gsl_multilarge_linear_genform1(L, cs, c, work)
    ccall((:gsl_multilarge_linear_genform1, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), L, cs, c, work)
end

"""
    gsl_multilarge_linear_genform2(LQR, Ltau, cs, c, work) -> Cint

C signature:
`int gsl_multilarge_linear_genform2 (const gsl_matrix * LQR, const gsl_vector * Ltau, const gsl_vector * cs, gsl_vector * c, gsl_multilarge_linear_workspace * work)`
"""
function gsl_multilarge_linear_genform2(LQR, Ltau, cs, c, work)
    ccall((:gsl_multilarge_linear_genform2, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_vector}, Ref{gsl_multilarge_linear_workspace}), LQR, Ltau, cs, c, work)
end

