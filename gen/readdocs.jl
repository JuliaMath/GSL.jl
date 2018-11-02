using Glob

using PyCall
pandoc = pyimport("pypandoc")
convert_text = pandoc[:convert_text]

DOC_DIR = joinpath(@__DIR__, "gsl-2.5", "doc")

function parse_file(docs, filename)
    fh = open(filename)
    lines = readlines(fh)
    close(fh)
    lineno = 1
    while lineno < length(lines)
        l = lines[lineno]
        # Walk until we find a section
        m = match(r"^\.\. (type|function):: (.*)$", l)
        if m==nothing
            lineno += 1
        else
            sectype = m.captures[1]
            secdecl = replace(m.captures[2], r"(^ +| +$)" => "")
            str, lineno = glob_section(lines, lineno+1)
            if sectype == "type"
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
            docstr = convert_text(str, "md", format="rst")
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
        println("* Downloading GSL docs")
        run(`wget http://ftp.gnu.org/gnu/gsl/gsl-2.5.tar.gz`)
        println("* Unpacking")
        run(`tar -zxf gsl-2.5.tar.gz`)
    end    
    println("* Reading the docs and converting to Markdown")    
    docs = Dict()
    docfiles = glob("*.rst", DOC_DIR)
    for filename in docfiles
        println(filename)
        parse_file(docs, filename)
    end
    return docs
end
