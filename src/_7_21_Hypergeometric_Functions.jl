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
#   Returns: Cdouble
function gsl_sf_hyperg_0F1(c::Real, x::Real)
    ccall( (:gsl_sf_hyperg_0F1, :libgsl), Cdouble, (Cdouble, Cdouble), c, x
        )
end
@vectorize_2arg Number gsl_sf_hyperg_0F1


# These routines compute the hypergeometric function  0F1(c,x).
# 
#   Returns: Cint
function gsl_sf_hyperg_0F1_e(c::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_0F1_e, :libgsl), Cint, (Cdouble,
        Cdouble, Ptr{gsl_sf_result}), c, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
@vectorize_2arg Number gsl_sf_hyperg_0F1_e


# These routines compute the confluent hypergeometric function  1F1(m,n,x) =
# M(m,n,x) for integer parameters m, n.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_1F1_int(m::Integer, n::Integer, x::Real)
    ccall( (:gsl_sf_hyperg_1F1_int, :libgsl), Cdouble, (Cint, Cint,
        Cdouble), m, n, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_1F1_int


# These routines compute the confluent hypergeometric function  1F1(m,n,x) =
# M(m,n,x) for integer parameters m, n.
# 
#   Returns: Cint
function gsl_sf_hyperg_1F1_int_e(m::Integer, n::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_1F1_int_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result}), m, n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_1F1_int_e


