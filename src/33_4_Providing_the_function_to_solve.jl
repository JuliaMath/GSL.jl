#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 33.4 Providing the function to solve #
########################################
export gsl_function, gsl_function_fdf

type gsl_function
    function_::Ptr{Void}
    params::Ptr{Void}
end

type gsl_function_fdf
    f::Ptr{Void}
    df::Ptr{Void}
    fdf::Ptr{Void}
    params::Ptr{Void}
end
