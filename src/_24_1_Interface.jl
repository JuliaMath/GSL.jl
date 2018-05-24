#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 24.1 Interface #
##################
export gsl_monte_function

mutable struct gsl_monte_function
    f::Ptr{Nothing}
    dim::Csize_t
    params::Ptr{Nothing}
end
