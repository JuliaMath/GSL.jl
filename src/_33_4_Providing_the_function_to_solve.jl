#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 33.4 Providing the function to solve #
########################################
export gsl_function, gsl_function_fdf

mutable struct gsl_function
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

mutable struct gsl_function_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
