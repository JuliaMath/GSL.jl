#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############
# 8.3 Vectors #
###############
export gsl_vector


type gsl_vector
    size::Csize_t
    stride::Csize_t
    data::Ref{Cdouble}
    block::Ref{gsl_block}
    owner::Cint
end
