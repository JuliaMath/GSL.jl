#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################
# 8.3.5 Vector views #
######################
export gsl_vector_subvector, gsl_vector_const_subvector,
       gsl_vector_subvector_with_stride,
       gsl_vector_const_subvector_with_stride, gsl_vector_complex_real,
       gsl_vector_complex_const_real, gsl_vector_complex_imag,
       gsl_vector_complex_const_imag, gsl_vector_view_array,
       gsl_vector_const_view_array, gsl_vector_view_array_with_stride,
       gsl_vector_const_view_array_with_stride














# These functions return a vector view of a subvector of another vector v.  The
# start of the new vector is offset by offset elements from the start of the
# original vector.  The new vector has n elements.  Mathematically, the i-th
# element of the new vector v' is given by,                 v'(i) =
# v->data[(offset + i)*v->stride]  where the index i runs from 0 to n-1.
# The data pointer of the returned vector struct is set to null if the combined
# parameters (offset,n) overrun the end of the original vector.          The
# new vector is only a view of the block underlying the original vector, v.
# The block containing the elements of v is not owned by the new vector.  When
# the view goes out of scope the original vector v and its block will continue
# to exist.  The original memory can only be deallocated by freeing the
# original vector.  Of course, the original vector should not be deallocated
# while the view is still in use.          The function
# gsl_vector_const_subvector is equivalent to gsl_vector_subvector but can be
# used for vectors which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_vector_subvector{gsl_int<:Integer}(offset::gsl_int, n::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_vector_subvector, :libgsl), Void, (Ptr{gsl_vector},
        Csize_t, Csize_t), v, offset, n )
    return unsafe_ref(v)
end


# These functions return a vector view of a subvector of another vector v.  The
# start of the new vector is offset by offset elements from the start of the
# original vector.  The new vector has n elements.  Mathematically, the i-th
# element of the new vector v' is given by,                 v'(i) =
# v->data[(offset + i)*v->stride]  where the index i runs from 0 to n-1.
# The data pointer of the returned vector struct is set to null if the combined
# parameters (offset,n) overrun the end of the original vector.          The
# new vector is only a view of the block underlying the original vector, v.
# The block containing the elements of v is not owned by the new vector.  When
# the view goes out of scope the original vector v and its block will continue
# to exist.  The original memory can only be deallocated by freeing the
# original vector.  Of course, the original vector should not be deallocated
# while the view is still in use.          The function
# gsl_vector_const_subvector is equivalent to gsl_vector_subvector but can be
# used for vectors which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_vector_const_subvector{gsl_int<:Integer}(v::Ptr{gsl_vector}, offset::gsl_int, n::gsl_int)
    ccall( (:gsl_vector_const_subvector, :libgsl), Void, (Ptr{gsl_vector},
        Csize_t, Csize_t), v, offset, n )
end


# These functions return a vector view of a subvector of another vector v with
# an additional stride argument. The subvector is formed in the same way as for
# gsl_vector_subvector but the new vector has n elements with a step-size of
# stride from one element to the next in the original vector.  Mathematically,
# the i-th element of the new vector v' is given by,                 v'(i) =
# v->data[(offset + i*stride)*v->stride]  where the index i runs from 0 to n-1.
# Note that subvector views give direct access to the underlying elements of
# the original vector. For example, the following code will zero the even
# elements of the vector v of length n, while leaving the odd elements
# untouched,                 gsl_vector_view v_even             =
# gsl_vector_subvector_with_stride (v, 0, 2, n/2);
# gsl_vector_set_zero (&v_even.vector);  A vector view can be passed to any
# subroutine which takes a vector argument just as a directly allocated vector
# would be, using &view.vector.  For example, the following code computes the
# norm of the odd elements of v using the blas routine dnrm2,
# gsl_vector_view v_odd             = gsl_vector_subvector_with_stride (v, 1,
# 2, n/2);           double r = gsl_blas_dnrm2 (&v_odd.vector);  The function
# gsl_vector_const_subvector_with_stride is equivalent to
# gsl_vector_subvector_with_stride but can be used for vectors which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_vector_subvector_with_stride{gsl_int<:Integer}(offset::gsl_int, stride::gsl_int, n::gsl_int)
    v = convert(Ptr{gsl_vector}, Array(gsl_vector, 1))
    ccall( (:gsl_vector_subvector_with_stride, :libgsl), Void,
        (Ptr{gsl_vector}, Csize_t, Csize_t, Csize_t), v, offset, stride, n )
    return unsafe_ref(v)
