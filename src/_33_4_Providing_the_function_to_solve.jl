#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 33.4 Providing the function to solve #
########################################
export gsl_function, gsl_function_fdf

mutable struct gsl_function
    function_::Ptr{Nothing}
    params::Ptr{Nothing}
end

mutable struct gsl_function_fdf
    f::Ptr{Nothing}
    df::Ptr{Nothing}
    fdf::Ptr{Nothing}
    params::Ptr{Nothing}
end
