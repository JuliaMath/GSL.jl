#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 22.13 The 2D histogram struct #
#################################
export gsl_histogram2d


type gsl_histogram2d
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end
