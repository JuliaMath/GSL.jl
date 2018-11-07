#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_char.h #######################################################


@doc md"""
    permute_char(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_char (const size_t * p, char * data, const size_t stride, const size_t n)`
"""
function permute_char(p, data, stride, n)
    ccall((:gsl_permute_char, libgsl), Cint, (Ref{Csize_t}, Ref{Cchar}, Csize_t, Csize_t), p, data, stride, n)
end

@doc md"""
    permute_char_inverse(p, data, stride, n) -> Cint

C signature:
`int gsl_permute_char_inverse (const size_t * p, char * data, const size_t stride, const size_t n)`
"""
function permute_char_inverse(p, data, stride, n)
    ccall((:gsl_permute_char_inverse, libgsl), Cint, (Ref{Csize_t}, Ref{Cchar}, Csize_t, Csize_t), p, data, stride, n)
end

