#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_deriv.h ##############################################################


"""
    gsl_deriv_central(f, x, h, result, abserr) -> Cint

C signature:
`int gsl_deriv_central (const gsl_function *f, double x, double h, double *result, double *abserr)`
"""
function gsl_deriv_central(f, x, h, result, abserr)
    ccall((:gsl_deriv_central, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, h, result, abserr)
end

"""
    gsl_deriv_backward(f, x, h, result, abserr) -> Cint

C signature:
`int gsl_deriv_backward (const gsl_function *f, double x, double h, double *result, double *abserr)`
"""
function gsl_deriv_backward(f, x, h, result, abserr)
    ccall((:gsl_deriv_backward, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, h, result, abserr)
end

"""
    gsl_deriv_forward(f, x, h, result, abserr) -> Cint

C signature:
`int gsl_deriv_forward (const gsl_function *f, double x, double h, double *result, double *abserr)`
"""
function gsl_deriv_forward(f, x, h, result, abserr)
    ccall((:gsl_deriv_forward, libgsl), Cint, (Ref{gsl_function}, Cdouble, Cdouble, Ref{Cdouble}, Ref{Cdouble}), f, x, h, result, abserr)
end

