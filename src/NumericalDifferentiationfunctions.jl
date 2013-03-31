#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
#
#This code is courtesy of Steven G. Johnson
#https://groups.google.com/forum/#!topic/julia-users/_Z0CD-oqbG0
#
##################
# 28.1 Functions #
##################
export gsl_deriv_central, gsl_deriv_forward, gsl_deriv_backward

function function_callback(x::Cdouble, f_::Ptr{Void})
    f = unsafe_pointer_to_objref(f_)::Function
    convert(Cdouble, f(x))::Cdouble
end
const function_callback_ptr = cfunction(function_callback, Cdouble, (Cdouble, Ptr{Void}))

for gsl_deriv in (:gsl_deriv_central, :gsl_deriv_forward, :gsl_deriv_backward)
    @eval begin
        function ($gsl_deriv)(f::Function, x::Real, h::Real)
            result = Array(Cdouble, 1)
            abserr = Array(Cdouble, 1)
            gsl_errno = ccall(($(string(gsl_deriv)),:libgsl),
                  Cint, (Ptr{gsl_function}, Cdouble, Cdouble,
                         Ptr{Cdouble}, Ptr{Cdouble}),
                  &gsl_function(function_callback_ptr,
                                pointer_from_objref(f)),
                  x, h,
                  result, abserr)
                  if gsl_errno != 0 throw(GSL_ERROR, gsl_errno) end
            return (result[1], abserr[1])
        end
    end
end

