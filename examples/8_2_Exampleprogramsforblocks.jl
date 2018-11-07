#####################################
# 8.2.3 Example programs for blocks #
#####################################

import GSL

b=GSL.block_alloc(100)
pb=unsafe_load(b)
println("length of block = ", Int(pb.size))
println("block data address = ", pb.data)
GSL.block_free(b)
