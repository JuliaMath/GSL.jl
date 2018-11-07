#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_long.h ################################################


@doc md"""
    permute_vector_long(p, v) -> Cint

C signature:
`int gsl_permute_vector_long (const gsl_permutation * p, gsl_vector_long * v)`
"""
function permute_vector_long(p, v)
    ccall((:gsl_permute_vector_long, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_long}), p, v)
end

@doc md"""
    permute_vector_long_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_long_inverse (const gsl_permutation * p, gsl_vector_long * v)`
"""
function permute_vector_long_inverse(p, v)
    ccall((:gsl_permute_vector_long_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_long}), p, v)
end

