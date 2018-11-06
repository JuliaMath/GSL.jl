#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_int.h #################################################


@doc md"""
    permute_vector_int(p, v) -> Cint

C signature:
`int gsl_permute_vector_int (const gsl_permutation * p, gsl_vector_int * v)`
"""
function permute_vector_int(p, v)
    ccall((:gsl_permute_vector_int, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_int}), p, v)
end

@doc md"""
    permute_vector_int_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_int_inverse (const gsl_permutation * p, gsl_vector_int * v)`
"""
function permute_vector_int_inverse(p, v)
    ccall((:gsl_permute_vector_int_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_int}), p, v)
end

