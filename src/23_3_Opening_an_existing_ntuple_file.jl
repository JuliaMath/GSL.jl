#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 23.3 Opening an existing ntuple file #
########################################
export ntuple_open


# This function opens an existing ntuple file filename for reading and returns
# a pointer to a corresponding ntuple struct. The ntuples in the file must have
# size size.  A pointer to memory for the current ntuple row ntuple_data must
# be supplied—this is used to copy ntuples in and out of the file.
#
#   Returns: Ref{gsl_ntuple}
function ntuple_open(filename_in::AbstractString, ntuple_data, size::Integer)
    output_ptr = ccall( (:gsl_ntuple_open, libgsl), Ref{gsl_ntuple},
        (Cstring, Ref{Void}, Csize_t), filename, ntuple_data, size )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
