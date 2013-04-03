#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################
# 13.1.1 Level 1 #
##################
export blas_sdsdot, blas_sdot, blas_dsdot, blas_ddot, blas_cdotu, blas_zdotu,
       blas_cdotc, blas_zdotc, blas_snrm2, blas_dnrm2, blas_scnrm2,
       blas_dznrm2, blas_sasum, blas_dasum, blas_scasum, blas_dzasum,
       blas_isamax, blas_idamax, blas_icamax, blas_izamax, blas_sswap,
       blas_dswap, blas_cswap, blas_zswap, blas_scopy, blas_dcopy, blas_ccopy,
       blas_zcopy, blas_saxpy, blas_daxpy, blas_caxpy, blas_zaxpy, blas_sscal,
       blas_dscal, blas_cscal, blas_zscal, blas_csscal, blas_zdscal,
       blas_srotg, blas_drotg, blas_srot, blas_drot, blas_srotmg, blas_drotmg,
       blas_srotm, blas_drotm






# This function computes the sum \alpha + x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function blas_sdsdot(alpha::Real, x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    result = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    errno = ccall( (:gsl_blas_sdsdot, :libgsl), Cint, (Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{Cfloat}), alpha, x,
        y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end


# These functions compute the scalar product x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function blas_sdot(x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    result = convert(Ptr{Cfloat}, Array(Cfloat, 1))
    errno = ccall( (:gsl_blas_sdot, :libgsl), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}, Ptr{Cfloat}), x, y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end


# These functions compute the scalar product x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function blas_dsdot(x::Ptr{gsl_vector_float}, y::Ptr{gsl_vector_float})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_blas_dsdot, :libgsl), Cint,
        (Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Ptr{Cdouble}), x, y,
        result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end


# These functions compute the scalar product x^T y for the vectors x and y,
# returning the result in result.
# 
#   Returns: Cint
function blas_ddot(x::Ptr{gsl_vector}, y::Ptr{gsl_vector})
    result = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    errno = ccall( (:gsl_blas_ddot, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Ptr{Cdouble}), x, y, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(result)[1]
end


# These functions compute the complex scalar product x^T y for the vectors x
# and y, returning the result in dotu
# 
#   Returns: Cint
function blas_cdotu(x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    dotu = convert(Ptr{gsl_complex_float}, Array(gsl_complex_float, 1))
    errno = ccall( (:gsl_blas_cdotu, :libgsl), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
        Ptr{gsl_complex_float}), x, y, dotu )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dotu)[1]
end


# These functions compute the complex scalar product x^T y for the vectors x
# and y, returning the result in dotu
# 
#   Returns: Cint
function blas_zdotu(x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    dotu = convert(Ptr{gsl_complex}, Array(gsl_complex, 1))
    errno = ccall( (:gsl_blas_zdotu, :libgsl), Cint,
        (Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}, Ptr{gsl_complex}),
        x, y, dotu )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dotu)[1]
end


# These functions compute the complex conjugate scalar product x^H y for the
# vectors x and y, returning the result in dotc
# 
#   Returns: Cint
function blas_cdotc(x::Ptr{gsl_vector_complex_float}, y::Ptr{gsl_vector_complex_float})
    dotc = convert(Ptr{gsl_complex_float}, Array(gsl_complex_float, 1))
    errno = ccall( (:gsl_blas_cdotc, :libgsl), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float},
        Ptr{gsl_complex_float}), x, y, dotc )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dotc)[1]
end


# These functions compute the complex conjugate scalar product x^H y for the
# vectors x and y, returning the result in dotc
# 
#   Returns: Cint
function blas_zdotc(x::Ptr{gsl_vector_complex}, y::Ptr{gsl_vector_complex})
    dotc = convert(Ptr{gsl_complex}, Array(gsl_complex, 1))
    errno = ccall( (:gsl_blas_zdotc, :libgsl), Cint,
        (Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}, Ptr{gsl_complex}),
        x, y, dotc )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(dotc)[1]
end


# These functions compute the Euclidean norm  ||x||_2 = \sqrt {\sum x_i^2} of
# the vector x.
# 
#   Returns: Cfloat
function blas_snrm2(x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_snrm2, :libgsl), Cfloat, (Ptr{gsl_vector_float}, ), x
        )
end


# These functions compute the Euclidean norm  ||x||_2 = \sqrt {\sum x_i^2} of
# the vector x.
# 
#   Returns: Cdouble
function blas_dnrm2(x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dnrm2, :libgsl), Cdouble, (Ptr{gsl_vector}, ), x )
end


# These functions compute the Euclidean norm of the complex vector x,
# ||x||_2 = \sqrt {\sum (\Re(x_i)^2 + \Im(x_i)^2)}.
# 
#   Returns: Cfloat
function blas_scnrm2(x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_scnrm2, :libgsl), Cfloat,
        (Ptr{gsl_vector_complex_float}, ), x )
end


