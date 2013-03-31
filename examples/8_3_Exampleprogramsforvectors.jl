#######################################
# 8.3.11 Example programs for vectors #
#######################################
#This program shows how to allocate, initialize and read from a vector using the functions gsl_vector_alloc, gsl_vector_set and gsl_vector_get.
using GSL 
println(methods(gsl_vector_set))
v = gsl_vector_alloc(3)

for i=0:2
    gsl_vector_set(v, i, 1.23 + i)
end 

try
    for i=0:99 # The default error handler is to ignore errors; this won't fail
        @printf("v_%d = %f\n", i, gsl_vector_get(v, i))
    end
catch
    nothing
end
    
gsl_vector_free(v)

