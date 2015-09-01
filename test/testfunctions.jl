#Tests GSL special functions and their error-propagating _e variants
macro sf_test(sf, args...)
    @eval begin
        VERBOSE && print($sf, $args)
        u = $sf($args...)
        v = $(symbol(string(sf, "_e")))($args...)
        VERBOSE && println("\t", u, "\t", v)
        facts("$sf") do
            @fact u --> roughly(v.val, max(eps(), 2*v.err))
        end
    end
end
