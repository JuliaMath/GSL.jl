#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_bspline.h ############################################################


"""
    gsl_bspline_alloc(k, nbreak) -> Ptr{gsl_bspline_workspace}

C signature:
`gsl_bspline_workspace * gsl_bspline_alloc(const size_t k, const size_t nbreak)`
"""
function gsl_bspline_alloc(k, nbreak)
    ccall((:gsl_bspline_alloc, libgsl), Ptr{gsl_bspline_workspace}, (Csize_t, Csize_t), k, nbreak)
end

"""
    gsl_bspline_free(w) -> Cvoid

C signature:
`void gsl_bspline_free(gsl_bspline_workspace *w)`
"""
function gsl_bspline_free(w)
    ccall((:gsl_bspline_free, libgsl), Cvoid, (Ptr{gsl_bspline_workspace},), w)
end

"""
    gsl_bspline_ncoeffs(w) -> Csize_t

C signature:
`size_t gsl_bspline_ncoeffs(gsl_bspline_workspace * w)`
"""
function gsl_bspline_ncoeffs(w)
    ccall((:gsl_bspline_ncoeffs, libgsl), Csize_t, (Ptr{gsl_bspline_workspace},), w)
end

"""
    gsl_bspline_order(w) -> Csize_t

C signature:
`size_t gsl_bspline_order(gsl_bspline_workspace * w)`
"""
function gsl_bspline_order(w)
    ccall((:gsl_bspline_order, libgsl), Csize_t, (Ptr{gsl_bspline_workspace},), w)
end

"""
    gsl_bspline_nbreak(w) -> Csize_t

C signature:
`size_t gsl_bspline_nbreak(gsl_bspline_workspace * w)`
"""
function gsl_bspline_nbreak(w)
    ccall((:gsl_bspline_nbreak, libgsl), Csize_t, (Ptr{gsl_bspline_workspace},), w)
end

"""
    gsl_bspline_breakpoint(i, w) -> Cdouble

C signature:
`double gsl_bspline_breakpoint(size_t i, gsl_bspline_workspace * w)`
"""
function gsl_bspline_breakpoint(i, w)
    ccall((:gsl_bspline_breakpoint, libgsl), Cdouble, (Csize_t, Ref{gsl_bspline_workspace}), i, w)
end

"""
    gsl_bspline_greville_abscissa(i, w) -> Cdouble

C signature:
`double gsl_bspline_greville_abscissa(size_t i, gsl_bspline_workspace *w)`
"""
function gsl_bspline_greville_abscissa(i, w)
    ccall((:gsl_bspline_greville_abscissa, libgsl), Cdouble, (Csize_t, Ref{gsl_bspline_workspace}), i, w)
end

"""
    gsl_bspline_knots(breakpts, w) -> Cint

C signature:
`int gsl_bspline_knots(const gsl_vector *breakpts, gsl_bspline_workspace *w)`
"""
function gsl_bspline_knots(breakpts, w)
    ccall((:gsl_bspline_knots, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_bspline_workspace}), breakpts, w)
end

"""
    gsl_bspline_knots_uniform(a, b, w) -> Cint

C signature:
`int gsl_bspline_knots_uniform(const double a, const double b, gsl_bspline_workspace *w)`
"""
function gsl_bspline_knots_uniform(a, b, w)
    ccall((:gsl_bspline_knots_uniform, libgsl), Cint, (Cdouble, Cdouble, Ref{gsl_bspline_workspace}), a, b, w)
end

"""
    gsl_bspline_knots_greville(abscissae, w, abserr) -> Cint

C signature:
`int gsl_bspline_knots_greville(const gsl_vector *abscissae, gsl_bspline_workspace *w, double *abserr)`
"""
function gsl_bspline_knots_greville(abscissae, w, abserr)
    ccall((:gsl_bspline_knots_greville, libgsl), Cint, (Ref{gsl_vector}, Ref{gsl_bspline_workspace}, Ref{Cdouble}), abscissae, w, abserr)
end

"""
    gsl_bspline_eval(x, B, w) -> Cint

C signature:
`int gsl_bspline_eval(const double x, gsl_vector *B, gsl_bspline_workspace *w)`
"""
function gsl_bspline_eval(x, B, w)
    ccall((:gsl_bspline_eval, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{gsl_bspline_workspace}), x, B, w)
end

"""
    gsl_bspline_eval_nonzero(x, Bk, istart, iend, w) -> Cint

C signature:
`int gsl_bspline_eval_nonzero(const double x, gsl_vector *Bk, size_t *istart, size_t *iend, gsl_bspline_workspace *w)`
"""
function gsl_bspline_eval_nonzero(x, Bk, istart, iend, w)
    ccall((:gsl_bspline_eval_nonzero, libgsl), Cint, (Cdouble, Ref{gsl_vector}, Ref{Csize_t}, Ref{Csize_t}, Ref{gsl_bspline_workspace}), x, Bk, istart, iend, w)
end

"""
    gsl_bspline_deriv_eval(x, nderiv, dB, w) -> Cint

C signature:
`int gsl_bspline_deriv_eval(const double x, const size_t nderiv, gsl_matrix *dB, gsl_bspline_workspace *w)`
"""
function gsl_bspline_deriv_eval(x, nderiv, dB, w)
    ccall((:gsl_bspline_deriv_eval, libgsl), Cint, (Cdouble, Csize_t, Ref{gsl_matrix}, Ref{gsl_bspline_workspace}), x, nderiv, dB, w)
end

"""
    gsl_bspline_deriv_eval_nonzero(x, nderiv, dB, istart, iend, w) -> Cint

C signature:
`int gsl_bspline_deriv_eval_nonzero(const double x, const size_t nderiv, gsl_matrix *dB, size_t *istart, size_t *iend, gsl_bspline_workspace *w)`
"""
function gsl_bspline_deriv_eval_nonzero(x, nderiv, dB, istart, iend, w)
    ccall((:gsl_bspline_deriv_eval_nonzero, libgsl), Cint, (Cdouble, Csize_t, Ref{gsl_matrix}, Ref{Csize_t}, Ref{Csize_t}, Ref{gsl_bspline_workspace}), x, nderiv, dB, istart, iend, w)
end

