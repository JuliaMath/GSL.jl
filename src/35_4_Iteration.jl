#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 35.4 Iteration #
##################
export multiroot_fsolver_iterate, multiroot_fdfsolver_iterate,
       multiroot_fdfsolver_iterate, multiroot_fsolver_root,
       multiroot_fdfsolver_root, multiroot_fsolver_f, multiroot_fdfsolver_f,
       multiroot_fsolver_dx, multiroot_fdfsolver_dx

# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_ENOPROGthe iteration
# is not making any progress, preventing the algorithm from continuing.
#
#   Returns: Cint
function multiroot_fsolver_iterate(s::Ptr{gsl_multiroot_fsolver})
    errno = ccall( (:gsl_multiroot_fsolver_iterate, libgsl), Cint,
        (Ptr{gsl_multiroot_fsolver}, ), s )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end


# These functions perform a single iteration of the solver s.  If the iteration
# encounters an unexpected problem then an error code will be returned,
# GSL_EBADFUNCthe iteration encountered a singular point where the function or
# its derivative evaluated to Inf or NaN.            GSL_ENOPROGthe iteration
# is not making any progress, preventing the algorithm from continuing.
#
#   Returns: Cint
function multiroot_fdfsolver_iterate(s::Ptr{gsl_multiroot_fdfsolver})
    errno = ccall( (:gsl_multiroot_fdfsolver_iterate, libgsl), Cint,
        (Ptr{gsl_multiroot_fdfsolver}, ), s )
    gslerrno = gsl_errno(errno)
    if gslerrno != SUCCESS && gslerrno != CONTINUE
        throw(GSL_ERROR(errno))
    end
    return gslerrno
end

# These functions return the current estimate of the root for the solver s,
# given by s->x.
#
#   Returns: Ptr{gsl_vector}
function multiroot_fsolver_root(s::Ptr{gsl_multiroot_fsolver})
    output_ptr = ccall( (:gsl_multiroot_fsolver_root, libgsl),
        Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the current estimate of the root for the solver s,
# given by s->x.
#
#   Returns: Ptr{gsl_vector}
function multiroot_fdfsolver_root(s::Ptr{gsl_multiroot_fdfsolver})
    output_ptr = ccall( (:gsl_multiroot_fdfsolver_root, libgsl),
        Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the function value f(x) at the current estimate of the
# root for the solver s, given by s->f.
#
#   Returns: Ptr{gsl_vector}
function multiroot_fsolver_f(s::Ptr{gsl_multiroot_fsolver})
    output_ptr = ccall( (:gsl_multiroot_fsolver_f, libgsl),
        Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the function value f(x) at the current estimate of the
# root for the solver s, given by s->f.
#
#   Returns: Ptr{gsl_vector}
function multiroot_fdfsolver_f(s::Ptr{gsl_multiroot_fdfsolver})
    output_ptr = ccall( (:gsl_multiroot_fdfsolver_f, libgsl),
        Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the last step dx taken by the solver s, given by
# s->dx.
#
#   Returns: Ptr{gsl_vector}
function multiroot_fsolver_dx(s::Ptr{gsl_multiroot_fsolver})
    output_ptr = ccall( (:gsl_multiroot_fsolver_dx, libgsl),
        Ptr{gsl_vector}, (Ptr{gsl_multiroot_fsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return the last step dx taken by the solver s, given by
# s->dx.
#
#   Returns: Ptr{gsl_vector}
function multiroot_fdfsolver_dx(s::Ptr{gsl_multiroot_fdfsolver})
    output_ptr = ccall( (:gsl_multiroot_fdfsolver_dx, libgsl),
        Ptr{gsl_vector}, (Ptr{gsl_multiroot_fdfsolver}, ), s )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
