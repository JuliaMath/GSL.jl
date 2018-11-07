#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_float.h ######################################################


@doc md"""
    permute_float(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_float (const size_t * p, float * data, const size_t stride, const size_t n)`
"""
function permute_float(p, data, stride, n)
    ccall((:gsl_permute_float, libgsl), Cint, (Ref{Csize_t}, Ref{Cfloat}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_float_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_float_inverse (const size_t * p, float * data, const size_t stride, const size_t n)`
"""
function permute_float_inverse(p, data, stride, n)
    ccall((:gsl_permute_float_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cfloat}, Csize_t, Csize_t), p, data, stride, n)
end

