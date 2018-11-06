#######################################
# 8.3.11 Example programs for vectors #
#######################################
#This program shows how to allocate, initialize and read from a vector using the functions vector_alloc, gsl_vector_set and gsl_vector_get.

import GSL
using Printf

v = GSL.vector_alloc(3)

for i=0:2
    GSL.vector_set(v, i, 1.23 + i)
end 

@info("This should fail:")
try
    for i=0:99 # This will faill when index runs out
        @printf("v_%d = %f\n", i, GSL.vector_get(v, i))
    end
catch
    nothing
end
    
GSL.vector_free(v)

