using BinDeps
using Compat

@BinDeps.setup

libgsl = library_dependency("libgsl", aliases=["libgsl-0"])

# package managers
provides(AptGet, Dict("libgsl0ldbl"=>libgsl, "libgsl0-dev" =>libgsl, "gsl-bin"=>libgsl))
provides(Yum, "gsl-devel", libgsl)
provides(Pacman, "gsl", libgsl)

if is_apple() begin
    if Pkg.installed("Homebrew") === nothing
        error("Homebrew package not installed, please run Pkg.add(\"Homebrew\")")
    end
    using Homebrew
    provides(Homebrew.HB, "gsl", libgsl, os = :Darwin)
end
end

if is_windows() begin
     using WinRPM
     provides(WinRPM.RPM, "gsl", libgsl, os = :Windows)
end
end

# build from source
provides(Sources, URI("http://ftp.gnu.org/gnu/gsl/gsl-1.16.tar.gz"), libgsl)
provides(BuildProcess, Autotools(libtarget = "libgsl.la"), libgsl)

@BinDeps.install Dict(:libgsl => :libgsl)

