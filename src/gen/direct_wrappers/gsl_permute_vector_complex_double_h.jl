#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_complex_double.h ######################################


@doc md"""
    permute_vector_complex(p, v) -> Cint

C signature:
`int gsl_permute_vector_complex (const gsl_permutation * p, gsl_vector_complex * v)`
"""
function permute_vector_complex(p, v)
    ccall((:gsl_permute_vector_complex, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_complex}), p, v)
end

@doc md"""
    permute_vector_complex_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_complex_inverse (const gsl_permutation * p, gsl_vector_complex * v)`
"""
function permute_vector_complex_inverse(p, v)
    ccall((:gsl_permute_vector_complex_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_complex}), p, v)
end

