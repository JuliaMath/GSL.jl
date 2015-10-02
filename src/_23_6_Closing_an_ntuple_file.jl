#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 23.6 Closing an ntuple file #
###############################
export ntuple_close


# This function closes the ntuple file ntuple and frees its associated
# allocated memory.
# 
#   Returns: Cint
function ntuple_close()
    ntuple = Ref{gsl_ntuple}()
    errno = ccall( (:gsl_ntuple_close, libgsl), Cint, (Ref{gsl_ntuple}, ),
        ntuple )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return ntuple[]
end
