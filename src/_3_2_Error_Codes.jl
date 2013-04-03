#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###################
# 3.2 Error Codes #
###################
export strerror




# This function returns a pointer to a string describing the error code
# gsl_errno. For example,                 printf ("error: %s\n", gsl_strerror
# (status));  would print an error message like error: output range error for a
# status value of GSL_ERANGE.
# 
#   Returns: Ptr{Cchar}
function strerror(gsl_errno::Integer)
    output_string = ccall( (:gsl_strerror, :libgsl), Ptr{Cchar}, (Cint, ),
        gsl_errno )
    bytestring(convert(Ptr{Uint8}, output_string))
end
@vectorize_1arg Number strerror
