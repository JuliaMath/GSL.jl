#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_short.h ###############################################


@doc md"""
    permute_vector_short(p, v) -> Cint

C signature:
`int gsl_permute_vector_short (const gsl_permutation * p, gsl_vector_short * v)`
"""
function permute_vector_short(p, v)
    ccall((:gsl_permute_vector_short, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_short}), p, v)
end

@doc md"""
    permute_vector_short_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_short_inverse (const gsl_permutation * p, gsl_vector_short * v)`
"""
function permute_vector_short_inverse(p, v)
    ccall((:gsl_permute_vector_short_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_short}), p, v)
end

