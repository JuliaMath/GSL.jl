#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 13.1.1 Level 1 #
##################
export gsl_blas_sdsdot, gsl_blas_sdot, gsl_blas_dsdot, gsl_blas_ddot,
       gsl_blas_cdotu, gsl_blas_zdotu, gsl_blas_cdotc, gsl_blas_zdotc,
       gsl_blas_snrm2, gsl_blas_dnrm2, gsl_blas_scnrm2, gsl_blas_dznrm2,
       gsl_blas_sasum, gsl_blas_dasum, gsl_blas_scasum, gsl_blas_dzasum,
       gsl_blas_isamax, gsl_blas_idamax, gsl_blas_icamax, gsl_blas_izamax,
       gsl_blas_sswap, gsl_blas_dswap, gsl_blas_cswap, gsl_blas_zswap,
       gsl_blas_scopy, gsl_blas_dcopy, gsl_blas_ccopy, gsl_blas_zcopy,
       gsl_blas_saxpy, gsl_blas_daxpy, gsl_blas_caxpy, gsl_blas_zaxpy,
       gsl_blas_sscal, gsl_blas_dscal, gsl_blas_cscal, gsl_blas_zscal,
       gsl_blas_csscal, gsl_blas_zdscal, gsl_blas_srotg, gsl_blas_drotg,
       gsl_blas_srot, gsl_blas_drot, gsl_blas_srotmg, gsl_blas_drotmg,
       gsl_blas_srotm, gsl_blas_drotm


# This function computes the sum \alpha + x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function gsl_blas_sdsdot (alpha::Cfloat, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, result::Ptr{Cfloat})
    ccall( (:gsl_blas_sdsdot, "libgsl"), Cint, (Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{Cfloat}), alpha, x,
        y, result )
end


# These functions compute the scalar product x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function gsl_blas_sdot (x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, result::Ptr{Cfloat})
    ccall( (:gsl_blas_sdot, "libgsl"), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}, Ptr{Cfloat}), x, y, result )
end


# These functions compute the scalar product x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function gsl_blas_dsdot (x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, result::Ptr{Cdouble})
    ccall( (:gsl_blas_dsdot, "libgsl"), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}, Ptr{Cdouble}), x, y, result )
end


# These functions compute the scalar product x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function gsl_blas_ddot (x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, result::Ptr{Cdouble})
    ccall( (:gsl_blas_ddot, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Ptr{Cdouble}), x, y, result )
end


# These functions compute the complex scalar product x^T y for the vectors x
# and y, returning the result in dotu
# 
#   Returns: Cint
function gsl_blas_cdotu (x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float}, dotu::Ptr{gsl_complex_float})
    ccall( (:gsl_blas_cdotu, "libgsl"), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
        Ptr{gsl_complex_float}), x, y, dotu )
end


# These functions compute the complex scalar product x^T y for the vectors x
# and y, returning the result in dotu
# 
#   Returns: Cint
function gsl_blas_zdotu (x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex}, dotu::Ptr{gsl_complex})
    ccall( (:gsl_blas_zdotu, "libgsl"), Cint, (Ptr{gsl_vector_complex},
        Ptr{gsl_vector_complex}, Ptr{gsl_complex}), x, y, dotu )
end


# These functions compute the complex conjugate scalar product x^H y for the
# vectors x and y, returning the result in dotc
# 
#   Returns: Cint
function gsl_blas_cdotc (x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float}, dotc::Ptr{gsl_complex_float})
    ccall( (:gsl_blas_cdotc, "libgsl"), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
        Ptr{gsl_complex_float}), x, y, dotc )
end


# These functions compute the complex conjugate scalar product x^H y for the
# vectors x and y, returning the result in dotc
# 
#   Returns: Cint
function gsl_blas_zdotc (x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex}, dotc::Ptr{gsl_complex})
    ccall( (:gsl_blas_zdotc, "libgsl"), Cint, (Ptr{gsl_vector_complex},
        Ptr{gsl_vector_complex}, Ptr{gsl_complex}), x, y, dotc )
end


# These functions compute the Euclidean norm  ||x||_2 = \sqrt {\sum x_i^2} of
# the vector x.
# 
#   {$||x||_2 = \sqrt{\sum x_i^2}$} 
#   Returns: Cfloat
function gsl_blas_snrm2 (x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_snrm2, "libgsl"), Cfloat, (Ptr{gsl_vector_float}, ),
        x )
