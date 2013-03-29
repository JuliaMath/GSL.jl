#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##############
# 8.2 Blocks #
##############
export gsl_block


type gsl_block
    size::Csize_t
    data::Ptr{Cdouble}
end
