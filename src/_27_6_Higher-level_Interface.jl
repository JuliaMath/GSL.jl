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
function spline_alloc(T::Ptr{gsl_interp_type}, size::Integer)
    output_ptr = ccall( (:gsl_spline_alloc, libgsl), Ptr{gsl_spline},
        (Ptr{gsl_interp_type}, Csize_t), T, size )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# 
# 
#   Returns: Cint
function spline_init(spline::Ptr{gsl_spline}, xa::Real)
    errno = ccall( (:gsl_spline_init, libgsl), Cint, (Ptr{gsl_spline},
        Cdouble), spline, xa )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end


# 
# 
#   Returns: Void
function spline_free(spline::Ptr{gsl_spline})
    ccall( (:gsl_spline_free, libgsl), Void, (Ptr{gsl_spline}, ), spline )
end


# 
# 
#   Returns: Ptr{Cchar}
function spline_name(spline::Ptr{gsl_spline})
    output_string = output_ptr = ccall( (:gsl_spline_name, libgsl),
        Ptr{Cchar}, (Ptr{gsl_spline}, ), spline )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(convert(Ptr{UInt8}, output_string))
end


# 
# 
#   Returns: Cuint
function spline_min_size(spline::Ptr{gsl_spline})
    ccall( (:gsl_spline_min_size, libgsl), Cuint, (Ptr{gsl_spline}, ),
        spline )
end


# 
# 
#   Returns: Cdouble
function spline_eval(spline::Ptr{gsl_spline}, x::Real, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval, libgsl), Cdouble, (Ptr{gsl_spline}, Cdouble,
        Ptr{gsl_interp_accel}), spline, x, acc )
end


# 
# 
#   Returns: Cint
function spline_eval_e(spline::Ptr{gsl_spline}, x::Real)
    acc = Ref{gsl_interp_accel}()
    y = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_e, libgsl), Cint, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}, Ptr{Cdouble}), spline, x, acc, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(acc), unsafe_load(y)
end


# 
# 
#   Returns: Cdouble
function spline_eval_deriv(spline::Ptr{gsl_spline}, x::Real, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval_deriv, libgsl), Cdouble, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}), spline, x, acc )
end


# 
# 
#   Returns: Cint
function spline_eval_deriv_e(spline::Ptr{gsl_spline}, x::Real)
    acc = Ref{gsl_interp_accel}()
    d = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_deriv_e, libgsl), Cint,
        (Ptr{gsl_spline}, Cdouble, Ptr{gsl_interp_accel}, Ptr{Cdouble}),
        spline, x, acc, d )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(acc), unsafe_load(d)
end


# 
# 
#   Returns: Cdouble
function spline_eval_deriv2(spline::Ptr{gsl_spline}, x::Real, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval_deriv2, libgsl), Cdouble, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}), spline, x, acc )
end


# 
# 
#   Returns: Cint
function spline_eval_deriv2_e(spline::Ptr{gsl_spline}, x::Real)
    acc = Ref{gsl_interp_accel}()
    d2 = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_deriv2_e, libgsl), Cint,
        (Ptr{gsl_spline}, Cdouble, Ptr{gsl_interp_accel}, Ptr{Cdouble}),
        spline, x, acc, d2 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(acc), unsafe_load(d2)
end


# 
# 
#   Returns: Cdouble
function spline_eval_integ(spline::Ptr{gsl_spline}, a::Real, b::Real, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval_integ, libgsl), Cdouble, (Ptr{gsl_spline},
        Cdouble, Cdouble, Ptr{gsl_interp_accel}), spline, a, b, acc )
end


# 
# 
#   Returns: Cint
function spline_eval_integ_e(spline::Ptr{gsl_spline}, a::Real, b::Real)
    acc = Ref{gsl_interp_accel}()
    result = Ref{Cdouble}()
    errno = ccall( (:gsl_spline_eval_integ_e, libgsl), Cint,
        (Ptr{gsl_spline}, Cdouble, Cdouble, Ptr{gsl_interp_accel},
        Ptr{Cdouble}), spline, a, b, acc, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(acc), unsafe_load(result)
end
