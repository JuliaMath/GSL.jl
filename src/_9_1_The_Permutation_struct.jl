#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############################
# 9.1 The Permutation struct #
##############################
export gsl_permutation

mutable struct gsl_permutation
    size::Csize_t
    data::Ptr{Csize_t}
end
