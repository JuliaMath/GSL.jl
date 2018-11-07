#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_float.h ###############################################


@doc md"""
    permute_vector_float(p, v) -> Cint

C signature:
`int gsl_permute_vector_float (const gsl_permutation * p, gsl_vector_float * v)`
"""
function permute_vector_float(p, v)
    ccall((:gsl_permute_vector_float, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_float}), p, v)
end

@doc md"""
    permute_vector_float_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_float_inverse (const gsl_permutation * p, gsl_vector_float * v)`
"""
function permute_vector_float_inverse(p, v)
    ccall((:gsl_permute_vector_float_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector_float}), p, v)
end

