#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_message.h ############################################################


@doc md"""
    message(message, file, line, mask) -> Cvoid

C signature:
`void gsl_message(const char * message, const char * file, int line, unsigned int mask)`
"""
function message(message, file, line, mask)
    ccall((:gsl_message, libgsl), Cvoid, (Ref{Cchar}, Ref{Cchar}, Cint, Cuint), message, file, line, mask)
end

