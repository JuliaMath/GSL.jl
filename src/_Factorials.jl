#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.19.2 Factorials #
#####################
export gsl_sf_fact, gsl_sf_fact_e, gsl_sf_doublefact, gsl_sf_doublefact_e,
       gsl_sf_lnfact, gsl_sf_lnfact_e, gsl_sf_lndoublefact,
       gsl_sf_lndoublefact_e, gsl_sf_choose, gsl_sf_choose_e, gsl_sf_lnchoose,
       gsl_sf_lnchoose_e, gsl_sf_taylorcoeff, gsl_sf_taylorcoeff_e


# These routines compute the factorial n!.  The factorial is related to the
# Gamma function by n! = \Gamma(n+1).  The maximum value of n such that n! is
# not considered an overflow is given by the macro GSL_SF_FACT_NMAX and is 170.
# 
#   exceptions: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_fact (n::Cuint)
    ccall( (:gsl_sf_fact, "libgsl"), Cdouble, (Cuint, ), n )
end


### Function uses unknown type; disabled
### # These routines compute the factorial n!.  The factorial is related to the
# Gamma function by n! = \Gamma(n+1).  The maximum value of n such that n! is
# not considered an overflow is given by the macro GSL_SF_FACT_NMAX and is 170.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_fact_e (n::Cuint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_fact_e, "libgsl"), Cint, (Cuint, Ptr{gsl_sf_result}),
###         n, result )
### end


# These routines compute the double factorial n!! = n(n-2)(n-4) \dots.  The
# maximum value of n such that n!! is not considered an overflow is given by
# the macro GSL_SF_DOUBLEFACT_NMAX and is 297.
# 
#   exceptions: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_doublefact (n::Cuint)
    ccall( (:gsl_sf_doublefact, "libgsl"), Cdouble, (Cuint, ), n )
end


### Function uses unknown type; disabled
### # These routines compute the double factorial n!! = n(n-2)(n-4) \dots.  The
# maximum value of n such that n!! is not considered an overflow is given by
# the macro GSL_SF_DOUBLEFACT_NMAX and is 297.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_doublefact_e (n::Cuint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_doublefact_e, "libgsl"), Cint, (Cuint,
###         Ptr{gsl_sf_result}), n, result )
### end


# These routines compute the logarithm of the factorial of n, \log(n!).  The
# algorithm is faster than computing \ln(\Gamma(n+1)) via gsl_sf_lngamma for n
# < 170, but defers for larger n.
# 
#   exceptions: none 
#   Returns: Cdouble
function gsl_sf_lnfact (n::Cuint)
    ccall( (:gsl_sf_lnfact, "libgsl"), Cdouble, (Cuint, ), n )
end


### Function uses unknown type; disabled
### # These routines compute the logarithm of the factorial of n, \log(n!).  The
# algorithm is faster than computing \ln(\Gamma(n+1)) via gsl_sf_lngamma for n
# < 170, but defers for larger n.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_lnfact_e (n::Cuint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_lnfact_e, "libgsl"), Cint, (Cuint, Ptr{gsl_sf_result}),
###         n, result )
### end


# These routines compute the logarithm of the double factorial of n, \log(n!!).
# 
#   exceptions: none 
#   Returns: Cdouble
function gsl_sf_lndoublefact (n::Cuint)
    ccall( (:gsl_sf_lndoublefact, "libgsl"), Cdouble, (Cuint, ), n )
end


### Function uses unknown type; disabled
### # These routines compute the logarithm of the double factorial of n, \log(n!!).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_lndoublefact_e (n::Cuint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_lndoublefact_e, "libgsl"), Cint, (Cuint,
###         Ptr{gsl_sf_result}), n, result )
### end


# These routines compute the combinatorial factor n choose m = n!/(m!(n-m)!)
# 
#   exceptions: GSL_EDOM, GSL_EOVRFLW 
#   Returns: Cdouble
function gsl_sf_choose (n::Cuint, m::Cuint)
    ccall( (:gsl_sf_choose, "libgsl"), Cdouble, (Cuint, Cuint), n, m )
end


### Function uses unknown type; disabled
### # These routines compute the combinatorial factor n choose m = n!/(m!(n-m)!)
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_choose_e (n::Cuint, m::Cuint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_choose_e, "libgsl"), Cint, (Cuint, Cuint,
###         Ptr{gsl_sf_result}), n, m, result )
### end


# These routines compute the logarithm of n choose m.  This is equivalent to
# the sum \log(n!) - \log(m!) - \log((n-m)!).
# 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_lnchoose (n::Cuint, m::Cuint)
    ccall( (:gsl_sf_lnchoose, "libgsl"), Cdouble, (Cuint, Cuint), n, m )
end


### Function uses unknown type; disabled
### # These routines compute the logarithm of n choose m.  This is equivalent to
# the sum \log(n!) - \log(m!) - \log((n-m)!).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_lnchoose_e (n::Cuint, m::Cuint, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_lnchoose_e, "libgsl"), Cint, (Cuint, Cuint,
###         Ptr{gsl_sf_result}), n, m, result )
### end


# These routines compute the Taylor coefficient x^n / n! for  x >= 0,  n >= 0.
# 
#   {$x \ge 0$} 
#   {$n \ge 0$} 
#   exceptions: GSL_EDOM, GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_taylorcoeff (n::Cint, x::Cdouble)
    ccall( (:gsl_sf_taylorcoeff, "libgsl"), Cdouble, (Cint, Cdouble), n, x
        )
end


### Function uses unknown type; disabled
### # These routines compute the Taylor coefficient x^n / n! for  x >= 0,  n >= 0.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_taylorcoeff_e (n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_taylorcoeff_e, "libgsl"), Cint, (Cint, Cdouble,
###         Ptr{gsl_sf_result}), n, x, result )
### end