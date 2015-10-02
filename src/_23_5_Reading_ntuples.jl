#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 23.5 Reading ntuples #
########################
export ntuple_read


# This function reads the current row of the ntuple file for ntuple and stores
# the values in ntuple->data.
# 
#   Returns: Cint
function ntuple_read()
    ntuple = Ref{gsl_ntuple}()
    errno = ccall( (:gsl_ntuple_read, libgsl), Cint, (Ref{gsl_ntuple}, ),
        ntuple )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return ntuple[]
end