end


# These functions compute the Euclidean norm  ||x||_2 = \sqrt {\sum x_i^2} of
# the vector x.
# 
#   Returns: Cdouble
function gsl_blas_dnrm2 (x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dnrm2, "libgsl"), Cdouble, (Ptr{gsl_vector}, ), x )
end


# These functions compute the Euclidean norm of the complex vector x,
# ||x||_2 = \sqrt {\sum (\Re(x_i)^2 + \Im(x_i)^2)}.
# 
#   Returns: Cfloat
function gsl_blas_scnrm2 (x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_scnrm2, "libgsl"), Cfloat,
        (Ptr{gsl_vector_complex_float}, ), x )
end


# These functions compute the Euclidean norm of the complex vector x,
# ||x||_2 = \sqrt {\sum (\Re(x_i)^2 + \Im(x_i)^2)}.
# 
#   Returns: Cdouble
function gsl_blas_dznrm2 (x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_dznrm2, "libgsl"), Cdouble, (Ptr{gsl_vector_complex},
        ), x )
end


# These functions compute the absolute sum \sum |x_i| of the elements of the
# vector x.
# 
#   Returns: Cfloat
function gsl_blas_sasum (x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_sasum, "libgsl"), Cfloat, (Ptr{gsl_vector_float}, ),
        x )
end


# These functions compute the absolute sum \sum |x_i| of the elements of the
# vector x.
# 
#   Returns: Cdouble
function gsl_blas_dasum (x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dasum, "libgsl"), Cdouble, (Ptr{gsl_vector}, ), x )
end


# These functions compute the sum of the magnitudes of the real and imaginary
# parts of the complex vector x,  \sum |\Re(x_i)| + |\Im(x_i)|.
# 
#   {$\sum \left( |\Re(x_i)| + |\Im(x_i)| \right)$} 
#   Returns: Cfloat
function gsl_blas_scasum (x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_scasum, "libgsl"), Cfloat,
        (Ptr{gsl_vector_complex_float}, ), x )
end


# These functions compute the sum of the magnitudes of the real and imaginary
# parts of the complex vector x,  \sum |\Re(x_i)| + |\Im(x_i)|.
# 
#   Returns: Cdouble
function gsl_blas_dzasum (x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_dzasum, "libgsl"), Cdouble, (Ptr{gsl_vector_complex},
        ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
#XXX Unknown output type CBLAS_INDEX_t
function gsl_blas_isamax (x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_isamax, "libgsl"), CBLAS_INDEX_t,
        (Ptr{gsl_vector_float}, ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
#XXX Unknown output type CBLAS_INDEX_t
function gsl_blas_idamax (x::Ptr{gsl_vector})
    ccall( (:gsl_blas_idamax, "libgsl"), CBLAS_INDEX_t, (Ptr{gsl_vector},
        ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
#XXX Unknown output type CBLAS_INDEX_t
function gsl_blas_icamax (x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_icamax, "libgsl"), CBLAS_INDEX_t,
        (Ptr{gsl_vector_complex_float}, ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
#XXX Unknown output type CBLAS_INDEX_t
function gsl_blas_izamax (x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_izamax, "libgsl"), CBLAS_INDEX_t,
        (Ptr{gsl_vector_complex}, ), x )
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_sswap (x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_sswap, "libgsl"), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}), x, y )
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_dswap (x::Ptr{gsl_vector}, y::Ptr{gsl_vector})
    ccall( (:gsl_blas_dswap, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), x, y )
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_cswap (x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_cswap, "libgsl"), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float}), x, y )
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_zswap (x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_zswap, "libgsl"), Cint, (Ptr{gsl_vector_complex},
        Ptr{gsl_vector_complex}), x, y )
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function gsl_blas_scopy (x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_scopy, "libgsl"), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}), x, y )
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function gsl_blas_dcopy (x::Ptr{gsl_vector}, y::Ptr{gsl_vector})
    ccall( (:gsl_blas_dcopy, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), x, y )
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function gsl_blas_ccopy (x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_ccopy, "libgsl"), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float}), x, y )
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function gsl_blas_zcopy (x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_zcopy, "libgsl"), Cint, (Ptr{gsl_vector_complex},
        Ptr{gsl_vector_complex}), x, y )
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_saxpy (alpha::Cfloat, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_saxpy, "libgsl"), Cint, (Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_vector_float}), alpha, x, y )
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_daxpy (alpha::Cdouble, x::Ptr{gsl_vector}, y::Ptr{gsl_vector})
    ccall( (:gsl_blas_daxpy, "libgsl"), Cint, (Cdouble, Ptr{gsl_vector},
        Ptr{gsl_vector}), alpha, x, y )
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_caxpy (alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_caxpy, "libgsl"), Cint, (gsl_complex_float,
        Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float}), alpha,
        x, y )
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function gsl_blas_zaxpy (alpha::gsl_complex, x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_zaxpy, "libgsl"), Cint, (gsl_complex,
        Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}), alpha, x, y )
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function gsl_blas_sscal (alpha::Cfloat, x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_sscal, "libgsl"), Void, (Cfloat,
        Ptr{gsl_vector_float}), alpha, x )
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function gsl_blas_dscal (alpha::Cdouble, x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dscal, "libgsl"), Void, (Cdouble, Ptr{gsl_vector}),
        alpha, x )
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function gsl_blas_cscal (alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_cscal, "libgsl"), Void, (gsl_complex_float,
        Ptr{gsl_vector_complex_float}), alpha, x )
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function gsl_blas_zscal (alpha::gsl_complex, x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_zscal, "libgsl"), Void, (gsl_complex,
        Ptr{gsl_vector_complex}), alpha, x )
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function gsl_blas_csscal (alpha::Cfloat, x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_csscal, "libgsl"), Void, (Cfloat,
        Ptr{gsl_vector_complex_float}), alpha, x )
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function gsl_blas_zdscal (alpha::Cdouble, x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_zdscal, "libgsl"), Void, (Cdouble,
        Ptr{gsl_vector_complex}), alpha, x )
