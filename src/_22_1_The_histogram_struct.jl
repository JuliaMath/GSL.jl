#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#############################
# 22.1 The histogram struct #
#############################
export gsl_histogram


type gsl_histogram
    n::Csize_t
    range::Ref{Cdouble}
    bin::Ref{Cdouble}
end
