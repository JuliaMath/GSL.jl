#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 7.24.3 Conical Functions #
############################
export sf_conicalP_half, sf_conicalP_half_e, sf_conicalP_mhalf,
       sf_conicalP_mhalf_e, sf_conicalP_0, sf_conicalP_0_e, sf_conicalP_1,
       sf_conicalP_1_e, sf_conicalP_sph_reg, sf_conicalP_sph_reg_e,
       sf_conicalP_cyl_reg, sf_conicalP_cyl_reg_e


# These routines compute the irregular Spherical Conical Function
# P^{1/2}_{-1/2 + i \lambda}(x) for x > -1.
# 
#   Returns: Cdouble
function sf_conicalP_half(lambda::Real, x::Real)
    ccall( (:gsl_sf_conicalP_half, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_conicalP_half


# These routines compute the irregular Spherical Conical Function
# P^{1/2}_{-1/2 + i \lambda}(x) for x > -1.
# 
#   Returns: Cint
function sf_conicalP_half_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_conicalP_half_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_conicalP_half_e


# These routines compute the regular Spherical Conical Function  P^{-1/2}_{-1/2
# + i \lambda}(x) for x > -1.
# 
#   Returns: Cdouble
function sf_conicalP_mhalf(lambda::Real, x::Real)
    ccall( (:gsl_sf_conicalP_mhalf, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_conicalP_mhalf


# These routines compute the regular Spherical Conical Function  P^{-1/2}_{-1/2
# + i \lambda}(x) for x > -1.
# 
#   Returns: Cint
function sf_conicalP_mhalf_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_conicalP_mhalf_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_conicalP_mhalf_e


# These routines compute the conical function  P^0_{-1/2 + i \lambda}(x) for x
# > -1.
# 
#   Returns: Cdouble
function sf_conicalP_0(lambda::Real, x::Real)
    ccall( (:gsl_sf_conicalP_0, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_conicalP_0


# These routines compute the conical function  P^0_{-1/2 + i \lambda}(x) for x
# > -1.
# 
#   Returns: Cint
function sf_conicalP_0_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_conicalP_0_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_conicalP_0_e


# These routines compute the conical function  P^1_{-1/2 + i \lambda}(x) for x
# > -1.
# 
#   Returns: Cdouble
function sf_conicalP_1(lambda::Real, x::Real)
    ccall( (:gsl_sf_conicalP_1, libgsl), Cdouble, (Cdouble, Cdouble),
        lambda, x )
end
Compat.@dep_vectorize_2arg Number sf_conicalP_1


# These routines compute the conical function  P^1_{-1/2 + i \lambda}(x) for x
# > -1.
# 
#   Returns: Cint
function sf_conicalP_1_e(lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_conicalP_1_e, libgsl), Cint, (Cdouble,
        Cdouble, Ref{gsl_sf_result}), lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_conicalP_1_e


# These routines compute the Regular Spherical Conical Function
# P^{-1/2-l}_{-1/2 + i \lambda}(x) for x > -1,  l >= -1.
# 
#   Returns: Cdouble
function sf_conicalP_sph_reg(l::Integer, lambda::Real, x::Real)
    ccall( (:gsl_sf_conicalP_sph_reg, libgsl), Cdouble, (Cint, Cdouble,
        Cdouble), l, lambda, x )
end


# These routines compute the Regular Spherical Conical Function
# P^{-1/2-l}_{-1/2 + i \lambda}(x) for x > -1,  l >= -1.
# 
#   Returns: Cint
function sf_conicalP_sph_reg_e(l::Integer, lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_conicalP_sph_reg_e, libgsl), Cint, (Cint,
        Cdouble, Cdouble, Ref{gsl_sf_result}), l, lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end


# These routines compute the Regular Cylindrical Conical Function  P^{-m}_{-1/2
# + i \lambda}(x) for x > -1,  m >= -1.
# 
#   Returns: Cdouble
function sf_conicalP_cyl_reg(m::Integer, lambda::Real, x::Real)
    ccall( (:gsl_sf_conicalP_cyl_reg, libgsl), Cdouble, (Cint, Cdouble,
        Cdouble), m, lambda, x )
end


# These routines compute the Regular Cylindrical Conical Function  P^{-m}_{-1/2
# + i \lambda}(x) for x > -1,  m >= -1.
# 
#   Returns: Cint
function sf_conicalP_cyl_reg_e(m::Integer, lambda::Real, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_conicalP_cyl_reg_e, libgsl), Cint, (Cint,
        Cdouble, Cdouble, Ref{gsl_sf_result}), m, lambda, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
