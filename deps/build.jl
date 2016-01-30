using BinDeps

@BinDeps.setup

libgsl = library_dependency("libgsl", aliases="libgsl-0")

# package managers
provides(AptGet,
    Dict("libgsl0ldbl"=>libgsl,
         "libgsl0-dev"=>libgsl,
         "gsl-bin"=>libgsl))
provides(Yum, "gsl-devel", libgsl)
provides(Pacman, "gsl", libgsl)

@osx_only begin
    if Pkg.installed("Homebrew") === nothing
        error("Homebrew package not installed, please run Pkg.add(\"Homebrew\")")
    end
    using Homebrew
    provides(Homebrew.HB, "gsl", libgsl, os = :Darwin)
end

@windows_only begin
     using WinRPM
     provides(WinRPM.RPM, "gsl", libgsl, os = :Windows)
end

# build from source
provides(Sources, URI("http://ftp.gnu.org/gnu/gsl/gsl-1.16.tar.gz"), libgsl)
provides(BuildProcess, Autotools(libtarget = "libgsl.la"), libgsl)

@show "begin BinDeps.install"

@show Base.source_path()
@show splitdir(Base.source_path())
@show splitdir(Base.source_path())[1]

try
@BinDeps.install Dict(:libgsl => :libgsl)
catch
    @show readdir(dirname(Base.source_path()))
end


@show "done BinDeps.install"