end


# These functions compute a Givens rotation (c,s) which zeroes the vector
# (a,b),                 [  c  s ] [ a ] = [ r ]           [ -s  c ] [ b ]   [
# 0 ]  The variables a and b are overwritten by the routine.
# 
#   Returns: Cint
function gsl_blas_srotg (a::Cfloat)
    ccall( (:gsl_blas_srotg, "libgsl"), Cint, (Cfloat, ), a )
end


# These functions compute a Givens rotation (c,s) which zeroes the vector
# (a,b),                 [  c  s ] [ a ] = [ r ]           [ -s  c ] [ b ]   [
# 0 ]  The variables a and b are overwritten by the routine.
# 
#   Returns: Cint
function gsl_blas_drotg (a::Cdouble)
    ccall( (:gsl_blas_drotg, "libgsl"), Cint, (Cdouble, ), a )
end


# These functions apply a Givens rotation (x', y') = (c x + s y, -s x + c y) to
# the vectors x, y.
# 
#   Returns: Cint
function gsl_blas_srot (x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, c::Cfloat, s::Cfloat)
    ccall( (:gsl_blas_srot, "libgsl"), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}, Cfloat, Cfloat), x, y, c, s )
end


# These functions apply a Givens rotation (x', y') = (c x + s y, -s x + c y) to
# the vectors x, y.
# 
#   Returns: Cint
function gsl_blas_drot (x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, c::Cdouble, s::Cdouble)
    ccall( (:gsl_blas_drot, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Cdouble, Cdouble), x, y, c, s )
end


# These functions compute a modified Givens transformation.  The modified
# Givens transformation is defined in the original Level-1 blas specification,
# given in the references.
# 
#   Returns: Cint
function gsl_blas_srotmg (d1::Cfloat)
    ccall( (:gsl_blas_srotmg, "libgsl"), Cint, (Cfloat, ), d1 )
end


# These functions compute a modified Givens transformation.  The modified
# Givens transformation is defined in the original Level-1 blas specification,
# given in the references.
# 
#   Returns: Cint
function gsl_blas_drotmg (d1::Cdouble)
    ccall( (:gsl_blas_drotmg, "libgsl"), Cint, (Cdouble, ), d1 )
end


# These functions apply a modified Givens transformation.
# 
#   Returns: Cint
function gsl_blas_srotm (x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float}, P::Cfloat)
    ccall( (:gsl_blas_srotm, "libgsl"), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}, Cfloat), x, y, P )
end


# These functions apply a modified Givens transformation.
# 
#   Returns: Cint
function gsl_blas_drotm (x::Ptr{gsl_vector}, y::Ptr{gsl_vector}, P::Cdouble)
    ccall( (:gsl_blas_drotm, "libgsl"), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Cdouble), x, y, P )
end