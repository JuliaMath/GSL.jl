#####################################
# 8.2.3 Example programs for blocks #
#####################################

using GSL

b=gsl_block_alloc(100)
pb=unsafe_load(b)
println("length of block = ", Int(pb.size))
println("block data address = ", pb.data)
gsl_block_free(b)
