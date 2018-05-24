#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 36.4 Providing a function to minimize #
#########################################
export gsl_multimin_function_fdf, gsl_multimin_function

mutable struct gsl_multimin_function_fdf
    f::Ptr{Nothing}
    df::Ptr{Nothing}
    fdf::Ptr{Nothing}
    n::Csize_t
    params::Ptr{Nothing}
end

mutable struct gsl_multimin_function
    f::Ptr{Nothing}
    n::Csize_t
    params::Ptr{Nothing}
end
