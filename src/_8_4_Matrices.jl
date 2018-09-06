#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
################
# 8.4 Matrices #
################
export gsl_matrix

mutable struct gsl_matrix
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end


