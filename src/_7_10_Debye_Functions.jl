#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################
# 7.10 Debye Functions #
########################
export sf_debye_1, sf_debye_1_e, sf_debye_2, sf_debye_2_e, sf_debye_3,
       sf_debye_3_e, sf_debye_4, sf_debye_4_e, sf_debye_5, sf_debye_5_e,
       sf_debye_6, sf_debye_6_e




# These routines compute the first-order Debye function D_1(x) = (1/x) \int_0^x
# dt (t/(e^t - 1)).
# 
#   Returns: Cdouble
function sf_debye_1(x::Real)
    ccall( (:gsl_sf_debye_1, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_debye_1


# These routines compute the first-order Debye function D_1(x) = (1/x) \int_0^x
# dt (t/(e^t - 1)).
# 
#   Returns: Cint
function sf_debye_1_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_debye_1_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_debye_1_e


# These routines compute the second-order Debye function D_2(x) = (2/x^2)
# \int_0^x dt (t^2/(e^t - 1)).
# 
#   Returns: Cdouble
function sf_debye_2(x::Real)
    ccall( (:gsl_sf_debye_2, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_debye_2


# These routines compute the second-order Debye function D_2(x) = (2/x^2)
# \int_0^x dt (t^2/(e^t - 1)).
# 
#   Returns: Cint
function sf_debye_2_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_debye_2_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_debye_2_e


# These routines compute the third-order Debye function D_3(x) = (3/x^3)
# \int_0^x dt (t^3/(e^t - 1)).
# 
#   Returns: Cdouble
function sf_debye_3(x::Real)
    ccall( (:gsl_sf_debye_3, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_debye_3


# These routines compute the third-order Debye function D_3(x) = (3/x^3)
# \int_0^x dt (t^3/(e^t - 1)).
# 
#   Returns: Cint
function sf_debye_3_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_debye_3_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_debye_3_e


# These routines compute the fourth-order Debye function D_4(x) = (4/x^4)
# \int_0^x dt (t^4/(e^t - 1)).
# 
#   Returns: Cdouble
function sf_debye_4(x::Real)
    ccall( (:gsl_sf_debye_4, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_debye_4


# These routines compute the fourth-order Debye function D_4(x) = (4/x^4)
# \int_0^x dt (t^4/(e^t - 1)).
# 
#   Returns: Cint
function sf_debye_4_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_debye_4_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_debye_4_e


# These routines compute the fifth-order Debye function D_5(x) = (5/x^5)
# \int_0^x dt (t^5/(e^t - 1)).
# 
#   Returns: Cdouble
function sf_debye_5(x::Real)
    ccall( (:gsl_sf_debye_5, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_debye_5


# These routines compute the fifth-order Debye function D_5(x) = (5/x^5)
# \int_0^x dt (t^5/(e^t - 1)).
# 
#   Returns: Cint
function sf_debye_5_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_debye_5_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_debye_5_e


# These routines compute the sixth-order Debye function D_6(x) = (6/x^6)
# \int_0^x dt (t^6/(e^t - 1)).
# 
#   Returns: Cdouble
function sf_debye_6(x::Real)
    ccall( (:gsl_sf_debye_6, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_debye_6


# These routines compute the sixth-order Debye function D_6(x) = (6/x^6)
# \int_0^x dt (t^6/(e^t - 1)).
# 
#   Returns: Cint
function sf_debye_6_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_debye_6_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_debye_6_e
