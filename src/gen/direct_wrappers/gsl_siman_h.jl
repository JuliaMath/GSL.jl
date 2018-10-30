#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_siman.h ##############################################################


"""
    gsl_siman_solve(r, x0_p, Ef, take_step, distance, print_position, copyfunc, copy_constructor, destructor, element_size, params) -> Cvoid

C signature:
`void gsl_siman_solve(const gsl_rng * r, void *x0_p, gsl_siman_Efunc_t Ef, gsl_siman_step_t take_step, gsl_siman_metric_t distance, gsl_siman_print_t print_position, gsl_siman_copy_t copyfunc, gsl_siman_copy_construct_t copy_constructor, gsl_siman_destroy_t destructor, size_t element_size, gsl_siman_params_t params)`
"""
function gsl_siman_solve(r, x0_p, Ef, take_step, distance, print_position, copyfunc, copy_constructor, destructor, element_size, params)
    ccall((:gsl_siman_solve, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, gsl_siman_Efunc_t, gsl_siman_step_t, gsl_siman_metric_t, gsl_siman_print_t, gsl_siman_copy_t, gsl_siman_copy_construct_t, gsl_siman_destroy_t, Csize_t, gsl_siman_params_t), r, x0_p, Ef, take_step, distance, print_position, copyfunc, copy_constructor, destructor, element_size, params)
end

"""
    gsl_siman_solve_many(r, x0_p, Ef, take_step, distance, print_position, element_size, params) -> Cvoid

C signature:
`void gsl_siman_solve_many (const gsl_rng * r, void *x0_p, gsl_siman_Efunc_t Ef, gsl_siman_step_t take_step, gsl_siman_metric_t distance, gsl_siman_print_t print_position, size_t element_size, gsl_siman_params_t params)`
"""
function gsl_siman_solve_many(r, x0_p, Ef, take_step, distance, print_position, element_size, params)
    ccall((:gsl_siman_solve_many, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, gsl_siman_Efunc_t, gsl_siman_step_t, gsl_siman_metric_t, gsl_siman_print_t, Csize_t, gsl_siman_params_t), r, x0_p, Ef, take_step, distance, print_position, element_size, params)
end

