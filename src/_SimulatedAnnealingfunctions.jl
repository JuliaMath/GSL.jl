#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################################
# 25.2 Simulated Annealing functions #
######################################
export gsl_siman_solve, gsl_siman_Efunc_t, gsl_siman_step_t,
       gsl_siman_metric_t, gsl_siman_print_t, gsl_siman_copy_t,
       gsl_siman_copy_construct_t, gsl_siman_destroy_t, gsl_siman_params_t,
       gsl_siman_params_t, gsl_siman_params_t, gsl_siman_params_t


# This function performs a simulated annealing search through a given space.
# The space is specified by providing the functions Ef and distance.  The
# simulated annealing steps are generated using the random number generator r
# and the function take_step.          The starting configuration of the system
# should be given by x0_p.  The routine offers two modes for updating
# configurations, a fixed-size mode and a variable-size mode.  In the fixed-
# size mode the configuration is stored as a single block of memory of size
# element_size.  Copies of this configuration are created, copied and destroyed
# internally using the standard library functions malloc, memcpy and free.  The
# function pointers copyfunc, copy_constructor and destructor should be null
# pointers in fixed-size mode.  In the variable-size mode the functions
# copyfunc, copy_constructor and destructor are used to create, copy and
# destroy configurations internally.  The variable element_size should be zero
# in the variable-size mode.          The params structure (described below)
# controls the run by providing the temperature schedule and other tunable
# parameters to the algorithm.          On exit the best result achieved during
# the search is placed in *x0_p.  If the annealing process has been successful
# this should be a good approximation to the optimal point in the space.
# If the function pointer print_position is not null, a debugging log will be
# printed to stdout with the following columns:                 #-iter  #-evals
# temperature  position  energy  best_energy  and the output of the function
# print_position itself.  If print_position is null then no information is
# printed.
# 
#   Returns: Void
function gsl_siman_solve (r::Ptr{gsl_rng}, x0_p::Ptr{Void}, Ef::gsl_siman_Efunc_t, take_step::gsl_siman_step_t, distance::gsl_siman_metric_t, print_position::gsl_siman_print_t, copyfunc::gsl_siman_copy_t, copy_constructor::gsl_siman_copy_construct_t, destructor::gsl_siman_destroy_t, element_size::Csize_t, params::gsl_siman_params_t)
    ccall( (:gsl_siman_solve, "libgsl"), Void, (Ptr{gsl_rng}, Ptr{Void},
        gsl_siman_Efunc_t, gsl_siman_step_t, gsl_siman_metric_t,
        gsl_siman_print_t, gsl_siman_copy_t, gsl_siman_copy_construct_t,
        gsl_siman_destroy_t, Csize_t, gsl_siman_params_t), r, x0_p, Ef,
        take_step, distance, print_position, copyfunc, copy_constructor,
        destructor, element_size, params )
end


# This function type should return the energy of a configuration xp.
# double (*gsl_siman_Efunc_t) (void *xp)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_Efunc_t ()
    ccall( (:gsl_siman_Efunc_t, "libgsl"), , () )
end


# This function type should modify the configuration xp using a random step
# taken from the generator r, up to a maximum distance of step_size.
# void (*gsl_siman_step_t) (const gsl_rng *r, void *xp,
# double step_size)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_step_t ()
    ccall( (:gsl_siman_step_t, "libgsl"), , () )
end


# This function type should return the distance between two configurations xp
# and yp.                 double (*gsl_siman_metric_t) (void *xp, void *yp)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_metric_t ()
    ccall( (:gsl_siman_metric_t, "libgsl"), , () )
end


# This function type should print the contents of the configuration xp.
# void (*gsl_siman_print_t) (void *xp)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_print_t ()
    ccall( (:gsl_siman_print_t, "libgsl"), , () )
end


# This function type should copy the configuration source into dest.
# void (*gsl_siman_copy_t) (void *source, void *dest)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_copy_t ()
    ccall( (:gsl_siman_copy_t, "libgsl"), , () )
end


# This function type should create a new copy of the configuration xp.
# void * (*gsl_siman_copy_construct_t) (void *xp)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_copy_construct_t ()
    ccall( (:gsl_siman_copy_construct_t, "libgsl"), , () )
end


# This function type should destroy the configuration xp, freeing its memory.
# void (*gsl_siman_destroy_t) (void *xp)
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_destroy_t ()
    ccall( (:gsl_siman_destroy_t, "libgsl"), , () )
end


# These are the parameters that control a run of gsl_siman_solve.  This
# structure contains all the information needed to control the search, beyond
# the energy function, the step function and the initial guess.             int
# n_triesThe number of points to try for each step.            int
# iters_fixed_TThe number of iterations at each temperature.            double
# step_sizeThe maximum step size in the random walk.            double k,
# t_initial, mu_t, t_minThe parameters of the Boltzmann distribution and
# cooling schedule.
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_params_t ()
    ccall( (:gsl_siman_params_t, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_params_t ()
    ccall( (:gsl_siman_params_t, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_params_t ()
    ccall( (:gsl_siman_params_t, "libgsl"), , () )
end


# 
# 
#   Returns: 
#XXX Unknown output type 
function gsl_siman_params_t ()
    ccall( (:gsl_siman_params_t, "libgsl"), , () )
end