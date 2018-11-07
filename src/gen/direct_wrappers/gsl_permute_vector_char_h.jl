#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_char.h ################################################


@doc md"""
    permute_vector_char(p, v) -> Cint

C signature:
`int gsl_permute_vector_char (const gsl_permutation * p, gsl_vector_char * v)`
"""
function permute_vector_char(p, v)
    ccall((:gsl_permute_vector_char, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_char}), p, v)
end

@doc md"""
    permute_vector_char_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_char_inverse (const gsl_permutation * p, gsl_vector_char * v)`
"""
function permute_vector_char_inverse(p, v)
    ccall((:gsl_permute_vector_char_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_char}), p, v)
end

