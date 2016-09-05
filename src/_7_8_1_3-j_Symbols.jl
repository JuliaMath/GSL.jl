#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.8.1 3-j Symbols #
#####################
export sf_coupling_3j, sf_coupling_3j_e




# These routines compute the Wigner 3-j coefficient,                 (ja jb jc
# ma mb mc)  where the arguments are given in half-integer units, ja =
# two_ja/2, ma = two_ma/2, etc.
# 
#   Returns: Cdouble
function sf_coupling_3j(two_ja::Integer, two_jb::Integer, two_jc::Integer, two_ma::Integer, two_mb::Integer, two_mc::Integer)
    ccall( (:gsl_sf_coupling_3j, libgsl), Cdouble, (Cint, Cint, Cint,
        Cint, Cint, Cint), two_ja, two_jb, two_jc, two_ma, two_mb, two_mc )
end


# These routines compute the Wigner 3-j coefficient,                 (ja jb jc
# ma mb mc)  where the arguments are given in half-integer units, ja =
# two_ja/2, ma = two_ma/2, etc.
# 
#   Returns: Cint
function sf_coupling_3j_e(two_ja::Integer, two_jb::Integer, two_jc::Integer, two_ma::Integer, two_mb::Integer, two_mc::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_coupling_3j_e, libgsl), Cint, (Cint, Cint,
        Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja, two_jb, two_jc,
        two_ma, two_mb, two_mc, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
