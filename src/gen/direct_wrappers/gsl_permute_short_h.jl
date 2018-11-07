#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_short.h ######################################################


@doc md"""
    permute_short(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_short (const size_t * p, short * data, const size_t stride, const size_t n)`
"""
function permute_short(p, data, stride, n)
    ccall((:gsl_permute_short, libgsl), Cint, (Ref{Csize_t}, Ref{Cshort}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_short_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_short_inverse (const size_t * p, short * data, const size_t stride, const size_t n)`
"""
function permute_short_inverse(p, data, stride, n)
    ccall((:gsl_permute_short_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cshort}, Csize_t, Csize_t), p, data, stride, n)
end

