#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 7.16.2 Relative Exponential Functions #
#########################################
export sf_expm1, sf_expm1_e, sf_exprel, sf_exprel_e, sf_exprel_2,
       sf_exprel_2_e, sf_exprel_n, sf_exprel_n_e




# These routines compute the quantity \exp(x)-1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cdouble
function sf_expm1(x::Real)
    ccall( (:gsl_sf_expm1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_expm1


# These routines compute the quantity \exp(x)-1 using an algorithm that is
# accurate for small x.
# 
#   Returns: Cint
function sf_expm1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_expm1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_expm1_e


# These routines compute the quantity (\exp(x)-1)/x using an algorithm that is
# accurate for small x.  For small x the algorithm is based on the expansion
# (\exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + \dots.
# 
#   Returns: Cdouble
function sf_exprel(x::Real)
    ccall( (:gsl_sf_exprel, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_exprel


# These routines compute the quantity (\exp(x)-1)/x using an algorithm that is
# accurate for small x.  For small x the algorithm is based on the expansion
# (\exp(x)-1)/x = 1 + x/2 + x^2/(2*3) + x^3/(2*3*4) + \dots.
# 
#   Returns: Cint
function sf_exprel_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exprel_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_exprel_e


# These routines compute the quantity 2(\exp(x)-1-x)/x^2 using an algorithm
# that is accurate for small x.  For small x the algorithm is based on the
# expansion 2(\exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + \dots.
# 
#   Returns: Cdouble
function sf_exprel_2(x::Real)
    ccall( (:gsl_sf_exprel_2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_exprel_2


# These routines compute the quantity 2(\exp(x)-1-x)/x^2 using an algorithm
# that is accurate for small x.  For small x the algorithm is based on the
# expansion 2(\exp(x)-1-x)/x^2 = 1 + x/3 + x^2/(3*4) + x^3/(3*4*5) + \dots.
# 
#   Returns: Cint
function sf_exprel_2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exprel_2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_exprel_2_e


# These routines compute the N-relative exponential, which is the n-th
# generalization of the functions gsl_sf_exprel and gsl_sf_exprel_2.  The
# N-relative exponential is given by,                 exprel_N(x) = N!/x^N
# (\exp(x) - \sum_{k=0}^{N-1} x^k/k!)                       = 1 + x/(N+1) +
# x^2/((N+1)(N+2)) + ...                       = 1F1 (1,1+N,x)
# 
#   Returns: Cdouble
function sf_exprel_n(n::Integer, x::Real)
    ccall( (:gsl_sf_exprel_n, libgsl), Cdouble, (Cint, Cdouble), n, x )
end
Compat.@dep_vectorize_2arg Number sf_exprel_n


# These routines compute the N-relative exponential, which is the n-th
# generalization of the functions gsl_sf_exprel and gsl_sf_exprel_2.  The
# N-relative exponential is given by,                 exprel_N(x) = N!/x^N
# (\exp(x) - \sum_{k=0}^{N-1} x^k/k!)                       = 1 + x/(N+1) +
# x^2/((N+1)(N+2)) + ...                       = 1F1 (1,1+N,x)
# 
#   Returns: Cint
function sf_exprel_n_e(n::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_exprel_n_e, libgsl), Cint, (Cint, Cdouble,
        Ref{gsl_sf_result}), n, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_exprel_n_e
