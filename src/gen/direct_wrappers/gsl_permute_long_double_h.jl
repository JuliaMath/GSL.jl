#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_long_double.h ################################################


@doc md"""
    permute_long_double(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_long_double (const size_t * p, long double * data, const size_t stride, const size_t n)`
"""
function permute_long_double(p, data, stride, n)
    ccall((:gsl_permute_long_double, libgsl), Cint, (Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_long_double_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_long_double_inverse (const size_t * p, long double * data, const size_t stride, const size_t n)`
"""
function permute_long_double_inverse(p, data, stride, n)
    ccall((:gsl_permute_long_double_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cdouble}, Csize_t, Csize_t), p, data, stride, n)
end

