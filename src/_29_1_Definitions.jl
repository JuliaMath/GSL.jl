#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################
# 29.1 Definitions #
####################
export gsl_cheb_series


type gsl_cheb_series
    c::Ref{Cdouble}
    order::Cint
    a::Cdouble
    b::Cdouble
end


