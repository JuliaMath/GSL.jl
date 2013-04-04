#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 5.1 Representation of complex numbers #
#########################################
export gsl_complex


type gsl_complex
    dat::Ptr{Cdouble}
end


