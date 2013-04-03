#####################################
# 8.2.3 Example programs for blocks #
#####################################

using GSL

b=block_alloc(100)
pb=unsafe_ref(b)
println("length of block = ", int(pb.size))
println("block data address = ", pb.data)
block_free(b)
