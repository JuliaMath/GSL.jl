#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 10.1 The Combination struct #
###############################
export gsl_combination

mutable struct gsl_combination
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