end


# These functions return a vector view of a subvector of another vector v with
# an additional stride argument. The subvector is formed in the same way as for
# gsl_vector_subvector but the new vector has n elements with a step-size of
# stride from one element to the next in the original vector.  Mathematically,
# the i-th element of the new vector v' is given by,                 v'(i) =
# v->data[(offset + i*stride)*v->stride]  where the index i runs from 0 to n-1.
# Note that subvector views give direct access to the underlying elements of
# the original vector. For example, the following code will zero the even
# elements of the vector v of length n, while leaving the odd elements
# untouched,                 gsl_vector_view v_even             =
# gsl_vector_subvector_with_stride (v, 0, 2, n/2);
# gsl_vector_set_zero (&v_even.vector);  A vector view can be passed to any
# subroutine which takes a vector argument just as a directly allocated vector
# would be, using &view.vector.  For example, the following code computes the
# norm of the odd elements of v using the blas routine dnrm2,
# gsl_vector_view v_odd             = gsl_vector_subvector_with_stride (v, 1,
# 2, n/2);           double r = gsl_blas_dnrm2 (&v_odd.vector);  The function
# gsl_vector_const_subvector_with_stride is equivalent to
# gsl_vector_subvector_with_stride but can be used for vectors which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_vector_const_subvector_with_stride{gsl_int<:Integer}(v::Ptr{gsl_vector}, offset::gsl_int, stride::gsl_int, n::gsl_int)
    ccall( (:gsl_vector_const_subvector_with_stride, :libgsl), Void,
        (Ptr{gsl_vector}, Csize_t, Csize_t, Csize_t), v, offset, stride, n )
end


# These functions return a vector view of the real parts of the complex vector
# v.          The function gsl_vector_complex_const_real is equivalent to
# gsl_vector_complex_real but can be used for vectors which are declared const.
# 
#   Returns: Void
#XXX Unknown input type v::Ptr{gsl_vector_complex}
#XXX Coerced type for v::Ptr{Void}
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_vector_complex_real(v::Ptr{Void})
    ccall( (:gsl_vector_complex_real, :libgsl), Void, (Ptr{Void}, ), v )
end


# These functions return a vector view of the real parts of the complex vector
# v.          The function gsl_vector_complex_const_real is equivalent to
# gsl_vector_complex_real but can be used for vectors which are declared const.
# 
#   Returns: Void
#XXX Unknown input type v::Ptr{gsl_vector_complex}
#XXX Coerced type for v::Ptr{Void}
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_vector_complex_const_real(v::Ptr{Void})
    ccall( (:gsl_vector_complex_const_real, :libgsl), Void, (Ptr{Void}, ),
        v )
end


# These functions return a vector view of the imaginary parts of the complex
# vector v.          The function gsl_vector_complex_const_imag is equivalent
# to gsl_vector_complex_imag but can be used for vectors which are declared
# const.
# 
#   Returns: Void
#XXX Unknown input type v::Ptr{gsl_vector_complex}
#XXX Coerced type for v::Ptr{Void}
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_vector_complex_imag(v::Ptr{Void})
    ccall( (:gsl_vector_complex_imag, :libgsl), Void, (Ptr{Void}, ), v )
end


# These functions return a vector view of the imaginary parts of the complex
# vector v.          The function gsl_vector_complex_const_imag is equivalent
# to gsl_vector_complex_imag but can be used for vectors which are declared
# const.
# 
#   Returns: Void
#XXX Unknown input type v::Ptr{gsl_vector_complex}
#XXX Coerced type for v::Ptr{Void}
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_vector_complex_const_imag(v::Ptr{Void})
    ccall( (:gsl_vector_complex_const_imag, :libgsl), Void, (Ptr{Void}, ),
        v )
