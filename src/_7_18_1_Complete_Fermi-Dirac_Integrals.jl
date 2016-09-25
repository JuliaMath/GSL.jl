#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#########################################
# 7.18.1 Complete Fermi-Dirac Integrals #
#########################################
export sf_fermi_dirac_m1, sf_fermi_dirac_m1_e, sf_fermi_dirac_0,
       sf_fermi_dirac_0_e, sf_fermi_dirac_1, sf_fermi_dirac_1_e,
       sf_fermi_dirac_2, sf_fermi_dirac_2_e, sf_fermi_dirac_int,
       sf_fermi_dirac_int_e, sf_fermi_dirac_mhalf, sf_fermi_dirac_mhalf_e,
       sf_fermi_dirac_half, sf_fermi_dirac_half_e, sf_fermi_dirac_3half,
       sf_fermi_dirac_3half_e




# These routines compute the complete Fermi-Dirac integral with an index of -1.
# This integral is given by  F_{-1}(x) = e^x / (1 + e^x).
# 
#   Returns: Cdouble
function sf_fermi_dirac_m1(x::Real)
    ccall( (:gsl_sf_fermi_dirac_m1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_m1


# These routines compute the complete Fermi-Dirac integral with an index of -1.
# This integral is given by  F_{-1}(x) = e^x / (1 + e^x).
# 
#   Returns: Cint
function sf_fermi_dirac_m1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_m1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_m1_e


# These routines compute the complete Fermi-Dirac integral with an index of 0.
# This integral is given by F_0(x) = \ln(1 + e^x).
# 
#   Returns: Cdouble
function sf_fermi_dirac_0(x::Real)
    ccall( (:gsl_sf_fermi_dirac_0, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_0


# These routines compute the complete Fermi-Dirac integral with an index of 0.
# This integral is given by F_0(x) = \ln(1 + e^x).
# 
#   Returns: Cint
function sf_fermi_dirac_0_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_0_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_0_e


# These routines compute the complete Fermi-Dirac integral with an index of 1,
# F_1(x) = \int_0^\infty dt (t /(\exp(t-x)+1)).
# 
#   Returns: Cdouble
function sf_fermi_dirac_1(x::Real)
    ccall( (:gsl_sf_fermi_dirac_1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_1


# These routines compute the complete Fermi-Dirac integral with an index of 1,
# F_1(x) = \int_0^\infty dt (t /(\exp(t-x)+1)).
# 
#   Returns: Cint
function sf_fermi_dirac_1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_1_e


# These routines compute the complete Fermi-Dirac integral with an index of 2,
# F_2(x) = (1/2) \int_0^\infty dt (t^2 /(\exp(t-x)+1)).
# 
#   Returns: Cdouble
function sf_fermi_dirac_2(x::Real)
    ccall( (:gsl_sf_fermi_dirac_2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_2


# These routines compute the complete Fermi-Dirac integral with an index of 2,
# F_2(x) = (1/2) \int_0^\infty dt (t^2 /(\exp(t-x)+1)).
# 
#   Returns: Cint
function sf_fermi_dirac_2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_2_e


# These routines compute the complete Fermi-Dirac integral with an integer
# index of j, F_j(x) = (1/\Gamma(j+1)) \int_0^\infty dt (t^j /(\exp(t-x)+1)).
# 
#   Returns: Cdouble
function sf_fermi_dirac_int(j::Integer, x::Real)
    ccall( (:gsl_sf_fermi_dirac_int, libgsl), Cdouble, (Cint, Cdouble), j,
        x )
end
Compat.@dep_vectorize_2arg Number sf_fermi_dirac_int


# These routines compute the complete Fermi-Dirac integral with an integer
# index of j, F_j(x) = (1/\Gamma(j+1)) \int_0^\infty dt (t^j /(\exp(t-x)+1)).
# 
#   Returns: Cint
function sf_fermi_dirac_int_e(j::Integer, x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_int_e, libgsl), Cint, (Cint,
        Cdouble, Ref{gsl_sf_result}), j, x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_2arg Number sf_fermi_dirac_int_e


# These routines compute the complete Fermi-Dirac integral  F_{-1/2}(x).
# 
#   Returns: Cdouble
function sf_fermi_dirac_mhalf(x::Real)
    ccall( (:gsl_sf_fermi_dirac_mhalf, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_mhalf


# These routines compute the complete Fermi-Dirac integral  F_{-1/2}(x).
# 
#   Returns: Cint
function sf_fermi_dirac_mhalf_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_mhalf_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_mhalf_e


# These routines compute the complete Fermi-Dirac integral  F_{1/2}(x).
# 
#   Returns: Cdouble
function sf_fermi_dirac_half(x::Real)
    ccall( (:gsl_sf_fermi_dirac_half, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_half


# These routines compute the complete Fermi-Dirac integral  F_{1/2}(x).
# 
#   Returns: Cint
function sf_fermi_dirac_half_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_half_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_half_e


# These routines compute the complete Fermi-Dirac integral  F_{3/2}(x).
# 
#   Returns: Cdouble
function sf_fermi_dirac_3half(x::Real)
    ccall( (:gsl_sf_fermi_dirac_3half, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_3half


# These routines compute the complete Fermi-Dirac integral  F_{3/2}(x).
# 
#   Returns: Cint
function sf_fermi_dirac_3half_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_fermi_dirac_3half_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_fermi_dirac_3half_e
