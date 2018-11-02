#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_diff.h ###############################################################


@doc md"""
    gsl_diff_central(f, x, result, abserr) -> Cint

C signature:
`int gsl_diff_central (const gsl_function *f, double x, double *result, double *abserr)`
"""
function gsl_diff_central(f, x, result, abserr)
    ccall((:gsl_diff_central, libgsl), Cint, (Ref{gsl_function}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, result, abserr)
end

@doc md"""
    gsl_diff_backward(f, x, result, abserr) -> Cint

C signature:
`int gsl_diff_backward (const gsl_function *f, double x, double *result, double *abserr)`
"""
function gsl_diff_backward(f, x, result, abserr)
    ccall((:gsl_diff_backward, libgsl), Cint, (Ref{gsl_function}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, result, abserr)
end

@doc md"""
    gsl_diff_forward(f, x, result, abserr) -> Cint

C signature:
`int gsl_diff_forward (const gsl_function *f, double x, double *result, double *abserr)`
"""
function gsl_diff_forward(f, x, result, abserr)
    ccall((:gsl_diff_forward, libgsl), Cint, (Ref{gsl_function}, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, result, abserr)
end

