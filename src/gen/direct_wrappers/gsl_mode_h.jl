#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_mode.h ###############################################################


@doc md"""
    GSL_MODE_PREC(mt) -> Cuint

C signature:
`unsigned int GSL_MODE_PREC(gsl_mode_t mt)`
"""
function GSL_MODE_PREC(mt)
    ccall((:GSL_MODE_PREC, libgsl), Cuint, (gsl_mode_t,), mt)
end

