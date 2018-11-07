#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_complex_float.h #######################################


@doc md"""
    permute_matrix_complex_float(p, A) -> Cint

C signature:
`int gsl_permute_matrix_complex_float (const gsl_permutation * p, gsl_matrix_complex_float * A)`
"""
function permute_matrix_complex_float(p, A)
    ccall((:gsl_permute_matrix_complex_float, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_complex_float}), p, A)
end

