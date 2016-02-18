#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 24.1 Interface #
##################
export gsl_monte_function

type gsl_monte_function
    f::Ptr{Void}
    dim::Csize_t
    params::Ptr{Void}
end
