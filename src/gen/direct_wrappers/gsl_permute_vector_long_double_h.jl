#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_long_double.h #########################################


@doc md"""
    permute_vector_long_double(p, v) -> Cint

C signature:
`int gsl_permute_vector_long_double (const gsl_permutation * p, gsl_vector_long_double * v)`
"""
function permute_vector_long_double(p, v)
    ccall((:gsl_permute_vector_long_double, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_long_double}), p, v)
end

@doc md"""
    permute_vector_long_double_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_long_double_inverse (const gsl_permutation * p, gsl_vector_long_double * v)`
"""
function permute_vector_long_double_inverse(p, v)
    ccall((:gsl_permute_vector_long_double_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_long_double}), p, v)
end

