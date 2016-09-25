#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 7.15.3 Log Complementary Error Function #
###########################################
export sf_log_erfc, sf_log_erfc_e


# These routines compute the logarithm of the complementary error function
# \log(\erfc(x)).
# 
#   Returns: Cdouble
function sf_log_erfc(x::Real)
    ccall( (:gsl_sf_log_erfc, libgsl), Cdouble, (Cdouble, ), x )
end
Compat.@dep_vectorize_1arg Number sf_log_erfc


# These routines compute the logarithm of the complementary error function
# \log(\erfc(x)).
# 
#   Returns: Cint
function sf_log_erfc_e(x::Real)
    result = Ref{gsl_sf_result}()
    errno = ccall( (:gsl_sf_log_erfc_e, libgsl), Cint, (Cdouble,
        Ref{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return result[]
end
Compat.@dep_vectorize_1arg Number sf_log_erfc_e
