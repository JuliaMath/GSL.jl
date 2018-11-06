#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_complex_double.h ######################################


@doc md"""
    permute_matrix_complex(p, A) -> Cint

C signature:
`int gsl_permute_matrix_complex (const gsl_permutation * p, gsl_matrix_complex * A)`
"""
function permute_matrix_complex(p, A)
    ccall((:gsl_permute_matrix_complex, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_complex}), p, A)
end

