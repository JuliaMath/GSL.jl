#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#################################
# 7.21 Hypergeometric Functions #
#################################
export gsl_sf_hyperg_0F1, gsl_sf_hyperg_0F1_e, gsl_sf_hyperg_1F1_int,
       gsl_sf_hyperg_1F1_int_e, gsl_sf_hyperg_1F1, gsl_sf_hyperg_1F1_e,
       gsl_sf_hyperg_U_int, gsl_sf_hyperg_U_int_e, gsl_sf_hyperg_U_int_e10_e,
       gsl_sf_hyperg_U, gsl_sf_hyperg_U_e, gsl_sf_hyperg_U_e10_e,
       gsl_sf_hyperg_2F1, gsl_sf_hyperg_2F1_e, gsl_sf_hyperg_2F1_conj,
       gsl_sf_hyperg_2F1_conj_e, gsl_sf_hyperg_2F1_renorm,
       gsl_sf_hyperg_2F1_renorm_e, gsl_sf_hyperg_2F1_conj_renorm,
       gsl_sf_hyperg_2F1_conj_renorm_e, gsl_sf_hyperg_2F0, gsl_sf_hyperg_2F0_e


# These routines compute the hypergeometric function  0F1(c,x).
# 
#   {${}_0F_1(c,x)$} 
#   It is related to Bessel functions 
#   0F1[c,x] = 
#   Gamma[c]    x^(1/2(1-c)) I_(c-1)(2 Sqrt[x]) 
#   Gamma[c] (-x)^(1/2(1-c)) J_(c-1)(2 Sqrt[-x]) 
#   exceptions: GSL_EOVRFLW, GSL_EUNDRFLW 
#   Returns: Cdouble
function gsl_sf_hyperg_0F1 (c::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_0F1, "libgsl"), Cdouble, (Cdouble, Cdouble), c,
        x )
end


### Function uses unknown type; disabled
### # These routines compute the hypergeometric function  0F1(c,x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_0F1_e (c::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_0F1_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Ptr{gsl_sf_result}), c, x, result )
### end


# These routines compute the confluent hypergeometric function  1F1(m,n,x) =
# M(m,n,x) for integer parameters m, n.
# 
#   {${}_1F_1(m,n,x) = M(m,n,x)$} 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_1F1_int (m::Cint, n::Cint, x::Cdouble)
    ccall( (:gsl_sf_hyperg_1F1_int, "libgsl"), Cdouble, (Cint, Cint,
        Cdouble), m, n, x )
end


### Function uses unknown type; disabled
### # These routines compute the confluent hypergeometric function  1F1(m,n,x) =
# M(m,n,x) for integer parameters m, n.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_1F1_int_e (m::Cint, n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_1F1_int_e, "libgsl"), Cint, (Cint, Cint,
###         Cdouble, Ptr{gsl_sf_result}), m, n, x, result )
### end


# These routines compute the confluent hypergeometric function  1F1(a,b,x) =
# M(a,b,x) for general parameters a, b.
# 
#   {${}_1F_1(a,b,x) = M(a,b,x)$} 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_1F1 (a::Cdouble, b::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_1F1, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end


### Function uses unknown type; disabled
### # These routines compute the confluent hypergeometric function  1F1(a,b,x) =
# M(a,b,x) for general parameters a, b.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_1F1_e (a::Cdouble, b::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_1F1_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
### end


# These routines compute the confluent hypergeometric function U(m,n,x) for
# integer parameters m, n.
# 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_U_int (m::Cint, n::Cint, x::Cdouble)
    ccall( (:gsl_sf_hyperg_U_int, "libgsl"), Cdouble, (Cint, Cint,
        Cdouble), m, n, x )
end


### Function uses unknown type; disabled
### # These routines compute the confluent hypergeometric function U(m,n,x) for
# integer parameters m, n.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_U_int_e (m::Cint, n::Cint, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_U_int_e, "libgsl"), Cint, (Cint, Cint, Cdouble,
###         Ptr{gsl_sf_result}), m, n, x, result )
### end


### Function uses unknown type; disabled
### # This routine computes the confluent hypergeometric function U(m,n,x) for
# integer parameters m, n using the gsl_sf_result_e10 type to return a result
# with extended range.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result_e10}
### function gsl_sf_hyperg_U_int_e10_e (m::Cint, n::Cint, x::Cdouble, result::Ptr{gsl_sf_result_e10})
###     ccall( (:gsl_sf_hyperg_U_int_e10_e, "libgsl"), Cint, (Cint, Cint,
###         Cdouble, Ptr{gsl_sf_result_e10}), m, n, x, result )
### end


# These routines compute the confluent hypergeometric function U(a,b,x).
# 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_U (a::Cdouble, b::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_U, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end


