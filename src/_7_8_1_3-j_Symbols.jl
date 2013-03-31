#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.8.1 3-j Symbols #
#####################
export gsl_sf_coupling_3j, gsl_sf_coupling_3j_e




# These routines compute the Wigner 3-j coefficient,                 (ja jb jc
# ma mb mc)  where the arguments are given in half-integer units, ja =
# two_ja/2, ma = two_ma/2, etc.
# 
#   Returns: Cdouble
function gsl_sf_coupling_3j{gsl_int<:Integer}(two_ja::gsl_int, two_jb::gsl_int, two_jc::gsl_int, two_ma::gsl_int, two_mb::gsl_int, two_mc::gsl_int)
    ccall( (:gsl_sf_coupling_3j, :libgsl), Cdouble, (Cint, Cint, Cint,
        Cint, Cint, Cint), two_ja, two_jb, two_jc, two_ma, two_mb, two_mc )
end


# These routines compute the Wigner 3-j coefficient,                 (ja jb jc
# ma mb mc)  where the arguments are given in half-integer units, ja =
# two_ja/2, ma = two_ma/2, etc.
# 
#   Returns: Cint
function gsl_sf_coupling_3j_e{gsl_int<:Integer}(two_ja::gsl_int, two_jb::gsl_int, two_jc::gsl_int, two_ma::gsl_int, two_mb::gsl_int, two_mc::gsl_int)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_coupling_3j_e, :libgsl), Cint, (Cint, Cint,
        Cint, Cint, Cint, Cint, Ptr{gsl_sf_result}), two_ja, two_jb, two_jc,
        two_ma, two_mb, two_mc, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
