#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 38.3 Providing the Function to be Minimized #
###############################################
export gsl_multifit_function, gsl_multifit_function_fdf


mutable struct gsl_multifit_function
    f::Ptr{Nothing}
    n::Csize_t
    p::Csize_t
    params::Ptr{Nothing}
end


mutable struct gsl_multifit_function_fdf
    f::Ptr{Nothing}
    df::Ptr{Nothing}
    fdf::Ptr{Nothing}
    n::Csize_t
    p::Csize_t
    params::Ptr{Nothing}
end
