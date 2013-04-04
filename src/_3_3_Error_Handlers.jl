#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
######################
# 3.3 Error Handlers #
######################
export gsl_error_handler_t, set_error_handler, set_error_handler_off








type gsl_error_handler_t
end


# This function sets a new error handler, new_handler, for the GSL library
# routines.  The previous handler is returned (so that you can restore it
# later).  Note that the pointer to a user defined error handler function is
# stored in a static variable, so there can be only one error handler per
# program.  This function should be not be used in multi-threaded programs
# except to set up a program-wide error handler from a master thread.  The
# following example shows how to set and restore a new error handler,
# /* save original handler, install new handler */           old_handler =
# gsl_set_error_handler (&my_handler);                      /* code uses new
# handler */           .....                      /* restore original handler
# */           gsl_set_error_handler (old_handler);  To use the default
# behavior (abort on error) set the error handler to NULL,
# old_handler = gsl_set_error_handler (NULL);
# 
#   Returns: Ptr{gsl_error_handler_t}
function set_error_handler(new_handler::Ptr{gsl_error_handler_t})
    output_ptr = ccall( (:gsl_set_error_handler, :libgsl),
        Ptr{gsl_error_handler_t}, (Ptr{gsl_error_handler_t}, ), new_handler )
end


# This function turns off the error handler by defining an error handler which
# does nothing. This will cause the program to continue after any error, so the
# return values from any library routines must be checked.  This is the
# recommended behavior for production programs.  The previous handler is
# returned (so that you can restore it later).
# 
#   Returns: Ptr{gsl_error_handler_t}
function set_error_handler_off()
    output_ptr = ccall( (:gsl_set_error_handler_off, :libgsl),
        Ptr{gsl_error_handler_t}, () )
end
