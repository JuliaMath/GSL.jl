#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.8.3 9-j Symbols #
#####################
export gsl_sf_coupling_9j, gsl_sf_coupling_9j_e


# These routines compute the Wigner 9-j coefficient,                 {ja jb jc
# jd je jf            jg jh ji}  where the arguments are given in half-integer
# units, ja = two_ja/2, ma = two_ma/2, etc.
# 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_coupling_9j (two_ja::Cint, two_jb::Cint, two_jc::Cint, two_jd::Cint, two_je::Cint, two_jf::Cint, two_jg::Cint, two_jh::Cint, two_ji::Cint)
    ccall( (:gsl_sf_coupling_9j, "libgsl"), Cdouble, (Cint, Cint, Cint,
        Cint, Cint, Cint, Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd,
        two_je, two_jf, two_jg, two_jh, two_ji )
end


### Function uses unknown type; disabled
### # These routines compute the Wigner 9-j coefficient,                 {ja jb jc
# jd je jf            jg jh ji}  where the arguments are given in half-integer
# units, ja = two_ja/2, ma = two_ma/2, etc.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_coupling_9j_e (two_ja::Cint, two_jb::Cint, two_jc::Cint, two_jd::Cint, two_je::Cint, two_jf::Cint, two_jg::Cint, two_jh::Cint, two_ji::Cint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_coupling_9j_e, "libgsl"), Cint, (Cint, Cint, Cint,
###         Cint, Cint, Cint, Cint, Cint, Cint, Ptr{gsl_sf_result}), two_ja,
###         two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result
###         )
### end