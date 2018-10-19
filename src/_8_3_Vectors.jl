#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############
# 8.3 Vectors #
###############
export gsl_vector

mutable struct gsl_vector
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end
