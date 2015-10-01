#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
####################################################
# 18.5 Auxiliary random number generator functions #
####################################################
export rng_name, rng_max, rng_min, rng_state, rng_size, rng_types_setup








# This function returns a pointer to the name of the generator.  For example,
# printf ("r is a '%s' generator\n",                   gsl_rng_name (r));
# would print something like r is a 'taus' generator.
# 
#   Returns: Ptr{Cchar}
function rng_name(r::Ptr{gsl_rng})
    output_string = output_ptr = ccall( (:gsl_rng_name, libgsl),
        Ptr{Cchar}, (Ptr{gsl_rng}, ), r )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
    bytestring(output_string)
end


# gsl_rng_max returns the largest value that gsl_rng_get can return.
# 
#   Returns: Culong
function rng_max(r::Ptr{gsl_rng})
    ccall( (:gsl_rng_max, libgsl), Culong, (Ptr{gsl_rng}, ), r )
end


# gsl_rng_min returns the smallest value that gsl_rng_get can return.  Usually
# this value is zero.  There are some generators with algorithms that cannot
# return zero, and for these generators the minimum value is 1.
# 
#   Returns: Culong
function rng_min(r::Ptr{gsl_rng})
    ccall( (:gsl_rng_min, libgsl), Culong, (Ptr{gsl_rng}, ), r )
end


# These functions return a pointer to the state of generator r and its size.
# You can use this information to access the state directly.  For example, the
# following code will write the state of a generator to a stream,
# void * state = gsl_rng_state (r);           size_t n = gsl_rng_size (r);
# fwrite (state, n, 1, stream);
# 
#   Returns: Ptr{Void}
function rng_state(r::Ptr{gsl_rng})
    output_ptr = ccall( (:gsl_rng_state, libgsl), Ptr{Void},
        (Ptr{gsl_rng}, ), r )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end


# These functions return a pointer to the state of generator r and its size.
# You can use this information to access the state directly.  For example, the
# following code will write the state of a generator to a stream,
# void * state = gsl_rng_state (r);           size_t n = gsl_rng_size (r);
# fwrite (state, n, 1, stream);
# 
#   Returns: Csize_t
function rng_size(r::Ptr{gsl_rng})
    ccall( (:gsl_rng_size, libgsl), Csize_t, (Ptr{gsl_rng}, ), r )
end


# This function returns a pointer to an array of all the available generator
# types, terminated by a null pointer. The function should be called once at
# the start of the program, if needed.  The following code fragment shows how
# to iterate over the array of generator types to print the names of the
# available algorithms,                 const gsl_rng_type **t, **t0;
# t0 = gsl_rng_types_setup ();                      printf ("Available
# generators:\n");                      for (t = t0; *t != 0; t++)
# {               printf ("%s\n", (*t)->name);             }
# 
#   Returns: Ptr{Ptr{gsl_rng_type}}
function rng_types_setup()
    output_ptr = ccall( (:gsl_rng_types_setup, libgsl),
        Ptr{Ptr{gsl_rng_type}}, () )
    output_ptr==C_NULL ? throw(GSL_ERROR(8)) : output_ptr
end
