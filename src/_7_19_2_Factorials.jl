#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#####################
# 7.19.2 Factorials #
#####################
export sf_fact, sf_fact_e, sf_doublefact, sf_doublefact_e, sf_lnfact,
       sf_lnfact_e, sf_lndoublefact, sf_lndoublefact_e, sf_choose, sf_choose_e,
       sf_lnchoose, sf_lnchoose_e, sf_taylorcoeff, sf_taylorcoeff_e


# These routines compute the factorial n!.  The factorial is related to the
# Gamma function by n! = \Gamma(n+1).  The maximum value of n such that n! is
# not considered an overflow is given by the macro GSL_SF_FACT_NMAX and is 170.
# 
#   Returns: Cdouble
function sf_fact(n::Integer)
    ccall( (:gsl_sf_fact, libgsl), Cdouble, (Cuint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_fact


# These routines compute the factorial n!.  The factorial is related to the
# Gamma function by n! = \Gamma(n+1).  The maximum value of n such that n! is
# not considered an overflow is given by the macro GSL_SF_FACT_NMAX and is 170.
# 
#   Returns: Cint
function sf_fact_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fact_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fact_e


# These routines compute the double factorial n!! = n(n-2)(n-4) \dots.  The
# maximum value of n such that n!! is not considered an overflow is given by
# the macro GSL_SF_DOUBLEFACT_NMAX and is 297.
# 
#   Returns: Cdouble
function sf_doublefact(n::Integer)
    ccall( (:gsl_sf_doublefact, libgsl), Cdouble, (Cuint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_doublefact


# These routines compute the double factorial n!! = n(n-2)(n-4) \dots.  The
# maximum value of n such that n!! is not considered an overflow is given by
# the macro GSL_SF_DOUBLEFACT_NMAX and is 297.
# 
#   Returns: Cint
function sf_doublefact_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_doublefact_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_doublefact_e


# These routines compute the logarithm of the factorial of n, \log(n!).  The
# algorithm is faster than computing \ln(\Gamma(n+1)) via gsl_sf_lngamma for n
# < 170, but defers for larger n.
# 
#   Returns: Cdouble
function sf_lnfact(n::Integer)
    ccall( (:gsl_sf_lnfact, libgsl), Cdouble, (Cuint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_lnfact


# These routines compute the logarithm of the factorial of n, \log(n!).  The
# algorithm is faster than computing \ln(\Gamma(n+1)) via gsl_sf_lngamma for n
# < 170, but defers for larger n.
# 
#   Returns: Cint
function sf_lnfact_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lnfact_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_lnfact_e


# These routines compute the logarithm of the double factorial of n, \log(n!!).
# 
#   Returns: Cdouble
function sf_lndoublefact(n::Integer)
    ccall( (:gsl_sf_lndoublefact, libgsl), Cdouble, (Cuint, ), n )
end
Compat.@dep_vectorize_1arg Number sf_lndoublefact


# These routines compute the logarithm of the double factorial of n, \log(n!!).
# 
#   Returns: Cint
function sf_lndoublefact_e(n::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lndoublefact_e, libgsl), Cint, (Cuint,
        Ref{gsl_sf_result}), n, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_lndoublefact_e


# These routines compute the combinatorial factor n choose m = n!/(m!(n-m)!)
# 
#   Returns: Cdouble
function sf_choose(n::Integer, m::Integer)
    ccall( (:gsl_sf_choose, libgsl), Cdouble, (Cuint, Cuint), n, m )
end
Compat.@dep_vectorize_2arg Number sf_choose


# These routines compute the combinatorial factor n choose m = n!/(m!(n-m)!)
# 
#   Returns: Cint
function sf_choose_e(n::Integer, m::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_choose_e, libgsl), Cint, (Cuint, Cuint,
        Ref{gsl_sf_result}), n, m, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_choose_e


# These routines compute the logarithm of n choose m.  This is equivalent to
# the sum \log(n!) - \log(m!) - \log((n-m)!).
# 
#   Returns: Cdouble
function sf_lnchoose(n::Integer, m::Integer)
    ccall( (:gsl_sf_lnchoose, libgsl), Cdouble, (Cuint, Cuint), n, m )
end
Compat.@dep_vectorize_2arg Number sf_lnchoose


# These routines compute the logarithm of n choose m.  This is equivalent to
# the sum \log(n!) - \log(m!) - \log((n-m)!).
# 
#   Returns: Cint
function sf_lnchoose_e(n::Integer, m::Integer)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_lnchoose_e, libgsl), Cint, (Cuint, Cuint,
        Ref{gsl_sf_result}), n, m, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_lnchoose_e


# These routines compute the Taylor coefficient x^n / n! for  x >= 0,  n >= 0.
# 
#   Returns: Cdouble
function sf_taylorcoeff(n::Integer, x::Real)
    ccall( (:gsl_sf_taylorcoeff, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
Compat.@dep_vectorize_2arg Number sf_taylorcoeff


# These routines compute the Taylor coefficient x^n / n! for  x >= 0,  n >= 0.
# 
#   Returns: Cint
function sf_taylorcoeff_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_taylorcoeff_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_taylorcoeff_e
