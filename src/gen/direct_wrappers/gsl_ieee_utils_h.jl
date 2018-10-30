#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_ieee_utils.h #########################################################


"""
    gsl_ieee_printf_float(x) -> Cvoid

C signature:
`void gsl_ieee_printf_float (const float * x)`
"""
function gsl_ieee_printf_float(x)
    ccall((:gsl_ieee_printf_float, libgsl), Cvoid, (Ptr{Cfloat},), x)
end

"""
    gsl_ieee_printf_double(x) -> Cvoid

C signature:
`void gsl_ieee_printf_double (const double * x)`
"""
function gsl_ieee_printf_double(x)
    ccall((:gsl_ieee_printf_double, libgsl), Cvoid, (Ptr{Cdouble},), x)
end

"""
    gsl_ieee_fprintf_float(stream, x) -> Cvoid

C signature:
`void gsl_ieee_fprintf_float (FILE * stream, const float * x)`
"""
function gsl_ieee_fprintf_float(stream, x)
    ccall((:gsl_ieee_fprintf_float, libgsl), Cvoid, (Ref{Cvoid}, Ref{Cfloat}), stream, x)
end

"""
    gsl_ieee_fprintf_double(stream, x) -> Cvoid

C signature:
`void gsl_ieee_fprintf_double (FILE * stream, const double * x)`
"""
function gsl_ieee_fprintf_double(stream, x)
    ccall((:gsl_ieee_fprintf_double, libgsl), Cvoid, (Ref{Cvoid}, Ref{Cdouble}), stream, x)
end

"""
    gsl_ieee_float_to_rep(x, r) -> Cvoid

C signature:
`void gsl_ieee_float_to_rep (const float * x, gsl_ieee_float_rep * r)`
"""
function gsl_ieee_float_to_rep(x, r)
    ccall((:gsl_ieee_float_to_rep, libgsl), Cvoid, (Ref{Cfloat}, Ref{gsl_ieee_float_rep}), x, r)
end

"""
    gsl_ieee_double_to_rep(x, r) -> Cvoid

C signature:
`void gsl_ieee_double_to_rep (const double * x, gsl_ieee_double_rep * r)`
"""
function gsl_ieee_double_to_rep(x, r)
    ccall((:gsl_ieee_double_to_rep, libgsl), Cvoid, (Ref{Cdouble}, Ref{gsl_ieee_double_rep}), x, r)
end

"""
    gsl_ieee_env_setup() -> Cvoid

C signature:
`void gsl_ieee_env_setup (void)`
"""
function gsl_ieee_env_setup()
    ccall((:gsl_ieee_env_setup, libgsl), Cvoid, (), )
end

"""
    gsl_ieee_read_mode_string(description, precision, rounding, exception_mask) -> Cint

C signature:
`int gsl_ieee_read_mode_string (const char * description, int * precision, int * rounding, int * exception_mask)`
"""
function gsl_ieee_read_mode_string(description, precision, rounding, exception_mask)
    ccall((:gsl_ieee_read_mode_string, libgsl), Cint, (Ref{Cchar}, Ref{Cint}, Ref{Cint}, Ref{Cint}), description, precision, rounding, exception_mask)
end

"""
    gsl_ieee_set_mode(precision, rounding, exception_mask) -> Cint

C signature:
`int gsl_ieee_set_mode (int precision, int rounding, int exception_mask)`
"""
function gsl_ieee_set_mode(precision, rounding, exception_mask)
    ccall((:gsl_ieee_set_mode, libgsl), Cint, (Cint, Cint, Cint), precision, rounding, exception_mask)
end

