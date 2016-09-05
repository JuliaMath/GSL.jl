#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 7.5 Bessel Functions that return Arrays #
###########################################

export sf_bessel_Jn_array, sf_bessel_Yn_array,
    sf_bessel_In_array, sf_bessel_In_scaled_array,
    sf_bessel_Kn_array, sf_bessel_Kn_scaled_array,
    sf_bessel_jl_array, sf_bessel_jl_steed_array,
    sf_bessel_yl_array, sf_bessel_il_scaled_array,
    sf_bessel_kl_scaled_array

for sf in (:sf_bessel_Jn_array, :sf_bessel_Yn_array,
    :sf_bessel_In_array, :sf_bessel_In_scaled_array,
    :sf_bessel_Kn_array, :sf_bessel_Kn_scaled_array,
    )
    @eval begin
        function $sf(nmin::Integer, nmax::Integer, x::Real)
            nmax>=nmin ? nothing : throw(DomainError())
            result_array = Array(Cdouble, nmax-nmin+1)
            errno = ccall( ($(string("gsl_", sf)), libgsl), Cint, (Cint, Cint,
                Cdouble, Ref{Cdouble}), nmin, nmax, x, result_array )
            if errno!= 0 throw(GSL_ERROR(errno)) end
            return result_array
        end
    end
end


for sf in (
    :sf_bessel_jl_array, :sf_bessel_jl_steed_array,
    :sf_bessel_yl_array, :sf_bessel_il_scaled_array,
    :sf_bessel_kl_scaled_array,
    )
    @eval begin
        function $sf(nmax::Integer, x::Real)
            nmax>=0 ? nothing : throw(DomainError())
            result_array = Array(Cdouble, nmax+1)
            errno = ccall( ($(string("gsl_", sf)), libgsl), Cint, (Cint,
                Cdouble, Ref{Cdouble}), nmax, x, result_array )
            if errno!= 0 throw(GSL_ERROR(errno)) end
            return result_array
        end
        Compat.@dep_vectorize_2arg Number $sf
    end
end
