#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_uint.h #######################################################


@doc md"""
    permute_uint(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_uint (const size_t * p, unsigned int * data, const size_t stride, const size_t n)`
"""
function permute_uint(p, data, stride, n)
    ccall((:gsl_permute_uint, libgsl), Cint, (Ref{Csize_t}, Ref{Cuint}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_uint_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_uint_inverse (const size_t * p, unsigned int * data, const size_t stride, const size_t n)`
"""
function permute_uint_inverse(p, data, stride, n)
    ccall((:gsl_permute_uint_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cuint}, Csize_t, Csize_t), p, data, stride, n)
end

