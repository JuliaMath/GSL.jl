################
# 9.9 Examples #
################

#The example program below creates a random permutation(by shuffling the elements of the identity) and finds its inverse.

using GSL

N = 10
     
p = gsl_permutation_alloc(N)
     
T = gsl_rng_env_setup()
r = gsl_rng_alloc(T)
     
print("initial permutation:")  
gsl_permutation_init(p)
#gsl_permutation_fprintf(stdout, p, " %u")
P = unsafe_load(p)
Pdata = unsafe_wrap(Array{UInt64}, P.data, P.size)
for x in Pdata
    print(Int(x), " ")
end
println()

print(" random permutation:")  
gsl_ran_shuffle(r, P.data, N, sizeof(UInt64))
#permutation_fprintf(stdout, p, " %u")
for x in Pdata
    print(Int(x), " ")
end
println()
     
print("inverse permutation:")
q = gsl_permutation_alloc(N)
gsl_permutation_inverse(q, p)
Q = unsafe_load(q)
Qdata = unsafe_wrap(Array{UInt64}, Q.data, Q.size)
#permutation_fprintf(stdout, q, " %u")
for x in Qdata
    print(Int(x), " ")
end
println()
     
gsl_permutation_free(p)
gsl_permutation_free(q)
gsl_rng_free(r)
     
#Here is the output from the program,
#
#     $ ./a.out
#     initial permutation: 0 1 2 3 4 5 6 7 8 9
#      random permutation: 1 3 5 2 7 6 0 4 9 8
#     inverse permutation: 6 0 3 1 7 2 5 4 9 8
#The random permutation p[i] and its inverse q[i] are related through the identity p[q[i]] = i, which can be verified from the output.
#
#The next example program steps forwards through all possible third order permutations, starting from the identity,

p = gsl_permutation_alloc(3)
gsl_permutation_init(p)
P = unsafe_load(p)
Pdata = unsafe_wrap(Array{UInt64}, P.data, P.size)

while true
    #        try
    #permutation_fprintf(stdout, p, " %u")
    for x in Pdata
        print(Int(x), " ")
    end 
    println()
    if gsl_permutation_next(p) != GSL_SUCCESS
        break
    end
end
gsl_permutation_free(p)

#Here is the output from the program,
#
#     $ ./a.out
#      0 1 2
#      0 2 1
#      1 0 2
#      1 2 0
#      2 0 1
#      2 1 0
#The permutations are generated in lexicographic order. To reverse the sequence, begin with the final permutation (which is the reverse of the identity) and replace permutation_next with gsl_permutation_prev.

