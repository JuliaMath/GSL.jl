#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 23.4 Writing ntuples #
########################
export gsl_ntuple_write, gsl_ntuple_bookdata


# This function writes the current ntuple ntuple->ntuple_data of size
# ntuple->size to the corresponding file.
# 
#   Returns: Cint
function gsl_ntuple_write (ntuple::Ptr{gsl_ntuple})
    ccall( (:gsl_ntuple_write, "libgsl"), Cint, (Ptr{gsl_ntuple}, ), ntuple
        )
end


# This function is a synonym for gsl_ntuple_write.
# 
#   Returns: Cint
function gsl_ntuple_bookdata (ntuple::Ptr{gsl_ntuple})
    ccall( (:gsl_ntuple_bookdata, "libgsl"), Cint, (Ptr{gsl_ntuple}, ),
        ntuple )
end