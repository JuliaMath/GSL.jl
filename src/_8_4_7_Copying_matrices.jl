#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##########################
# 8.4.7 Copying matrices #
##########################
export gsl_matrix_memcpy, gsl_matrix_swap


# This function copies the elements of the matrix src into the matrix dest.
# The two matrices must have the same size.
# 
#   Returns: Cint
function gsl_matrix_memcpy(src::Ptr{gsl_matrix})
    dest = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_memcpy, :libgsl), Cint,
        (Ptr{gsl_matrix}, Ptr{gsl_matrix}), dest, src )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(dest)[1]
end


# This function exchanges the elements of the matrices m1 and m2 by copying.
# The two matrices must have the same size.
# 
#   Returns: Cint
function gsl_matrix_swap()
    m1 = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    m2 = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    gsl_errno = ccall( (:gsl_matrix_swap, :libgsl), Cint, (Ptr{gsl_matrix},
        Ptr{gsl_matrix}), m1, m2 )
    if gsl_errno!= 0 throw(GSL_ERROR(gsl_errno)) end
    return unsafe_ref(m1)[1] ,unsafe_ref(m2)[1]
end
