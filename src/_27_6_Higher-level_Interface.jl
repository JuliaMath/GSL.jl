#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###############################
# 27.6 Higher-level Interface #
###############################
export gsl_spline_alloc, gsl_spline_init, gsl_spline_free, gsl_spline_name,
       gsl_spline_min_size, gsl_spline_eval, gsl_spline_eval_e,
       gsl_spline_eval_deriv, gsl_spline_eval_deriv_e, gsl_spline_eval_deriv2,
       gsl_spline_eval_deriv2_e, gsl_spline_eval_integ, gsl_spline_eval_integ_e


# 
# 
#   Returns: Ptr{Void}
#XXX Unknown input type T::Ptr{gsl_interp_type}
#XXX Coerced type for T::Ptr{Void}
#XXX Unknown output type Ptr{gsl_spline}
#XXX Coerced type for output Ptr{Void}
function gsl_spline_alloc{gsl_int<:Integer}(T::Ptr{Void}, size::gsl_int)
    ccall( (:gsl_spline_alloc, :libgsl), Ptr{Void}, (Ptr{Void}, Csize_t),
        T, size )
end


# 
# 
#   Returns: Cint
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
function gsl_spline_init(spline::Ptr{Void}, xa::Cdouble)
    gsl_errno = ccall( (:gsl_spline_init, :libgsl), Cint, (Ptr{Void},
        Cdouble), spline, xa )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
end


# 
# 
#   Returns: Void
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
function gsl_spline_free(spline::Ptr{Void})
    ccall( (:gsl_spline_free, :libgsl), Void, (Ptr{Void}, ), spline )
end


# 
# 
#   Returns: Ptr{Cchar}
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
function gsl_spline_name(spline::Ptr{Void})
    output_string = ccall( (:gsl_spline_name, :libgsl), Ptr{Cchar},
        (Ptr{Void}, ), spline )
    bytestring(convert(Ptr{Uint8}, output_string))
end


# 
# 
#   Returns: Cuint
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
function gsl_spline_min_size(spline::Ptr{Void})
    ccall( (:gsl_spline_min_size, :libgsl), Cuint, (Ptr{Void}, ), spline )
end


# 
# 
#   Returns: Cdouble
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval(spline::Ptr{Void}, x::Cdouble, acc::Ptr{Void})
    ccall( (:gsl_spline_eval, :libgsl), Cdouble, (Ptr{Void}, Cdouble,
        Ptr{Void}), spline, x, acc )
end


# 
# 
#   Returns: Cint
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_e(spline::Ptr{Void}, x::Cdouble, acc::Ptr{Void})
    y = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_spline_eval_e, :libgsl), Cint, (Ptr{Void},
        Cdouble, Ptr{Void}, Ptr{Cdouble}), spline, x, acc, y )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(y)
end


# 
# 
#   Returns: Cdouble
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_deriv(spline::Ptr{Void}, x::Cdouble, acc::Ptr{Void})
    ccall( (:gsl_spline_eval_deriv, :libgsl), Cdouble, (Ptr{Void}, Cdouble,
        Ptr{Void}), spline, x, acc )
end


# 
# 
#   Returns: Cint
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_deriv_e(spline::Ptr{Void}, x::Cdouble, acc::Ptr{Void})
    d = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_spline_eval_deriv_e, :libgsl), Cint,
        (Ptr{Void}, Cdouble, Ptr{Void}, Ptr{Cdouble}), spline, x, acc, d )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d)
end


# 
# 
#   Returns: Cdouble
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_deriv2(spline::Ptr{Void}, x::Cdouble, acc::Ptr{Void})
    ccall( (:gsl_spline_eval_deriv2, :libgsl), Cdouble, (Ptr{Void},
        Cdouble, Ptr{Void}), spline, x, acc )
end


# 
# 
#   Returns: Cint
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_deriv2_e(spline::Ptr{Void}, x::Cdouble, acc::Ptr{Void})
    d2 = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_spline_eval_deriv2_e, :libgsl), Cint,
        (Ptr{Void}, Cdouble, Ptr{Void}, Ptr{Cdouble}), spline, x, acc, d2 )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(d2)
end


# 
# 
#   Returns: Cdouble
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_integ(spline::Ptr{Void}, a::Cdouble, b::Cdouble, acc::Ptr{Void})
    ccall( (:gsl_spline_eval_integ, :libgsl), Cdouble, (Ptr{Void}, Cdouble,
        Cdouble, Ptr{Void}), spline, a, b, acc )
end


# 
# 
#   Returns: Cint
#XXX Unknown input type spline::Ptr{gsl_spline}
#XXX Coerced type for spline::Ptr{Void}
#XXX Unknown input type acc::Ptr{gsl_interp_accel}
#XXX Coerced type for acc::Ptr{Void}
function gsl_spline_eval_integ_e(spline::Ptr{Void}, a::Cdouble, b::Cdouble, acc::Ptr{Void})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    gsl_errno = ccall( (:gsl_spline_eval_integ_e, :libgsl), Cint,
        (Ptr{Void}, Cdouble, Cdouble, Ptr{Void}, Ptr{Cdouble}), spline, a, b,
        acc, result )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(result)
end
