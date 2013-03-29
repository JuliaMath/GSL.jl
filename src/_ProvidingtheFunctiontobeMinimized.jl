#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 38.3 Providing the Function to be Minimized #
###############################################
export gsl_multifit_function, gsl_multifit_function_fdf


type gsl_multifit_function
    f::Ptr{Void}
    n::Csize_t
    p::Csize_t
    params::Ptr{Void}
end


type gsl_multifit_function_fdf
    f::Ptr{Void}
    df::Ptr{Void}
    fdf::Ptr{Void}
    n::Csize_t
    p::Csize_t
    params::Ptr{Void}
end
