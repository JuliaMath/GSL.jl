using BinDeps
using Compat
using Pkg

@BinDeps.setup

libgsl = library_dependency("libgsl", aliases=["libgsl-0"])

# package managers
provides(AptGet, Dict("libgsl0ldbl"=>libgsl, "libgsl0-dev" =>libgsl, "gsl-bin"=>libgsl))
provides(Yum, "gsl-devel", libgsl)
provides(Pacman, "gsl", libgsl)

if Sys.isapple()
    if "Homebrew" ∈ keys(Pkg.installed())
        error("Homebrew package not installed, please run Pkg.add(\"Homebrew\")")
    end
    using Homebrew
    provides(Homebrew.HB, "gsl@1", libgsl, os = :Darwin)
end

if Sys.iswindows()
     using WinRPM
     provides(WinRPM.RPM, "gsl", libgsl, os = :Windows)
end

# build from source
provides(Sources, URI("http://ftp.gnu.org/gnu/gsl/gsl-1.16.tar.gz"), libgsl)
provides(BuildProcess, Autotools(libtarget = "libgsl.la"), libgsl)

@BinDeps.install Dict(:libgsl => :libgsl)
