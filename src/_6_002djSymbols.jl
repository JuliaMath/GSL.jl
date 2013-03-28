#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.8.2 6-j Symbols #
#####################
export gsl_sf_coupling_6j, gsl_sf_coupling_6j_e


# These routines compute the Wigner 6-j coefficient,                 {ja jb jc
# jd je jf}  where the arguments are given in half-integer units, ja =
# two_ja/2, ma = two_ma/2, etc.
# 
#   Exceptional Return Values: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_coupling_6j (two_ja::Cint, two_jb::Cint, two_jc::Cint, two_jd::Cint, two_je::Cint, two_jf::Cint)
    ccall( (:gsl_sf_coupling_6j, "libgsl"), Cdouble, (Cint, Cint, Cint,
        Cint, Cint, Cint), two_ja, two_jb, two_jc, two_jd, two_je, two_jf )
end


### Function uses unknown type; disabled
### # These routines compute the Wigner 6-j coefficient,                 {ja jb jc
# jd je jf}  where the arguments are given in half-integer units, ja =
# two_ja/2, ma = two_ma/2, etc.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_coupling_6j_e (two_ja::Cint, two_jb::Cint, two_jc::Cint, two_jd::Cint, two_je::Cint, two_jf::Cint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_coupling_6j_e, "libgsl"), Cint, (Cint, Cint, Cint,
###         Cint, Cint, Cint, Ptr{gsl_sf_result}), two_ja, two_jb, two_jc, two_jd,
###         two_je, two_jf, result )
### end