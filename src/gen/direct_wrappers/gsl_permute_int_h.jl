#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_int.h ########################################################


@doc md"""
    permute_int(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_int (const size_t * p, int * data, const size_t stride, const size_t n)`
"""
function permute_int(p, data, stride, n)
    ccall((:gsl_permute_int, libgsl), Cint, (Ref{Csize_t}, Ref{Cint}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_int_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_int_inverse (const size_t * p, int * data, const size_t stride, const size_t n)`
"""
function permute_int_inverse(p, data, stride, n)
    ccall((:gsl_permute_int_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cint}, Csize_t, Csize_t), p, data, stride, n)
end

