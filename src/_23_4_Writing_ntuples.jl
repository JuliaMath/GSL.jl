#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 23.4 Writing ntuples #
########################
export ntuple_write, ntuple_bookdata


# This function writes the current ntuple ntuple->ntuple_data of size
# ntuple->size to the corresponding file.
# 
#   Returns: Cint
function ntuple_write()
    ntuple = convert(Ptr{gsl_ntuple}, Array(gsl_ntuple, 1))
    errno = ccall( (:gsl_ntuple_write, :libgsl), Cint, (Ptr{gsl_ntuple}, ),
        ntuple )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(ntuple)
end


# This function is a synonym for gsl_ntuple_write.
# 
#   Returns: Cint
function ntuple_bookdata()
    ntuple = convert(Ptr{gsl_ntuple}, Array(gsl_ntuple, 1))
    errno = ccall( (:gsl_ntuple_bookdata, :libgsl), Cint, (Ptr{gsl_ntuple},
        ), ntuple )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(ntuple)
end
