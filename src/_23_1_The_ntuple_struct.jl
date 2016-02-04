#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 23.1 The ntuple struct #
##########################
export gsl_ntuple


type gsl_ntuple
    file::Ref{Void}
    ntuple_data::Ref{Void}
    size::Csize_t
end