### Function uses unknown type; disabled
### # These routines compute the confluent hypergeometric function U(a,b,x).
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_U_e (a::Cdouble, b::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_U_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
### end


### Function uses unknown type; disabled
### # This routine computes the confluent hypergeometric function U(a,b,x) using
# the gsl_sf_result_e10 type to return a result with extended range.
# 
### #   exceptions: 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result_e10}
### function gsl_sf_hyperg_U_e10_e (a::Cdouble, b::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result_e10})
###     ccall( (:gsl_sf_hyperg_U_e10_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Ptr{gsl_sf_result_e10}), a, b, x, result )
### end


# These routines compute the Gauss hypergeometric function  2F1(a,b,c,x) =
# F(a,b,c,x) for |x| < 1.          If the arguments (a,b,c,x) are too close to
# a singularity then the function can return the error code GSL_EMAXITER when
# the series approximation converges too slowly.  This occurs in the region of
# x=1, c - a - b = m for integer m.
# 
#   {${}_2F_1(a,b,c,x) = F(a,b,c,x)$} 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1 (a::Cdouble, b::Cdouble, c::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_2F1, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble, Cdouble), a, b, c, x )
end


### Function uses unknown type; disabled
### # These routines compute the Gauss hypergeometric function  2F1(a,b,c,x) =
# F(a,b,c,x) for |x| < 1.          If the arguments (a,b,c,x) are too close to
# a singularity then the function can return the error code GSL_EMAXITER when
# the series approximation converges too slowly.  This occurs in the region of
# x=1, c - a - b = m for integer m.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_2F1_e (a::Cdouble, b::Cdouble, c::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_2F1_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, c, x, result )
### end


# These routines compute the Gauss hypergeometric function  2F1(a_R + i a_I,
# a_R - i a_I, c, x) with complex parameters for |x| < 1.
# 
#   {${}_2F_1(a_R + i a_I, aR - i aI, c, x)$} 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1_conj (aR::Cdouble, aI::Cdouble, c::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_2F1_conj, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble, Cdouble), aR, aI, c, x )
end


### Function uses unknown type; disabled
### # These routines compute the Gauss hypergeometric function  2F1(a_R + i a_I,
# a_R - i a_I, c, x) with complex parameters for |x| < 1.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_2F1_conj_e (aR::Cdouble, aI::Cdouble, c::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_2F1_conj_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Cdouble, Ptr{gsl_sf_result}), aR, aI, c, x, result )
### end


# These routines compute the renormalized Gauss hypergeometric function
# 2F1(a,b,c,x) / \Gamma(c) for |x| < 1.
# 
#   {${}_2F_1(a,b,c,x) / \Gamma(c)$} 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1_renorm (a::Cdouble, b::Cdouble, c::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_2F1_renorm, "libgsl"), Cdouble, (Cdouble,
        Cdouble, Cdouble, Cdouble), a, b, c, x )
end


### Function uses unknown type; disabled
### # These routines compute the renormalized Gauss hypergeometric function
# 2F1(a,b,c,x) / \Gamma(c) for |x| < 1.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_2F1_renorm_e (a::Cdouble, b::Cdouble, c::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_2F1_renorm_e, "libgsl"), Cint, (Cdouble,
###         Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, c, x, result )
### end


# These routines compute the renormalized Gauss hypergeometric function
# 2F1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c) for |x| < 1.
# 
#   {${}_2F_1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c)$} 
#   exceptions: 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1_conj_renorm (aR::Cdouble, aI::Cdouble, c::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_2F1_conj_renorm, "libgsl"), Cdouble, (Cdouble,
        Cdouble, Cdouble, Cdouble), aR, aI, c, x )
end


### Function uses unknown type; disabled
### # These routines compute the renormalized Gauss hypergeometric function
# 2F1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c) for |x| < 1.
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_2F1_conj_renorm_e (aR::Cdouble, aI::Cdouble, c::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_2F1_conj_renorm_e, "libgsl"), Cint, (Cdouble,
###         Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), aR, aI, c, x, result )
### end


# These routines compute the hypergeometric function  2F0(a,b,x).  The series
# representation is a divergent hypergeometric series.  However, for x < 0 we
# have  2F0(a,b,x) = (-1/x)^a U(a,1+a-b,-1/x)
# 
#   {${}_2F_0(a,b,x)$} 
#   {${}_2F_0(a,b,x) = (-1/x)^a U(a,1+a-b,-1/x)$} 
#   exceptions: GSL_EDOM 
#   Returns: Cdouble
function gsl_sf_hyperg_2F0 (a::Cdouble, b::Cdouble, x::Cdouble)
    ccall( (:gsl_sf_hyperg_2F0, "libgsl"), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end


### Function uses unknown type; disabled
### # These routines compute the hypergeometric function  2F0(a,b,x).  The series
# representation is a divergent hypergeometric series.  However, for x < 0 we
# have  2F0(a,b,x) = (-1/x)^a U(a,1+a-b,-1/x)
# 
### #   Returns: Cint
### #XXX Unknown input type result::Ptr{gsl_sf_result}
### function gsl_sf_hyperg_2F0_e (a::Cdouble, b::Cdouble, x::Cdouble, result::Ptr{gsl_sf_result})
###     ccall( (:gsl_sf_hyperg_2F0_e, "libgsl"), Cint, (Cdouble, Cdouble,
###         Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
### end