using Glob

using Conda
const PANDOC = joinpath(Conda.ROOTENV, "bin", "pandoc")
if !isfile(PANDOC)
    Conda.add("pandoc")
end

function convert_text(str; from, to)
    f = open(`$PANDOC --from=$from --to=$to`, "r+")
    write(f, str)
    close(f.in)
    read(f, String)
end

DOC_DIR = joinpath(@__DIR__, "gsl-2.5", "doc")

function parse_file(docs, filename)
    fh = open(filename)
    lines = readlines(fh)
    close(fh)
    lineno = 1
    while lineno < length(lines)
        l = lines[lineno]
        # Walk until we find a section
        m = match(r"^\.\. (type|function|const|macro):: (.*)$", l)
        if m==nothing
            lineno += 1
        else
            sectype = m.captures[1]
            secdecl = replace(m.captures[2], r"(^ +| +$)" => "")
            str, lineno = glob_section(lines, lineno+1)
            if sectype == "type" || sectype == "const" || sectype == "macro"
                # type def
                name = secdecl
            else
                # function
                m = match(r"(^| )(\w+) *\(", secdecl)
                if m==nothing
                    error("Failed to match function declaration:\n$secdecl")
                end
                name = m.captures[2]
            end
            # convert RST to Markdown
            docstr = convert_text(str, from="rst", to="markdown_strict+tex_math_dollars")
            docs[name] = "`$secdecl`\n\n" * docstr
        end
    end
end

function glob_section(lines, lineno)
    s = String[]
    prevlength = 0 # Length of previous string
    while lineno < length(lines)
        l = lines[lineno]
        reg_adorn = Regex("^(\\W)\\1{$(prevlength-1)}((?!\\1)|\$)")
        # Glob lines until we encounter the next section or files ends
        if occursin(r"^\.\. (?!math|code)", l)
            break
        end
        if (prevlength>0 && occursin(reg_adorn, l))
            # Found a section adornment
            s = s[1:end-1]
            break
        end
        push!(s, l)
        prevlength = length(l)
        lineno += 1
    end
    return join(s, "\n"), lineno
end

function readdocs()
    if !isdir(DOC_DIR)
        @info "Downloading GSL docs"
        run(`wget http://ftp.gnu.org/gnu/gsl/gsl-2.5.tar.gz`)
        @info "Unpacking"
        run(`tar -zxf gsl-2.5.tar.gz`)
    end
    @info "Reading the docs and converting to Markdown"
    docs = Dict()
    docfiles = glob("*.rst", DOC_DIR)
    for filename in docfiles
        @info("Parsing $filename")
        parse_file(docs, filename)
    end
    return docs
end
