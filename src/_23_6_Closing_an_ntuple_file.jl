#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 23.6 Closing an ntuple file #
###############################
export gsl_ntuple_close


# This function closes the ntuple file ntuple and frees its associated
# allocated memory.
# 
#   Returns: Cint
function gsl_ntuple_close()
    ntuple = convert(Ptr{gsl_ntuple}, Array(gsl_ntuple, 1))
    gsl_errno = ccall( (:gsl_ntuple_close, :libgsl), Cint,
        (Ptr{gsl_ntuple}, ), ntuple )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(ntuple)[1]
end
