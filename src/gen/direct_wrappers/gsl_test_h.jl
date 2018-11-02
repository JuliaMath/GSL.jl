#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_test.h ###############################################################


@doc md"""
    gsl_test(status, test_description) -> Cvoid

C signature:
`void gsl_test (int status, const char *test_description, ...)`
"""
function gsl_test(status, test_description)
    ccall((:gsl_test, libgsl), Cvoid, (Cint, Ref{Cchar}), status, test_description)
end

@doc md"""
    gsl_test_rel(result, expected, relative_error, test_description) -> Cvoid

C signature:
`void gsl_test_rel (double result, double expected, double relative_error, const char *test_description, ...)`
"""
function gsl_test_rel(result, expected, relative_error, test_description)
    ccall((:gsl_test_rel, libgsl), Cvoid, (Cdouble, Cdouble, Cdouble, Ref{Cchar}), result, expected, relative_error, test_description)
end

@doc md"""
    gsl_test_abs(result, expected, absolute_error, test_description) -> Cvoid

C signature:
`void gsl_test_abs (double result, double expected, double absolute_error, const char *test_description, ...)`
"""
function gsl_test_abs(result, expected, absolute_error, test_description)
    ccall((:gsl_test_abs, libgsl), Cvoid, (Cdouble, Cdouble, Cdouble, Ref{Cchar}), result, expected, absolute_error, test_description)
end

@doc md"""
    gsl_test_factor(result, expected, factor, test_description) -> Cvoid

C signature:
`void gsl_test_factor (double result, double expected, double factor, const char *test_description, ...)`
"""
function gsl_test_factor(result, expected, factor, test_description)
    ccall((:gsl_test_factor, libgsl), Cvoid, (Cdouble, Cdouble, Cdouble, Ref{Cchar}), result, expected, factor, test_description)
end

@doc md"""
    gsl_test_int(result, expected, test_description) -> Cvoid

C signature:
`void gsl_test_int (int result, int expected, const char *test_description, ...)`
"""
function gsl_test_int(result, expected, test_description)
    ccall((:gsl_test_int, libgsl), Cvoid, (Cint, Cint, Ref{Cchar}), result, expected, test_description)
end

@doc md"""
    gsl_test_str(result, expected, test_description) -> Cvoid

C signature:
`void gsl_test_str (const char * result, const char * expected, const char *test_description, ...)`
"""
function gsl_test_str(result, expected, test_description)
    ccall((:gsl_test_str, libgsl), Cvoid, (Ref{Cchar}, Ref{Cchar}, Ref{Cchar}), result, expected, test_description)
end

@doc md"""
    gsl_test_verbose(verbose) -> Cvoid

C signature:
`void gsl_test_verbose (int verbose)`
"""
function gsl_test_verbose(verbose)
    ccall((:gsl_test_verbose, libgsl), Cvoid, (Cint,), verbose)
end

@doc md"""
    gsl_test_summary() -> Cint

C signature:
`int gsl_test_summary (void)`
"""
function gsl_test_summary()
    ccall((:gsl_test_summary, libgsl), Cint, (), )
end

