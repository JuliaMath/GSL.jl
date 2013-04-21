#Tests GSL special functions and their error-propagating _e variants
macro sf_test(sf, args...)
    @eval begin
        print($sf, $args)
        u = $sf($args...)
        v = $(symbol(string(sf, "_e")))($args...)
        println("\t", u, "\t", v)
        @test_approx_eq_eps u v.val max(eps(), 2*v.err)
    end
end
