#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_ushort.h #####################################################


@doc md"""
    permute_ushort(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_ushort (const size_t * p, unsigned short * data, const size_t stride, const size_t n)`
"""
function permute_ushort(p, data, stride, n)
    ccall((:gsl_permute_ushort, libgsl), Cint, (Ref{Csize_t}, Ref{Cushort}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_ushort_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_ushort_inverse (const size_t * p, unsigned short * data, const size_t stride, const size_t n)`
"""
function permute_ushort_inverse(p, data, stride, n)
    ccall((:gsl_permute_ushort_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cushort}, Csize_t, Csize_t), p, data, stride, n)
end

