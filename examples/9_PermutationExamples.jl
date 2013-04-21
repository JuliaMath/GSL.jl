################
# 9.9 Examples #
################

#The example program below creates a random permutation(by shuffling the elements of the identity) and finds its inverse.

using GSL

N = 10
     
p = permutation_alloc(N)
     
T = rng_env_setup()
r = rng_alloc(T)
     
print("initial permutation:")  
permutation_init(p)
#permutation_fprintf(stdout, p, " %u")
for x in pointer_to_array(unsafe_ref(p).data, (int(unsafe_ref(p).size),))
    print(int(x), " ")
end
println()
     
print(" random permutation:")  
ran_shuffle(r, convert(Ptr{None}, unsafe_ref(p).data), N, sizeof(Uint64))
#permutation_fprintf(stdout, p, " %u")
for x in pointer_to_array(unsafe_ref(p).data, (int(unsafe_ref(p).size),))
    print(int(x), " ")
end
println()
     
print("inverse permutation:")  
q = permutation_inverse(p)
#permutation_fprintf(stdout, q, " %u")
for x in pointer_to_array(unsafe_ref(q).data, (int(unsafe_ref(q).size),))
    print(int(x), " ")
end
println()
     
permutation_free(p)
permutation_free(q)
rng_free(r)
     
#Here is the output from the program,
#
#     $ ./a.out
#     initial permutation: 0 1 2 3 4 5 6 7 8 9
#      random permutation: 1 3 5 2 7 6 0 4 9 8
#     inverse permutation: 6 0 3 1 7 2 5 4 9 8
#The random permutation p[i] and its inverse q[i] are related through the identity p[q[i]] = i, which can be verified from the output.
#
#The next example program steps forwards through all possible third order permutations, starting from the identity,

p = permutation_alloc(3)
permutation_init(p)

while true
    try
        #permutation_fprintf(stdout, p, " %u")
        for x in pointer_to_array(unsafe_ref(p).data, (int(unsafe_ref(p).size),))
            print(int(x), " ")
        end 
        println()
        p=permutation_next(p)
    catch Ex
        if typeof(Ex)==ErrorException break end
        throw(Ex)
    end
end
permutation_free(p)
    
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