end


# These functions return a vector view of an array.  The start of the new
# vector is given by base and has n elements.  Mathematically, the i-th element
# of the new vector v' is given by,                 v'(i) = base[i]  where the
# index i runs from 0 to n-1.          The array containing the elements of v
# is not owned by the new vector view.  When the view goes out of scope the
# original array will continue to exist.  The original memory can only be
# deallocated by freeing the original pointer base.  Of course, the original
# array should not be deallocated while the view is still in use.          The
# function gsl_vector_const_view_array is equivalent to gsl_vector_view_array
# but can be used for arrays which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_vector_view_array{gsl_int<:Integer}(n::gsl_int)
    base = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_vector_view_array, :libgsl), Void, (Ptr{Cdouble},
        Csize_t), base, n )
    return unsafe_ref(base)
end


# These functions return a vector view of an array.  The start of the new
# vector is given by base and has n elements.  Mathematically, the i-th element
# of the new vector v' is given by,                 v'(i) = base[i]  where the
# index i runs from 0 to n-1.          The array containing the elements of v
# is not owned by the new vector view.  When the view goes out of scope the
# original array will continue to exist.  The original memory can only be
# deallocated by freeing the original pointer base.  Of course, the original
# array should not be deallocated while the view is still in use.          The
# function gsl_vector_const_view_array is equivalent to gsl_vector_view_array
# but can be used for arrays which are declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_vector_const_view_array{gsl_int<:Integer}(base::Ptr{Cdouble}, n::gsl_int)
    ccall( (:gsl_vector_const_view_array, :libgsl), Void, (Ptr{Cdouble},
        Csize_t), base, n )
end


# These functions return a vector view of an array base with an additional
# stride argument. The subvector is formed in the same way as for
# gsl_vector_view_array but the new vector has n elements with a step-size of
# stride from one element to the next in the original array.  Mathematically,
# the i-th element of the new vector v' is given by,                 v'(i) =
# base[i*stride]  where the index i runs from 0 to n-1.          Note that the
# view gives direct access to the underlying elements of the original array.  A
# vector view can be passed to any subroutine which takes a vector argument
# just as a directly allocated vector would be, using &view.vector.
# The function gsl_vector_const_view_array_with_stride is equivalent to
# gsl_vector_view_array_with_stride but can be used for arrays which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector_view
#XXX Coerced type for output Void
function gsl_vector_view_array_with_stride{gsl_int<:Integer}(stride::gsl_int, n::gsl_int)
    base = convert(Ptr{Cdouble}, Array(Cdouble, 1))
    ccall( (:gsl_vector_view_array_with_stride, :libgsl), Void,
        (Ptr{Cdouble}, Csize_t, Csize_t), base, stride, n )
    return unsafe_ref(base)
end


# These functions return a vector view of an array base with an additional
# stride argument. The subvector is formed in the same way as for
# gsl_vector_view_array but the new vector has n elements with a step-size of
# stride from one element to the next in the original array.  Mathematically,
# the i-th element of the new vector v' is given by,                 v'(i) =
# base[i*stride]  where the index i runs from 0 to n-1.          Note that the
# view gives direct access to the underlying elements of the original array.  A
# vector view can be passed to any subroutine which takes a vector argument
# just as a directly allocated vector would be, using &view.vector.
# The function gsl_vector_const_view_array_with_stride is equivalent to
# gsl_vector_view_array_with_stride but can be used for arrays which are
# declared const.
# 
#   Returns: Void
#XXX Unknown output type gsl_vector__view
#XXX Coerced type for output Void
function gsl_vector_const_view_array_with_stride{gsl_int<:Integer}(base::Ptr{Cdouble}, stride::gsl_int, n::gsl_int)
    ccall( (:gsl_vector_const_view_array_with_stride, :libgsl), Void,
        (Ptr{Cdouble}, Csize_t, Csize_t), base, stride, n )
end
