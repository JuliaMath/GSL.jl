#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_long.h #######################################################


@doc md"""
    permute_long(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_long (const size_t * p, long * data, const size_t stride, const size_t n)`
"""
function permute_long(p, data, stride, n)
    ccall((:gsl_permute_long, libgsl), Cint, (Ref{Csize_t}, Ref{Clong}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_long_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_long_inverse (const size_t * p, long * data, const size_t stride, const size_t n)`
"""
function permute_long_inverse(p, data, stride, n)
    ccall((:gsl_permute_long_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Clong}, Csize_t, Csize_t), p, data, stride, n)
end