# These routines compute the confluent hypergeometric function  1F1(a,b,x) =
# M(a,b,x) for general parameters a, b.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_1F1(a::Real, b::Real, x::Real)
    ccall( (:gsl_sf_hyperg_1F1, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_1F1


# These routines compute the confluent hypergeometric function  1F1(a,b,x) =
# M(a,b,x) for general parameters a, b.
# 
#   Returns: Cint
function gsl_sf_hyperg_1F1_e(a::Real, b::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_1F1_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_1F1_e


# These routines compute the confluent hypergeometric function U(m,n,x) for
# integer parameters m, n.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_U_int(m::Integer, n::Integer, x::Real)
    ccall( (:gsl_sf_hyperg_U_int, :libgsl), Cdouble, (Cint, Cint, Cdouble),
        m, n, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_U_int


# These routines compute the confluent hypergeometric function U(m,n,x) for
# integer parameters m, n.
# 
#   Returns: Cint
function gsl_sf_hyperg_U_int_e(m::Integer, n::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_U_int_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result}), m, n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_U_int_e


# This routine computes the confluent hypergeometric function U(m,n,x) for
# integer parameters m, n using the gsl_sf_result_e10 type to return a result
# with extended range.
# 
#   Returns: Cint
function gsl_sf_hyperg_U_int_e10_e(m::Integer, n::Integer, x::Real)
    result = convert(Ptr{gsl_sf_result_e10}, Array(gsl_sf_result_e10, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_U_int_e10_e, :libgsl), Cint, (Cint,
        Cint, Cdouble, Ptr{gsl_sf_result_e10}), m, n, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_U_int_e10_e


# These routines compute the confluent hypergeometric function U(a,b,x).
# 
#   Returns: Cdouble
function gsl_sf_hyperg_U(a::Real, b::Real, x::Real)
    ccall( (:gsl_sf_hyperg_U, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_U


# These routines compute the confluent hypergeometric function U(a,b,x).
# 
#   Returns: Cint
function gsl_sf_hyperg_U_e(a::Real, b::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_U_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_U_e


# This routine computes the confluent hypergeometric function U(a,b,x) using
# the gsl_sf_result_e10 type to return a result with extended range.
# 
#   Returns: Cint
function gsl_sf_hyperg_U_e10_e(a::Real, b::Real, x::Real)
    result = convert(Ptr{gsl_sf_result_e10}, Array(gsl_sf_result_e10, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_U_e10_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Ptr{gsl_sf_result_e10}), a, b, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_U_e10_e


# These routines compute the Gauss hypergeometric function  2F1(a,b,c,x) =
# F(a,b,c,x) for |x| < 1.          If the arguments (a,b,c,x) are too close to
# a singularity then the function can return the error code GSL_EMAXITER when
# the series approximation converges too slowly.  This occurs in the region of
# x=1, c - a - b = m for integer m.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1(a::Real, b::Real, c::Real, x::Real)
    ccall( (:gsl_sf_hyperg_2F1, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, Cdouble), a, b, c, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1


# These routines compute the Gauss hypergeometric function  2F1(a,b,c,x) =
# F(a,b,c,x) for |x| < 1.          If the arguments (a,b,c,x) are too close to
# a singularity then the function can return the error code GSL_EMAXITER when
# the series approximation converges too slowly.  This occurs in the region of
# x=1, c - a - b = m for integer m.
# 
#   Returns: Cint
function gsl_sf_hyperg_2F1_e(a::Real, b::Real, c::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_2F1_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, c, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_e


# These routines compute the Gauss hypergeometric function  2F1(a_R + i a_I,
# a_R - i a_I, c, x) with complex parameters for |x| < 1.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1_conj(aR::Real, aI::Real, c::Real, x::Real)
    ccall( (:gsl_sf_hyperg_2F1_conj, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble, Cdouble), aR, aI, c, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_conj


# These routines compute the Gauss hypergeometric function  2F1(a_R + i a_I,
# a_R - i a_I, c, x) with complex parameters for |x| < 1.
# 
#   Returns: Cint
function gsl_sf_hyperg_2F1_conj_e(aR::Real, aI::Real, c::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_2F1_conj_e, :libgsl), Cint,
        (Cdouble, Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), aR, aI, c, x,
        result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_conj_e


# These routines compute the renormalized Gauss hypergeometric function
# 2F1(a,b,c,x) / \Gamma(c) for |x| < 1.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1_renorm(a::Real, b::Real, c::Real, x::Real)
    ccall( (:gsl_sf_hyperg_2F1_renorm, :libgsl), Cdouble, (Cdouble,
        Cdouble, Cdouble, Cdouble), a, b, c, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_renorm


# These routines compute the renormalized Gauss hypergeometric function
# 2F1(a,b,c,x) / \Gamma(c) for |x| < 1.
# 
#   Returns: Cint
function gsl_sf_hyperg_2F1_renorm_e(a::Real, b::Real, c::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_2F1_renorm_e, :libgsl), Cint,
        (Cdouble, Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, c, x,
        result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_renorm_e


# These routines compute the renormalized Gauss hypergeometric function
# 2F1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c) for |x| < 1.
# 
#   Returns: Cdouble
function gsl_sf_hyperg_2F1_conj_renorm(aR::Real, aI::Real, c::Real, x::Real)
    ccall( (:gsl_sf_hyperg_2F1_conj_renorm, :libgsl), Cdouble, (Cdouble,
        Cdouble, Cdouble, Cdouble), aR, aI, c, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_conj_renorm


# These routines compute the renormalized Gauss hypergeometric function
# 2F1(a_R + i a_I, a_R - i a_I, c, x) / \Gamma(c) for |x| < 1.
# 
#   Returns: Cint
function gsl_sf_hyperg_2F1_conj_renorm_e(aR::Real, aI::Real, c::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_2F1_conj_renorm_e, :libgsl), Cint,
        (Cdouble, Cdouble, Cdouble, Cdouble, Ptr{gsl_sf_result}), aR, aI, c, x,
        result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_4arg Number gsl_sf_hyperg_2F1_conj_renorm_e


# These routines compute the hypergeometric function  2F0(a,b,x).  The series
# representation is a divergent hypergeometric series.  However, for x < 0 we
# have  2F0(a,b,x) = (-1/x)^a U(a,1+a-b,-1/x)
# 
#   Returns: Cdouble
function gsl_sf_hyperg_2F0(a::Real, b::Real, x::Real)
    ccall( (:gsl_sf_hyperg_2F0, :libgsl), Cdouble, (Cdouble, Cdouble,
        Cdouble), a, b, x )
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_2F0


# These routines compute the hypergeometric function  2F0(a,b,x).  The series
# representation is a divergent hypergeometric series.  However, for x < 0 we
# have  2F0(a,b,x) = (-1/x)^a U(a,1+a-b,-1/x)
# 
#   Returns: Cint
function gsl_sf_hyperg_2F0_e(a::Real, b::Real, x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    gsl_errno = ccall( (:gsl_sf_hyperg_2F0_e, :libgsl), Cint, (Cdouble,
        Cdouble, Cdouble, Ptr{gsl_sf_result}), a, b, x, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)[1]
end
#TODO This vectorization macro is not implemented
#@vectorize_3arg Number gsl_sf_hyperg_2F0_e
