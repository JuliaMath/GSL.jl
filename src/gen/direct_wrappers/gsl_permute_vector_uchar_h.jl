#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_uchar.h ###############################################


@doc md"""
    permute_vector_uchar(p, v) -> Cint

C signature:
`int gsl_permute_vector_uchar (const gsl_permutation * p, gsl_vector_uchar * v)`
"""
function permute_vector_uchar(p, v)
    ccall((:gsl_permute_vector_uchar, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_uchar}), p, v)
end

@doc md"""
    permute_vector_uchar_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_uchar_inverse (const gsl_permutation * p, gsl_vector_uchar * v)`
"""
function permute_vector_uchar_inverse(p, v)
    ccall((:gsl_permute_vector_uchar_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_uchar}), p, v)
end

