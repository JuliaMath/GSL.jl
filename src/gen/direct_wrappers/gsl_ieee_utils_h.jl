#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_ieee_utils.h #########################################################


@doc md"""
    ieee_printf_float(x) -> Cvoid

C signature:
`void gsl_ieee_printf_float (const float * x)`

GSL documentation:

### `void gsl_ieee_printf_float (const float * x)`

> void gsl\_ieee\_printf\_double (const double \* x)

> These functions output a formatted version of the IEEE floating-point
> number pointed to by `x` to the stream `stdout`.

The following program demonstrates the use of the functions by printing
the single and double precision representations of the fraction $1/3$.
For comparison the representation of the value promoted from single to
double precision is also printed.

"""
function ieee_printf_float(x)
    ccall((:gsl_ieee_printf_float, libgsl), Cvoid, (Ptr{Cfloat},), x)
end

@doc md"""
    ieee_printf_double(x) -> Cvoid

C signature:
`void gsl_ieee_printf_double (const double * x)`
"""
function ieee_printf_double(x)
    ccall((:gsl_ieee_printf_double, libgsl), Cvoid, (Ptr{Cdouble},), x)
end

@doc md"""
    ieee_fprintf_float(stream, x) -> Cvoid

C signature:
`void gsl_ieee_fprintf_float (FILE * stream, const float * x)`

GSL documentation:

### `void gsl_ieee_fprintf_float (FILE * stream, const float * x)`

> void gsl\_ieee\_fprintf\_double (FILE \* stream, const double \* x)

> These functions output a formatted version of the IEEE floating-point
> number pointed to by `x` to the stream `stream`. A pointer is used to
> pass the number indirectly, to avoid any undesired promotion from
> `float` to `double`. The output takes one of the following forms,
>
> `NaN`
>
> > the Not-a-Number symbol
>
> `Inf, -Inf`
>
> > positive or negative infinity
>
> `1.fffff...*2^E, -1.fffff...*2^E`
>
> > a normalized floating point number
>
> `0.fffff...*2^E, -0.fffff...*2^E`
>
> > a denormalized floating point number
>
> `0, -0`
>
> > positive or negative zero
>
> The output can be used directly in GNU Emacs Calc mode by preceding it
> with `2#` to indicate binary.

"""
function ieee_fprintf_float(stream, x)
    ccall((:gsl_ieee_fprintf_float, libgsl), Cvoid, (Ref{Cvoid}, Ref{Cfloat}), stream, x)
end

@doc md"""
    ieee_fprintf_double(stream, x) -> Cvoid

C signature:
`void gsl_ieee_fprintf_double (FILE * stream, const double * x)`
"""
function ieee_fprintf_double(stream, x)
    ccall((:gsl_ieee_fprintf_double, libgsl), Cvoid, (Ref{Cvoid}, Ref{Cdouble}), stream, x)
end

@doc md"""
    ieee_float_to_rep(x, r) -> Cvoid

C signature:
`void gsl_ieee_float_to_rep (const float * x, gsl_ieee_float_rep * r)`
"""
function ieee_float_to_rep(x, r)
    ccall((:gsl_ieee_float_to_rep, libgsl), Cvoid, (Ref{Cfloat}, Ref{gsl_ieee_float_rep}), x, r)
end

@doc md"""
    ieee_double_to_rep(x, r) -> Cvoid

C signature:
`void gsl_ieee_double_to_rep (const double * x, gsl_ieee_double_rep * r)`
"""
function ieee_double_to_rep(x, r)
    ccall((:gsl_ieee_double_to_rep, libgsl), Cvoid, (Ref{Cdouble}, Ref{gsl_ieee_double_rep}), x, r)
end

@doc md"""
    ieee_env_setup() -> Cvoid

C signature:
`void gsl_ieee_env_setup (void)`

GSL documentation:

### `void gsl_ieee_env_setup ()`

> This function reads the environment variable `GSL_IEEE_MODE` and
> attempts to set up the corresponding specified IEEE modes. The
> environment variable should be a list of keywords, separated by
> commas, like this:
>
>     GSL_IEEE_MODE = "keyword, keyword, ..."
>
> where `keyword` is one of the following mode-names:
>
>     single-precision
>     double-precision
>     extended-precision
>     round-to-nearest
>     round-down
>     round-up
>     round-to-zero
>     mask-all
>     mask-invalid
>     mask-denormalized
>     mask-division-by-zero
>     mask-overflow
>     mask-underflow
>     trap-inexact
>     trap-common
>
> If `GSL_IEEE_MODE` is empty or undefined then the function returns
> immediately and no attempt is made to change the system's IEEE mode.
> When the modes from `GSL_IEEE_MODE` are turned on the function prints
> a short message showing the new settings to remind you that the
> results of the program will be affected.
>
> If the requested modes are not supported by the platform being used
> then the function calls the error handler and returns an error code of
> `GSL_EUNSUP`.
>
> When options are specified using this method, the resulting mode is
> based on a default setting of the highest available precision (double
> precision or extended precision, depending on the platform) in
> round-to-nearest mode, with all exceptions enabled apart from the
> INEXACT exception. The INEXACT exception is generated whenever
> rounding occurs, so it must generally be disabled in typical
> scientific calculations. All other floating-point exceptions are
> enabled by default, including underflows and the use of denormalized
> numbers, for safety. They can be disabled with the individual `mask-`
> settings or together using `mask-all`.
>
> The following adjusted combination of modes is convenient for many
> purposes:
>
>     GSL_IEEE_MODE="double-precision,"\
>                     "mask-underflow,"\
>                       "mask-denormalized"
>
> This choice ignores any errors relating to small numbers (either
> denormalized, or underflowing to zero) but traps overflows, division
> by zero and invalid operations.
>
> Note that on the x86 series of processors this function sets both the
> original x87 mode and the newer MXCSR mode, which controls SSE
> floating-point operations. The SSE floating-point units do not have a
> precision-control bit, and always work in double-precision. The
> single-precision and extended-precision keywords have no effect in
> this case.

To demonstrate the effects of different rounding modes consider the
following program which computes $e$, the base of natural logarithms, by
summing a rapidly-decreasing series,

"""
function ieee_env_setup()
    ccall((:gsl_ieee_env_setup, libgsl), Cvoid, (), )
end

@doc md"""
    ieee_read_mode_string(description, precision, rounding, exception_mask) -> Cint

C signature:
`int gsl_ieee_read_mode_string (const char * description, int * precision, int * rounding, int * exception_mask)`
"""
function ieee_read_mode_string(description, precision, rounding, exception_mask)
    ccall((:gsl_ieee_read_mode_string, libgsl), Cint, (Ref{Cchar}, Ref{Cint}, Ref{Cint}, Ref{Cint}), description, precision, rounding, exception_mask)
end

@doc md"""
    ieee_set_mode(precision, rounding, exception_mask) -> Cint

C signature:
`int gsl_ieee_set_mode (int precision, int rounding, int exception_mask)`
"""
function ieee_set_mode(precision, rounding, exception_mask)
    ccall((:gsl_ieee_set_mode, libgsl), Cint, (Cint, Cint, Cint), precision, rounding, exception_mask)
end