# These functions compute the Euclidean norm of the complex vector x,
# ||x||_2 = \sqrt {\sum (\Re(x_i)^2 + \Im(x_i)^2)}.
# 
#   Returns: Cdouble
function blas_dznrm2(x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_dznrm2, :libgsl), Cdouble, (Ptr{gsl_vector_complex},
        ), x )
end


# These functions compute the absolute sum \sum |x_i| of the elements of the
# vector x.
# 
#   Returns: Cfloat
function blas_sasum(x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_sasum, :libgsl), Cfloat, (Ptr{gsl_vector_float}, ), x
        )
end


# These functions compute the absolute sum \sum |x_i| of the elements of the
# vector x.
# 
#   Returns: Cdouble
function blas_dasum(x::Ptr{gsl_vector})
    ccall( (:gsl_blas_dasum, :libgsl), Cdouble, (Ptr{gsl_vector}, ), x )
end


# These functions compute the sum of the magnitudes of the real and imaginary
# parts of the complex vector x,  \sum |\Re(x_i)| + |\Im(x_i)|.
# 
#   Returns: Cfloat
function blas_scasum(x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_scasum, :libgsl), Cfloat,
        (Ptr{gsl_vector_complex_float}, ), x )
end


# These functions compute the sum of the magnitudes of the real and imaginary
# parts of the complex vector x,  \sum |\Re(x_i)| + |\Im(x_i)|.
# 
#   Returns: Cdouble
function blas_dzasum(x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_dzasum, :libgsl), Cdouble, (Ptr{gsl_vector_complex},
        ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
function blas_isamax(x::Ptr{gsl_vector_float})
    ccall( (:gsl_blas_isamax, :libgsl), CBLAS_INDEX_t,
        (Ptr{gsl_vector_float}, ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
function blas_idamax(x::Ptr{gsl_vector})
    ccall( (:gsl_blas_idamax, :libgsl), CBLAS_INDEX_t, (Ptr{gsl_vector}, ),
        x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
function blas_icamax(x::Ptr{gsl_vector_complex_float})
    ccall( (:gsl_blas_icamax, :libgsl), CBLAS_INDEX_t,
        (Ptr{gsl_vector_complex_float}, ), x )
end


# These functions return the index of the largest element of the vector x. The
# largest element is determined by its absolute magnitude for real vectors and
# by the sum of the magnitudes of the real and imaginary parts |\Re(x_i)| +
# |\Im(x_i)| for complex vectors.  If the largest value occurs several times
# then the index of the first occurrence is returned.
# 
#   Returns: CBLAS_INDEX_t
function blas_izamax(x::Ptr{gsl_vector_complex})
    ccall( (:gsl_blas_izamax, :libgsl), CBLAS_INDEX_t,
        (Ptr{gsl_vector_complex}, ), x )
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function blas_sswap()
    x = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_sswap, :libgsl), Cint,
        (Ptr{gsl_vector_float}, Ptr{gsl_vector_float}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function blas_dswap()
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_dswap, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function blas_cswap()
    x = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    y = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_cswap, :libgsl), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end


# These functions exchange the elements of the vectors x and y.
# 
#   Returns: Cint
function blas_zswap()
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    y = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_zswap, :libgsl), Cint,
        (Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function blas_scopy(x::Ptr{gsl_vector_float})
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_scopy, :libgsl), Cint,
        (Ptr{gsl_vector_float}, Ptr{gsl_vector_float}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function blas_dcopy(x::Ptr{gsl_vector})
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_dcopy, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function blas_ccopy(x::Ptr{gsl_vector_complex_float})
    y = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_ccopy, :libgsl), Cint,
        (Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions copy the elements of the vector x into the vector y.
# 
#   Returns: Cint
function blas_zcopy(x::Ptr{gsl_vector_complex})
    y = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_zcopy, :libgsl), Cint,
        (Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}), x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function blas_saxpy(alpha::Real, x::Ptr{gsl_vector_float})
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_saxpy, :libgsl), Cint, (Cfloat,
        Ptr{gsl_vector_float}, Ptr{gsl_vector_float}), alpha, x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function blas_daxpy(alpha::Real, x::Ptr{gsl_vector})
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_daxpy, :libgsl), Cint, (Cdouble,
        Ptr{gsl_vector}, Ptr{gsl_vector}), alpha, x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function blas_caxpy(alpha::gsl_complex_float, x::Ptr{gsl_vector_complex_float})
    y = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    errno = ccall( (:gsl_blas_caxpy, :libgsl), Cint, (gsl_complex_float,
        Ptr{gsl_vector_complex_float}, Ptr{gsl_vector_complex_float}), alpha,
        x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions compute the sum y = \alpha x + y for the vectors x and y.
# 
#   Returns: Cint
function blas_zaxpy(alpha::gsl_complex, x::Ptr{gsl_vector_complex})
    y = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    errno = ccall( (:gsl_blas_zaxpy, :libgsl), Cint, (gsl_complex,
        Ptr{gsl_vector_complex}, Ptr{gsl_vector_complex}), alpha, x, y )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(y)[1]
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function blas_sscal(alpha::Real)
    x = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    ccall( (:gsl_blas_sscal, :libgsl), Void, (Cfloat,
        Ptr{gsl_vector_float}), alpha, x )
    return unsafe_ref(x)[1]
end
@vectorize_1arg Number blas_sscal


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function blas_dscal(alpha::Real)
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_blas_dscal, :libgsl), Void, (Cdouble, Ptr{gsl_vector}),
        alpha, x )
    return unsafe_ref(x)[1]
