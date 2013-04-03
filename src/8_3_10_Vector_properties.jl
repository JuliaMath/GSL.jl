#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
############################
# 8.3.10 Vector properties #
############################
export vector_isnull, vector_ispos, vector_isneg,
       vector_isnonneg, vector_equal


# These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
#   Returns: Cint
function vector_isnull(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_isnull, :libgsl), Cint,
        (Ptr{gsl_vector}, ), v )
end


# These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
#   Returns: Cint
function vector_ispos(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_ispos, :libgsl), Cint,
        (Ptr{gsl_vector}, ), v )
end


# These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
#   Returns: Cint
function vector_isneg(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_isneg, :libgsl), Cint,
        (Ptr{gsl_vector}, ), v )
end


# These functions return 1 if all the elements of the vector v are zero,
# strictly positive, strictly negative, or non-negative respectively, and 0
# otherwise.
# 
#   Returns: Cint
function vector_isnonneg(v::Ptr{gsl_vector})
    ccall( (:gsl_vector_isnonneg, :libgsl), Cint,
        (Ptr{gsl_vector}, ), v )
end


# This function returns 1 if the vectors u and v are equal (by comparison of
# element values) and 0 otherwise.
# 
#   Returns: Cint
function vector_equal(u::Ptr{gsl_vector}, v::Ptr{gsl_vector})
    ccall( (:gsl_vector_equal, :libgsl), Cint,
        (Ptr{gsl_vector}, Ptr{gsl_vector}), u, v )
end
