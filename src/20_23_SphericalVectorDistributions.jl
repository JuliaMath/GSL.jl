#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
########################################
# 20.23 Spherical Vector Distributions #
########################################
export ran_dir_2d, ran_dir_2d_trig_method, ran_dir_3d,
       ran_dir_nd

for ran_dir in (:ran_dir_2d, :ran_dir_2d_trig_method)
    @eval begin
        function ($ran_dir)(r::Ref{Cvoid})
            x = Ref{Cdouble}()
            y = Ref{Cdouble}()
            ccall( ($(string("gsl_", ran_dir)), libgsl), Cvoid, (Ref{Cvoid}, Ref{Cdouble},
                Ref{Cdouble}), r, x, y)
            return x[1], y[1]
        end
    end
end


# This function returns a random direction vector v = (x,y,z) in three
# dimensions.  The vector is normalized such that |v|^2 = x^2 + y^2 + z^2 = 1.
# The method employed is due to Robert E. Knop (CACM 13, 326 (1970)), and
# explained in Knuth, v2, 3rd ed, p136.  It uses the surprising fact that the
# distribution projected along any axis is actually uniform (this is only true
# for 3 dimensions).
#
#   Returns: Cvoid
function ran_dir_3d(r::Ref{Cvoid})
    x = Ref{Cdouble}()
    y = Ref{Cdouble}()
    z = Ref{Cdouble}()
    ccall( (:gsl_ran_dir_3d, libgsl), Cvoid, (Ref{Cvoid}, Ref{Cdouble},
        Ref{Cdouble}, Ref{Cdouble}), r, x, y, z )
    return x[1], y[1], z[1]
end


# This function returns a random direction vector  v = (x_1,x_2,...,x_n) in n
# dimensions.  The vector is normalized such that  |v|^2 = x_1^2 + x_2^2 + ...
# + x_n^2 = 1.  The method uses the fact that a multivariate Gaussian
# distribution is spherically symmetric.  Each component is generated to have a
# Gaussian distribution, and then the components are normalized.  The method is
# described by Knuth, v2, 3rd ed, p135–136, and attributed to G. W. Brown,
# Modern Mathematics for the Engineer (1956).
#
#   Returns: Cvoid
function ran_dir_nd(r::Ref{Cvoid}, n::Csize_t)
    x = Vector{Cdouble}(undef, n)
    ccall( (:gsl_ran_dir_nd, libgsl), Cvoid, (Ref{Cvoid}, Csize_t,
        Ref{Cdouble}), r, n, x)
    return x
end
