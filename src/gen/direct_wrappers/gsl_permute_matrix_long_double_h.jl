#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_permute_matrix_long_double.h #########################################


@doc md"""
    permute_matrix_long_double(p, A) -> Cint

C signature:
`int gsl_permute_matrix_long_double (const gsl_permutation * p, gsl_matrix_long_double * A)`
"""
function permute_matrix_long_double(p, A)
    ccall((:gsl_permute_matrix_long_double, libgsl), Cint, (Ref{gsl_permutation}, Ref{gsl_matrix_long_double}), p, A)
end

