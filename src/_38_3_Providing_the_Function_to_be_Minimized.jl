#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################################
# 38.3 Providing the Function to be Minimized #
###############################################
export gsl_multifit_function, gsl_multifit_function_fdf


type gsl_multifit_function
    f::Ref{Void}
    n::Csize_t
    p::Csize_t
    params::Ref{Void}
end


type gsl_multifit_function_fdf
    f::Ref{Void}
    df::Ref{Void}
    fdf::Ref{Void}
    n::Csize_t
    p::Csize_t
    params::Ref{Void}
end
