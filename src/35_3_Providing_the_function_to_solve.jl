#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 35.3 Providing the function to solve #
########################################
export gsl_multiroot_function, gsl_multiroot_function_fdf

mutable struct gsl_multiroot_function
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end

mutable struct gsl_multiroot_function_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end