#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################
# 23.2 Creating ntuples #
#########################
export ntuple_create


# This function creates a new write-only ntuple file filename for ntuples of
# size size and returns a pointer to the newly created ntuple struct.  Any
# existing file with the same name is truncated to zero length and overwritten.
# A pointer to memory for the current ntuple row ntuple_data must be
# supplied—this is used to copy ntuples in and out of the file.
# 
#   Returns: Ptr{gsl_ntuple}
function ntuple_create{tA<:Char}(filename_in::Ptr{tA}, ntuple_data::Ptr{Void}, size::Integer)
    convert(Ptr{Cchar}, filename_in)
    ccall( (:gsl_ntuple_create, :libgsl), Ptr{gsl_ntuple}, (Ptr{Cchar},
        Ptr{Void}, Csize_t), filename, ntuple_data, size )
end
