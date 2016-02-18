#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 35.3 Providing the function to solve #
########################################
export gsl_multiroot_function, gsl_multiroot_function_fdf

type gsl_multiroot_function
    f::Ptr{Void}
    n::Csize_t
    params::Ptr{Void}
end

type gsl_multiroot_function_fdf
    f::Ptr{Void}
    df::Ptr{Void}
    fdf::Ptr{Void}
    n::Csize_t
    params::Ptr{Void}
end