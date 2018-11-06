#################
# 7.33 Examples #
#################

using GSL
using Printf

#The following example demonstrates the use of the error handling form of the special functions, in this case to compute the Bessel function J_0(5.0),
#
x = 5.0
expected = -0.17759677131433830434739701

result = sf_bessel_J0_e(x)
println("status  = ", strerror(0))
@printf("J0(5.0) = %.18f\n      +/- % .18f\n", result.val, result.err)
@printf("exact   = %.18f\n", expected)

#Here are the results of running the program,
#
#     $ ./a.out
#     status  = success
#     J0(5.0) = -0.177596771314338292 
#           +/-  0.000000000000000193
#     exact   = -0.177596771314338292
#The next program computes the same quantity using the natural form of the function. In this case the error term result.err and return status are not accessible.

x = 5.0
expected = -0.17759677131433830434739701
       
y = sf_bessel_J0(x)
     
@printf("J0(5.0) = %.18f\n", y)
@printf("exact   = %.18f\n", expected)

#The results of the function are the same,
#
#     $ ./a.out
#     J0(5.0) = -0.177596771314338292
#     exact   = -0.177596771314338292

