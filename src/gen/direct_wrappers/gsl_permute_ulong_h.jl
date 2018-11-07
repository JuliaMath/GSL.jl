#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_ulong.h ######################################################


@doc md"""
    permute_ulong(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_ulong (const size_t * p, unsigned long * data, const size_t stride, const size_t n)`
"""
function permute_ulong(p, data, stride, n)
    ccall((:gsl_permute_ulong, libgsl), Cint, (Ref{Csize_t}, Ref{Culong}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_ulong_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_ulong_inverse (const size_t * p, unsigned long * data, const size_t stride, const size_t n)`
"""
function permute_ulong_inverse(p, data, stride, n)
    ccall((:gsl_permute_ulong_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Culong}, Csize_t, Csize_t), p, data, stride, n)
end

