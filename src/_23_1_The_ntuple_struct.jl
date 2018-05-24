#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 23.1 The ntuple struct #
##########################
export gsl_ntuple


mutable struct gsl_ntuple
    file::Ptr{Nothing}
    ntuple_data::Ptr{Nothing}
    size::Csize_t
end
