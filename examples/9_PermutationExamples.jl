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
for x in pointer_to_array(unsafe_ref(p).data, (int(unsafe_ref(p).size),))
    print(int(x), " ")
end
println()
     
print(" random permutation:")  
gsl_ran_shuffle(r, convert(Ptr{None}, unsafe_ref(p).data), N, sizeof(Uint64))
#gsl_permutation_fprintf(stdout, p, " %u")
for x in pointer_to_array(unsafe_ref(p).data, (int(unsafe_ref(p).size),))
    print(int(x), " ")
end
println()
     
print("inverse permutation:")  
q = gsl_permutation_inverse(p)
#gsl_permutation_fprintf(stdout, q, " %u")
for x in pointer_to_array(unsafe_ref(q).data, (int(unsafe_ref(q).size),))
    print(int(x), " ")
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

while true
    try
        #gsl_permutation_fprintf(stdout, p, " %u")
        for x in pointer_to_array(unsafe_ref(p).data, (int(unsafe_ref(p).size),))
            print(int(x), " ")
        end 
        println()
        p=gsl_permutation_next(p)
    catch Ex
        if typeof(Ex)==GSL_ERROR && Ex.gsl_errno==-1 break end
        throw(Ex)
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
#The permutations are generated in lexicographic order. To reverse the sequence, begin with the final permutation (which is the reverse of the identity) and replace gsl_permutation_next with gsl_permutation_prev.

