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
#   Returns: Ptr{gsl_spline}
function gsl_spline_alloc (T::Ptr{gsl_interp_type}, size::Csize_t)
    ccall( (:gsl_spline_alloc, "libgsl"), Ptr{gsl_spline},
        (Ptr{gsl_interp_type}, Csize_t), T, size )
end


# 
# 
#   Returns: Cint
function gsl_spline_init (spline::Ptr{gsl_spline}, xa::Cdouble)
    ccall( (:gsl_spline_init, "libgsl"), Cint, (Ptr{gsl_spline}, Cdouble),
        spline, xa )
end


# 
# 
#   Returns: Void
function gsl_spline_free (spline::Ptr{gsl_spline})
    ccall( (:gsl_spline_free, "libgsl"), Void, (Ptr{gsl_spline}, ), spline
        )
end


# 
# 
#   Returns: Ptr{Cchar}
function gsl_spline_name (spline::Ptr{gsl_spline})
    ccall( (:gsl_spline_name, "libgsl"), Ptr{Cchar}, (Ptr{gsl_spline}, ),
        spline )
end


# 
# 
#   Returns: Cuint
function gsl_spline_min_size (spline::Ptr{gsl_spline})
    ccall( (:gsl_spline_min_size, "libgsl"), Cuint, (Ptr{gsl_spline}, ),
        spline )
end


# 
# 
#   Returns: Cdouble
function gsl_spline_eval (spline::Ptr{gsl_spline}, x::Cdouble, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval, "libgsl"), Cdouble, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}), spline, x, acc )
end


# 
# 
#   Returns: Cint
function gsl_spline_eval_e (spline::Ptr{gsl_spline}, x::Cdouble, acc::Ptr{gsl_interp_accel}, y::Ptr{Cdouble})
    ccall( (:gsl_spline_eval_e, "libgsl"), Cint, (Ptr{gsl_spline}, Cdouble,
        Ptr{gsl_interp_accel}, Ptr{Cdouble}), spline, x, acc, y )
end


# 
# 
#   Returns: Cdouble
function gsl_spline_eval_deriv (spline::Ptr{gsl_spline}, x::Cdouble, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval_deriv, "libgsl"), Cdouble, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}), spline, x, acc )
end


# 
# 
#   Returns: Cint
function gsl_spline_eval_deriv_e (spline::Ptr{gsl_spline}, x::Cdouble, acc::Ptr{gsl_interp_accel}, d::Ptr{Cdouble})
    ccall( (:gsl_spline_eval_deriv_e, "libgsl"), Cint, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}, Ptr{Cdouble}), spline, x, acc, d )
end


# 
# 
#   Returns: Cdouble
function gsl_spline_eval_deriv2 (spline::Ptr{gsl_spline}, x::Cdouble, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval_deriv2, "libgsl"), Cdouble, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}), spline, x, acc )
end


# 
# 
#   Returns: Cint
function gsl_spline_eval_deriv2_e (spline::Ptr{gsl_spline}, x::Cdouble, acc::Ptr{gsl_interp_accel}, d2::Ptr{Cdouble})
    ccall( (:gsl_spline_eval_deriv2_e, "libgsl"), Cint, (Ptr{gsl_spline},
        Cdouble, Ptr{gsl_interp_accel}, Ptr{Cdouble}), spline, x, acc, d2 )
end


# 
# 
#   Returns: Cdouble
function gsl_spline_eval_integ (spline::Ptr{gsl_spline}, a::Cdouble, b::Cdouble, acc::Ptr{gsl_interp_accel})
    ccall( (:gsl_spline_eval_integ, "libgsl"), Cdouble, (Ptr{gsl_spline},
        Cdouble, Cdouble, Ptr{gsl_interp_accel}), spline, a, b, acc )
end


# 
# 
#   Returns: Cint
function gsl_spline_eval_integ_e (spline::Ptr{gsl_spline}, a::Cdouble, b::Cdouble, acc::Ptr{gsl_interp_accel}, result::Ptr{Cdouble})
    ccall( (:gsl_spline_eval_integ_e, "libgsl"), Cint, (Ptr{gsl_spline},
        Cdouble, Cdouble, Ptr{gsl_interp_accel}, Ptr{Cdouble}), spline, a, b,
        acc, result )
end