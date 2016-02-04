#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 11.1 The Multiset struct #
############################
export gsl_multiset


type gsl_multiset
    n::Csize_t
    k::Csize_t
    data::Ref{Csize_t}
end
