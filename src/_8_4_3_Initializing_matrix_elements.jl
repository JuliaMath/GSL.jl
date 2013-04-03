#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 8.4.3 Initializing matrix elements #
######################################
export matrix_set_all, matrix_set_zero, matrix_set_identity


# This function sets all the elements of the matrix m to the value x.
# 
#   Returns: Void
function matrix_set_all(x::Real)
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_set_all, :libgsl), Void, (Ptr{gsl_matrix},
        Cdouble), m, x )
    return unsafe_ref(m)[1]
end
@vectorize_1arg Number matrix_set_all


# This function sets all the elements of the matrix m to zero.
# 
#   Returns: Void
function matrix_set_zero()
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_set_zero, :libgsl), Void, (Ptr{gsl_matrix}, ), m )
    return unsafe_ref(m)[1]
end


# This function sets the elements of the matrix m to the corresponding elements
# of the identity matrix, m(i,j) = \delta(i,j), i.e. a unit diagonal with all
# off-diagonal elements zero.  This applies to both square and rectangular
# matrices.
# 
#   Returns: Void
function matrix_set_identity()
    m = convert(Ptr{gsl_matrix}, Array(gsl_matrix, 1))
    ccall( (:gsl_matrix_set_identity, :libgsl), Void, (Ptr{gsl_matrix}, ),
        m )
    return unsafe_ref(m)[1]
end
