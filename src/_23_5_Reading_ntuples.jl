#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 23.5 Reading ntuples #
########################
export gsl_ntuple_read


# This function reads the current row of the ntuple file for ntuple and stores
# the values in ntuple->data.
# 
#   Returns: Cint
function gsl_ntuple_read()
    ntuple = convert(Ptr{gsl_ntuple}, Array(gsl_ntuple, 1))
    gsl_errno = ccall( (:gsl_ntuple_read, :libgsl), Cint, (Ptr{gsl_ntuple},
        ), ntuple )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(ntuple)[1]
end
