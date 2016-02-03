#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 36.4 Providing a function to minimize #
#########################################
export gsl_multimin_function_fdf, gsl_multimin_function

type gsl_multimin_function_fdf
    f::Ptr{Void}
    df::Ptr{Void}
    fdf::Ptr{Void}
    n::Csize_t
    params::Ptr{Void}
end

type gsl_multimin_function
    f::Ptr{Void}
    n::Csize_t
    params::Ptr{Void}
end
