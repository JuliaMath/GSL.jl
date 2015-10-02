#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 35.3 Providing the function to solve #
########################################
export gsl_multiroot_function, gsl_multiroot_function_fdf








type gsl_multiroot_function
    f::Ref{Void}
    n::Csize_t
    params::Ref{Void}
end


type gsl_multiroot_function_fdf
    f::Ref{Void}
    df::Ref{Void}
    fdf::Ref{Void}
    n::Csize_t
    params::Ref{Void}
end
