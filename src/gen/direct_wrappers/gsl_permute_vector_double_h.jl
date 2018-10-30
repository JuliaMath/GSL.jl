#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_vector_double.h ##############################################


"""
    gsl_permute_vector(p, v) -> Cint

C signature:
`int gsl_permute_vector (const gsl_permutation * p, gsl_vector * v)`
"""
function gsl_permute_vector(p, v)
    ccall((:gsl_permute_vector, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector}), p, v)
end

"""
    gsl_permute_vector_inverse(p, v) -> Cint

C signature:
`int gsl_permute_vector_inverse (const gsl_permutation * p, gsl_vector * v)`
"""
function gsl_permute_vector_inverse(p, v)
    ccall((:gsl_permute_vector_inverse, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_vector}), p, v)
end

