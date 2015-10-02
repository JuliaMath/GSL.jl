#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 24.1 Interface #
##################
export gsl_monte_function








type gsl_monte_function
    f::Ref{Void}
    dim::Csize_t
    params::Ref{Void}
end
