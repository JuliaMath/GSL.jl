########################################
# 8.4.13 Example programs for matrices #
########################################

#The program below shows how to allocate, initialize and read from a matrix using the functions matrix_alloc, gsl_matrix_set and gsl_matrix_get.

import GSL
using Printf

m = GSL.matrix_alloc(10, 3)

for i=0:9
    for j=0:2
        GSL.matrix_set(m, i, j, 0.23 + 100i + j)
    end
end

for i=0:9
    for j=0:2
        @printf("m(%d,%d) = %f\n", i, j, 
            GSL.matrix_get(m, i, j))
    end
end
GSL.matrix_free(m)

#Here is the output from the program.
#
#     $ ./a.out
#     m(0,0) = 0.23
#     m(0,1) = 1.23
#     m(0,2) = 2.23
#     m(1,0) = 100.23
#     m(1,1) = 101.23
#     m(1,2) = 102.23
#     ...
#     m(9,2) = 902.23

