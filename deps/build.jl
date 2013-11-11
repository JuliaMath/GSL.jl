using BinDeps

@BinDeps.setup

libgsl = library_dependency("libgsl")

# package managers
provides(AptGet, {"libgsl0-dev" =>libgsl, "gsl-bin"=>libgsl})
provides(Yum, "gsl-devel", libgsl)

@osx_only begin
    if Pkg.installed("Homebrew") === nothing
        error("Homebrew package not installed, please run Pkg.add(\"Homebrew\")")
    end
    using Homebrew
    provides(Homebrew.HB, "gsl", libgsl, os = :Darwin)
end

@windows_only begin #XXX Untested
     using WinRPM
     provides(WinRPM.RPM, "gsl", libgsl, os = :Windows)
end

# build from source
provides(Sources, URI("http://ftp.gnu.org/gnu/gsl/gsl-1.16.tar.gz"), libgsl)
provides(BuildProcess, Autotools(libtarget = "libgsl.la"), libgsl)

@BinDeps.install

