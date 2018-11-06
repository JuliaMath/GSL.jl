#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_eigen.h ##############################################################


@doc md"""
    schur_gen_eigvals(A, B, wr1, wr2, wi, scale1, scale2) -> Cint

C signature:
`int gsl_schur_gen_eigvals(const gsl_matrix *A, const gsl_matrix *B, double *wr1, double *wr2, double *wi, double *scale1, double *scale2)`
"""
function schur_gen_eigvals(A, B, wr1, wr2, wi, scale1, scale2)
    ccall((:gsl_schur_gen_eigvals, libgsl), Cint, (Ref{gsl_matrix}, Ref{gsl_matrix}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}, Ref{Cdouble}), A, B, wr1, wr2, wi, scale1, scale2)
end

@doc md"""
    schur_solve_equation(ca, A, z, d1, d2, b, x, s, xnorm, smin) -> Cint

C signature:
`int gsl_schur_solve_equation(double ca, const gsl_matrix *A, double z, double d1, double d2, const gsl_vector *b, gsl_vector *x, double *s, double *xnorm, double smin)`
"""
function schur_solve_equation(ca, A, z, d1, d2, b, x, s, xnorm, smin)
    ccall((:gsl_schur_solve_equation, libgsl), Cint, (Cdouble, Ref{gsl_matrix}, Cdouble, Cdouble, Cdouble, Ref{gsl_vector}, Ref{gsl_vector}, Ref{Cdouble}, Ref{Cdouble}, Cdouble), ca, A, z, d1, d2, b, x, s, xnorm, smin)
end

@doc md"""
    schur_solve_equation_z(ca, A, z, d1, d2, b, x, s, xnorm, smin) -> Cint

C signature:
`int gsl_schur_solve_equation_z(double ca, const gsl_matrix *A, gsl_complex *z, double d1, double d2, const gsl_vector_complex *b, gsl_vector_complex *x, double *s, double *xnorm, double smin)`
"""
function schur_solve_equation_z(ca, A, z, d1, d2, b, x, s, xnorm, smin)
    ccall((:gsl_schur_solve_equation_z, libgsl), Cint, (Cdouble, Ref{gsl_matrix}, Ref{gsl_complex}, Cdouble, Cdouble, Ref{gsl_vector_complex}, Ref{gsl_vector_complex}, Ref{Cdouble}, Ref{Cdouble}, Cdouble), ca, A, z, d1, d2, b, x, s, xnorm, smin)
end

