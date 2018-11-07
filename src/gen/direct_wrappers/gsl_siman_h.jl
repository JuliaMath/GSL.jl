#
# This code is auto generated from the GSL headers, do not edit!
#


#### gsl_siman.h ##############################################################


@doc md"""
    siman_solve(r, x0_p, Ef, take_step, distance, print_position, copyfunc, copy_constructor, destructor, element_size, params) -> Cvoid

C signature:
`void gsl_siman_solve(const gsl_rng * r, void *x0_p, gsl_siman_Efunc_t Ef, gsl_siman_step_t take_step, gsl_siman_metric_t distance, gsl_siman_print_t print_position, gsl_siman_copy_t copyfunc, gsl_siman_copy_construct_t copy_constructor, gsl_siman_destroy_t destructor, size_t element_size, gsl_siman_params_t params)`

GSL documentation:

### `void gsl_siman_solve (const gsl_rng * r, void * x0_p, gsl_siman_Efunc_t Ef, gsl_siman_step_t take_step, gsl_siman_metric_t distance, gsl_siman_print_t print_position, gsl_siman_copy_t copyfunc, gsl_siman_copy_construct_t copy_constructor, gsl_siman_destroy_t destructor, size_t element_size, gsl_siman_params_t params)`

> This function performs a simulated annealing search through a given
> space. The space is specified by providing the functions `Ef` and
> `distance`. The simulated annealing steps are generated using the
> random number generator `r` and the function `take_step`.
>
> The starting configuration of the system should be given by `x0_p`.
> The routine offers two modes for updating configurations, a fixed-size
> mode and a variable-size mode. In the fixed-size mode the
> configuration is stored as a single block of memory of size
> `element_size`. Copies of this configuration are created, copied and
> destroyed internally using the standard library functions `malloc`,
> `memcpy` and `free`. The function pointers `copyfunc`,
> `copy_constructor` and `destructor` should be null pointers in
> fixed-size mode. In the variable-size mode the functions `copyfunc`,
> `copy_constructor` and `destructor` are used to create, copy and
> destroy configurations internally. The variable `element_size` should
> be zero in the variable-size mode.
>
> The `params` structure (described below) controls the run by providing
> the temperature schedule and other tunable parameters to the
> algorithm.
>
> On exit the best result achieved during the search is placed in
> `x0_p`. If the annealing process has been successful this should be a
> good approximation to the optimal point in the space.
>
> If the function pointer `print_position` is not null, a debugging log
> will be printed to `stdout` with the following columns:
>
>     #-iter  #-evals  temperature  position  energy  best_energy
>
> and the output of the function `print_position` itself. If
> `print_position` is null then no information is printed.

The simulated annealing routines require several user-specified
functions to define the configuration space and energy function. The
prototypes for these functions are given below.

"""
function siman_solve(r, x0_p, Ef, take_step, distance, print_position, copyfunc, copy_constructor, destructor, element_size, params)
    ccall((:gsl_siman_solve, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, gsl_siman_Efunc_t, gsl_siman_step_t, gsl_siman_metric_t, gsl_siman_print_t, gsl_siman_copy_t, gsl_siman_copy_construct_t, gsl_siman_destroy_t, Csize_t, gsl_siman_params_t), r, x0_p, Ef, take_step, distance, print_position, copyfunc, copy_constructor, destructor, element_size, params)
end

@doc md"""
    siman_solve_many(r, x0_p, Ef, take_step, distance, print_position, element_size, params) -> Cvoid

C signature:
`void gsl_siman_solve_many (const gsl_rng * r, void *x0_p, gsl_siman_Efunc_t Ef, gsl_siman_step_t take_step, gsl_siman_metric_t distance, gsl_siman_print_t print_position, size_t element_size, gsl_siman_params_t params)`
"""
function siman_solve_many(r, x0_p, Ef, take_step, distance, print_position, element_size, params)
    ccall((:gsl_siman_solve_many, libgsl), Cvoid, (Ref{gsl_rng}, Ptr{Cvoid}, gsl_siman_Efunc_t, gsl_siman_step_t, gsl_siman_metric_t, gsl_siman_print_t, Csize_t, gsl_siman_params_t), r, x0_p, Ef, take_step, distance, print_position, element_size, params)
end

