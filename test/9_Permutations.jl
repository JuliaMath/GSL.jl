using GSL
using Compat.Test

import Base: ==

try
    # Replace with `@isdefined` check on 0.7
    VERBOSE
catch
    @eval VERBOSE = true
end

==(P::gsl_permutation, Q::gsl_permutation) = (@show P, Q; P.size == Q.size &&
    pointer_to_array(P.data, (int(P.size),)) == pointer_to_array(Q.data, (int(Q.size),)))
==(P::Ptr{gsl_permutation}, Q::Ptr{gsl_permutation}) = (@show P, Q; @show unsafe_load(P); unsafe_load(P) == unsafe_load(Q))

n = rand(1:20)

VERBOSE && info("9.2 Permutation allocation")

P = permutation_alloc(n)
permutation_init(P)
Q = permutation_calloc(n)
R = permutation_alloc(n)
permutation_memcpy(R, Q)

@test n==unsafe_load(P).size==unsafe_load(Q).size==unsafe_load(R).size
@test P==Q==R
permutation_free(R)


VERBOSE && info("9.3 Accessing permutation elements")

for i=0:n-1
    @test i == permutation_get(P, i)
end

for i=0:n-1
   for j=0:n-1
       permutation_swap(P, i, j)
       permutation_swap(P, i, j)
       @test P==Q
   end
end


VERBOSE && info("9.4 Permutation properties")

@test permutation_size(P) == n
@test permutation_data(P) == unsafe_load(P).data

@test permutation_valid(P)
pointer_to_array(unsafe_load(P).data, (int(unsafe_load(P).size),))[1]=1000
@test !permutation_valid(P)
pointer_to_array(unsafe_load(P).data, (int(unsafe_load(P).size),))[1]=0
@test permutation_valid(P)


VERBOSE && info("9.5 Permutation functions")

permutation_reverse(P)
Q=permutation_inverse(P)
@test P==Q

permutation_prev(P)
permutation_next(P)
@test P==Q

permutation_reverse(P)
R=permutation_inverse(Q)
@test R==Q

#println(pointer_to_array(unsafe_load(Q).data, (int(unsafe_load(Q).size),)))
permutation_free(P)
permutation_free(Q)

#TODO 9.6 Applying Permutations
#TODO 9.7 Reading and writing permutations
#TODO 9.8 Permutations in cyclic form
