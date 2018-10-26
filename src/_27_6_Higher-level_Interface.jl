#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 27.6 Higher-level Interface #
###############################
export spline_alloc, spline_init, spline_free, spline_name, spline_min_size,
       spline_eval, spline_eval_e, spline_eval_deriv, spline_eval_deriv_e,
       spline_eval_deriv2, spline_eval_deriv2_e, spline_eval_integ,
       spline_eval_integ_e


#
#
#   Returns: Ptr{gsl_spline}
function spline_alloc(T::Ref{gsl_interp_type}, size::Integer)
    output_ptr = ccall( (:gsl_spline_alloc, libgsl), Ptr{gsl_spline},
        (Ref{gsl_interp_type}, Csize_t), T, size )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


#
#
#   Returns: Cint
function spline_init(spline::Ref{gsl_spline}, xa::Real)
    errno = ccall( (:gsl_spline_init, libgsl), Cint, (Ref{gsl_spline},
        Cdouble), spline, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


#
#
#   Returns: Cvoid
function spline_free(spline::Ref{gsl_spline})
    ccall( (:gsl_spline_free, libgsl), Cvoid, (Ref{gsl_spline}, ), spline )
end


#
#
#   Returns: Ptr{Cchar}
function spline_name(spline::Ref{gsl_spline})
    output_string = output_ptr = ccall( (:gsl_spline_name, libgsl),
        Ptr{Cchar}, (Ref{gsl_spline}, ), spline )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    unsafe_string(output_string)
end


#
#
#   Returns: Cuint
function spline_min_size(spline::Ref{gsl_spline})
    ccall( (:gsl_spline_min_size, libgsl), Cuint, (Ref{gsl_spline}, ),
        spline )
end


#
#
#   Returns: Cdouble
function spline_eval(spline::Ref{gsl_spline}, x::Real, acc::Ref{gsl_interp_accel})
    ccall( (:gsl_spline_eval, libgsl), Cdouble, (Ref{gsl_spline}, Cdouble,
        Ref{gsl_interp_accel}), spline, x, acc )
end


#
#
#   Returns: Cint
function spline_eval_e(spline::Ref{gsl_spline}, x::Real)
    acc = Ref{gsl_interp_accel}()
    y = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_e, libgsl), Cint, (Ref{gsl_spline},
        Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}), spline, x, acc, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return acc[], y[]
end


#
#
#   Returns: Cdouble
function spline_eval_deriv(spline::Ref{gsl_spline}, x::Real, acc::Ref{gsl_interp_accel})
    ccall( (:gsl_spline_eval_deriv, libgsl), Cdouble, (Ref{gsl_spline},
        Cdouble, Ref{gsl_interp_accel}), spline, x, acc )
end


#
#
#   Returns: Cint
function spline_eval_deriv_e(spline::Ref{gsl_spline}, x::Real)
    acc = Ref{gsl_interp_accel}()
    d = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_deriv_e, libgsl), Cint,
        (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}),
        spline, x, acc, d )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return acc[], d[]
end


#
#
#   Returns: Cdouble
function spline_eval_deriv2(spline::Ref{gsl_spline}, x::Real, acc::Ref{gsl_interp_accel})
    ccall( (:gsl_spline_eval_deriv2, libgsl), Cdouble, (Ref{gsl_spline},
        Cdouble, Ref{gsl_interp_accel}), spline, x, acc )
end


#
#
#   Returns: Cint
function spline_eval_deriv2_e(spline::Ref{gsl_spline}, x::Real)
    acc = Ref{gsl_interp_accel}()
    d2 = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_deriv2_e, libgsl), Cint,
        (Ref{gsl_spline}, Cdouble, Ref{gsl_interp_accel}, Ref{Cdouble}),
        spline, x, acc, d2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return acc[], d2[]
end


#
#
#   Returns: Cdouble
function spline_eval_integ(spline::Ref{gsl_spline}, a::Real, b::Real, acc::Ref{gsl_interp_accel})
    ccall( (:gsl_spline_eval_integ, libgsl), Cdouble, (Ref{gsl_spline},
        Cdouble, Cdouble, Ref{gsl_interp_accel}), spline, a, b, acc )
end


#
#
#   Returns: Cint
function spline_eval_integ_e(spline::Ref{gsl_spline}, a::Real, b::Real)
    acc = Ref{gsl_interp_accel}()
    result = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_integ_e, libgsl), Cint,
        (Ref{gsl_spline}, Cdouble, Cdouble, Ref{gsl_interp_accel},
        Ref{Cdouble}), spline, a, b, acc, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return acc[], result[]
end
