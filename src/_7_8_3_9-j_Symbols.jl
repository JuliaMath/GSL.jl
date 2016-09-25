#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.8.3 9-j Symbols #
#####################
export sf_coupling_9j, sf_coupling_9j_e




# These routines compute the Wigner 9-j coefficient,                 {ja jb jc
# jd je jf            jg jh ji}  where the arguments are given in half-integer
# units, ja = two_ja/2, ma = two_ma/2, etc.
# 
#   Returns: Cdouble
function sf_coupling_9j(two_ja::Integer, two_jb::Integer, two_jc::Integer, two_jd::Integer, two_je::Integer, two_jf::Integer, two_jg::Integer, two_jh::Integer, two_ji::Integer)
    ccall( (:gsl_sf_coupling_9j, libgsl), Cdouble, (Cint, Cint, Cint,
        Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd,
        two_je, two_jf, two_jg, two_jh, two_ji )
end


# These routines compute the Wigner 9-j coefficient,                 {ja jb jc
# jd je jf            jg jh ji}  where the arguments are given in half-integer
# units, ja = two_ja/2, ma = two_ma/2, etc.
# 
#   Returns: Cint
function sf_coupling_9j_e(two_ja::Integer, two_jb::Integer, two_jc::Integer, two_jd::Integer, two_je::Integer, two_jf::Integer, two_jg::Integer, two_jh::Integer, two_ji::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_coupling_9j_e, libgsl), Cint, (Cint, Cint,
        Cint, Cint, Cint, Cint, Cint, Cint, Cint, Ref{gsl_sf_result}), two_ja,
        two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result
        )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