end
@vectorize_1arg Number blas_dscal


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function blas_cscal(alpha::gsl_complex_float)
    x = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    ccall( (:gsl_blas_cscal, :libgsl), Void, (gsl_complex_float,
        Ptr{gsl_vector_complex_float}), alpha, x )
    return unsafe_ref(x)[1]
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function blas_zscal(alpha::gsl_complex)
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    ccall( (:gsl_blas_zscal, :libgsl), Void, (gsl_complex,
        Ptr{gsl_vector_complex}), alpha, x )
    return unsafe_ref(x)[1]
end


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function blas_csscal(alpha::Real)
    x = convert(Ptr{gsl_vector_complex_float}, Array(gsl_vector_complex_float, 1))
    ccall( (:gsl_blas_csscal, :libgsl), Void, (Cfloat,
        Ptr{gsl_vector_complex_float}), alpha, x )
    return unsafe_ref(x)[1]
end
@vectorize_1arg Number blas_csscal


# These functions rescale the vector x by the multiplicative factor alpha.
# 
#   Returns: Void
function blas_zdscal(alpha::Real)
    x = convert(Ptr{gsl_vector_complex}, Array(gsl_vector_complex, 1))
    ccall( (:gsl_blas_zdscal, :libgsl), Void, (Cdouble,
        Ptr{gsl_vector_complex}), alpha, x )
    return unsafe_ref(x)[1]
end
@vectorize_1arg Number blas_zdscal


# These functions compute a Givens rotation (c,s) which zeroes the vector
# (a,b),                 [  c  s ] [ a ] = [ r ]           [ -s  c ] [ b ]   [
# 0 ]  The variables a and b are overwritten by the routine.
# 
#   Returns: Cint
function blas_srotg(a::Real)
    errno = ccall( (:gsl_blas_srotg, :libgsl), Cint, (Cfloat, ), a )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number blas_srotg


# These functions compute a Givens rotation (c,s) which zeroes the vector
# (a,b),                 [  c  s ] [ a ] = [ r ]           [ -s  c ] [ b ]   [
# 0 ]  The variables a and b are overwritten by the routine.
# 
#   Returns: Cint
function blas_drotg(a::Real)
    errno = ccall( (:gsl_blas_drotg, :libgsl), Cint, (Cdouble, ), a )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number blas_drotg


# These functions apply a Givens rotation (x', y') = (c x + s y, -s x + c y) to
# the vectors x, y.
# 
#   Returns: Cint
function blas_srot(c::Real, s::Real)
    x = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_srot, :libgsl), Cint, (Ptr{gsl_vector_float},
        Ptr{gsl_vector_float}, Cfloat, Cfloat), x, y, c, s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
@vectorize_2arg Number blas_srot


# These functions apply a Givens rotation (x', y') = (c x + s y, -s x + c y) to
# the vectors x, y.
# 
#   Returns: Cint
function blas_drot(c::Real, s::Real)
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_drot, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Cdouble, Cdouble), x, y, c, s )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
@vectorize_2arg Number blas_drot


# These functions compute a modified Givens transformation.  The modified
# Givens transformation is defined in the original Level-1 blas specification,
# given in the references.
# 
#   Returns: Cint
function blas_srotmg(d1::Real)
    errno = ccall( (:gsl_blas_srotmg, :libgsl), Cint, (Cfloat, ), d1 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number blas_srotmg


# These functions compute a modified Givens transformation.  The modified
# Givens transformation is defined in the original Level-1 blas specification,
# given in the references.
# 
#   Returns: Cint
function blas_drotmg(d1::Real)
    errno = ccall( (:gsl_blas_drotmg, :libgsl), Cint, (Cdouble, ), d1 )
    if errno!= 0 throw(GSL_ERROR(errno)) end
end
@vectorize_1arg Number blas_drotmg


# These functions apply a modified Givens transformation.
# 
#   Returns: Cint
function blas_srotm(P::Real)
    x = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    y = convert(Ptr{gsl_vector_float}, Array(gsl_vector_float, 1))
    errno = ccall( (:gsl_blas_srotm, :libgsl), Cint,
        (Ptr{gsl_vector_float}, Ptr{gsl_vector_float}, Cfloat), x, y, P )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
@vectorize_1arg Number blas_srotm


# These functions apply a modified Givens transformation.
# 
#   Returns: Cint
function blas_drotm(P::Real)
    x = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    y = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    errno = ccall( (:gsl_blas_drotm, :libgsl), Cint, (Ptr{gsl_vector},
        Ptr{gsl_vector}, Cdouble), x, y, P )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_ref(x)[1] ,unsafe_ref(y)[1]
end
@vectorize_1arg Number blas_drotm
