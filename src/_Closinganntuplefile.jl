#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 23.6 Closing an ntuple file #
###############################
export gsl_ntuple_close


### Function uses unknown type; disabled
### # This function closes the ntuple file ntuple and frees its associated
# allocated memory.
# 
### #   Returns: Cint
### #XXX Unknown input type ntuple::Ptr{gsl_ntuple}
### function gsl_ntuple_close (ntuple::Ptr{gsl_ntuple})
###     ccall( (:gsl_ntuple_close, "libgsl"), Cint, (Ptr{gsl_ntuple}, ), ntuple
###         )
### end