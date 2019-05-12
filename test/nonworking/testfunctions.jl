using Test

#Tests GSL special functions and their error-propagating _e variants
macro sf_test(sf, args...)
    @eval begin
        VERBOSE && print($sf, $args)
        u = $sf($args...)
        v = $(Symbol(sf, "_e"))($args...)
        VERBOSE && println("\t", u, "\t", v)
        @test isapprox(u, v.val, atol=max(eps(), 2*v.err))
    end
end
