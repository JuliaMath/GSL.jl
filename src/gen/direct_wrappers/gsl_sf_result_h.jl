#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_sf_result.h ##########################################################


@doc md"""
    sf_result_smash_e(re, r) -> Cint

C signature:
`int gsl_sf_result_smash_e(const gsl_sf_result_e10 * re, gsl_sf_result * r)`
"""
function sf_result_smash_e(re, r)
    ccall((:gsl_sf_result_smash_e, libgsl), Cint, (Ref{gsl_sf_result_e10}, Ref{gsl_sf_result}), re, r)
end

