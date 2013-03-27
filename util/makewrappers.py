#!/usr/bin/env python

"""
GSL Documentation parser

Copyright (c) 2013 Jiahao Chen <jiahao@mit.edu>

This script makes a rudimentary attempt to parse the online HTML documentation
for the GNU Scientific Library (GSL) and automatically generate Julia wrappers
with each documented C function.

Things the parser does not understand are demarcated in comments beginning with
#XXX, which probably represent things the user should work up manually.
"""
from bs4 import BeautifulSoup, Comment
from textwrap import wrap

maxwidth = 79 #Maximum text column width to output

#http://docs.julialang.org/en/latest/manual/calling-c-and-fortran-code/#type-correspondences
Ctypes = {
    #System independent types
    'bool':'Cbool',
    'signedchar':'Int8',
    'unsignedchar':'UInt8',
    'short':'Cshort',
    'unsignedshort':'Cushort',
    'int':'Cint',
    'unsignedint':'Cuint',
    'longlong':'Clonglong',
    'unsignedlonglong':'Culonglong',
    'float':'Cfloat',
    'double':'Cdouble',
    'ptrdiff_t':'Cptrdiff_t',
    'size_t':'Csize_t',
    'complexfloat':'Ccomplex_float',
    'complexdouble':'Ccomplex_double',
    'void':'Void',

    #These are too complicated to deal with with simple substitutions
#    'struct T*':'Ptr{T} (call using &variable_name in the parameter list)
#    'struct T':'T (call using &variable_name in the parameter list)
#    'jl_value_t* (any Julia Type)':'Ptr{Any}

    #System dependent types
    'char':'Cchar',
    'long':'Clong',
    'unsignedlong':'Culong',
    'wchar_t':'Char',
}

def juliatype(ctype):
    """
    Tries to convert a given ctype to its corresponding Julia type

    Converts x* to Ptr{x}, x[] to Ptr{x}
    Ignores const declaration

    If it can't figure it out, will return isUnknown = True
    and juliatype will be a corrupted variant of ctype
    """
    vartypesquash = ctype.replace('const ', '').replace(' ', '')
    PtrLevel = 0
    for i in range(len(vartypesquash)-1, -1, -1):
        if vartypesquash[i] == '*':
            PtrLevel+=1
        elif vartypesquash[i] == '[':
            PtrLevel+=1
        elif vartypesquash[i] == ']':
            PtrLevel+=0
        else:
            vartypesquash = vartypesquash[:i+1]
            break

    isUnknown = False
    if vartypesquash in Ctypes:
        juliatype =  Ctypes[vartypesquash]
    else:
        juliatype = vartypesquash
        isUnknown = True

    for do_wrap in range(PtrLevel):
        juliatype = 'Ptr{'+juliatype+'}'

    return (juliatype, isUnknown)



def parsehtmldoc(html_doc):
    soup = BeautifulSoup(html_doc)
    parsed_out = []

    #Find section heading and put that in the beginning
    for headertag in ['h2', 'h3', 'h4']:
        header = soup.find(headertag)
        if header is None:
            continue
        header = header.get_text()
        parsed_out += ['#'*(len(header)+4), '# '+header+' #', '#'*(len(header)+4)]

    #Pass 1: find all the function names and put them in an export line
    functions = []
    for function in soup.find_all('div', class_='defun'):
        these_functions = []
        for fn in function.find_all('br'):
            funcname = fn.find_previous('b').string
            functions.append(funcname)

    if len(functions) > 0:
         export_line = wrap(', '.join(functions), maxwidth-7)
         export_line = ['export '+export_line[0]] + [' '*7 + l for l in export_line[1:]]
         parsed_out += export_line
    else: #No functions, return a blank file
        return ''

    warnings = []
    #Pass 2: Parse the function decls
    for function_block in soup.find_all('div', class_='defun'):
        for fn in function_block.find_all('br'):
            outputs = fn.find_previous('b').previous
            funcname = fn.find_previous('b').string
            inputs = fn.find_previous('b').find_next('var').get_text()
            try:
                comments = fn.find_next('blockquote').findAll(text=lambda text:isinstance(text, Comment))
                [comment.extract() for comment in comments]
            except AttributeError:
                comments = []

            try:
                docstring = fn.find_next('blockquote').p.get_text()
            except AttributeError:
                docstring = ''

            decl_type, outputs = outputs.split(':')
            decl_type=decl_type[2:]

            warnings = []
            julia_inputs = []
            julia_input_names = []
            for var in inputs.split(','):
                v = var.split()
                if len(v) == 0:
                    continue
                varname = v[-1]
                vartype = var[:var.rfind(varname)].strip()
                julia_input_names.append(varname)
                julia_vartype, isUnknown = juliatype(vartype) 
                julia_inputs.append(julia_vartype)
                #If it starts with gsl, assume it will be defined at some point
                if isUnknown and 'gsl_' not in julia_vartype:
                    warnings.append('#XXX Unknown input type '+varname+'::'+julia_vartype)

            docstring = u'# ' + u'\n# '.join(wrap(docstring, maxwidth-2)) + u'\n# '
            
            julia_output, isUnknown = juliatype(outputs) 
            #If it starts with gsl, assume it will be defined at some point
            if isUnknown and 'gsl_' not in julia_output:
                warnings.append('#XXX Unknown output type '+julia_output)
                
            julia_decl = []
            for i, var in enumerate(julia_input_names):
                julia_decl.append(var+'::'+julia_inputs[i])

            if len(julia_inputs) == 1:
                julia_inputs.append('')
                
            ccall_args = ['(:%s, "libgsl")' % funcname,
                    julia_output,
                    '(' + ', '.join(julia_inputs) + ')']
            ccall_args += julia_input_names
            ccall_line = 'ccall( '+', '.join(ccall_args)+' )'
            ccall_line = wrap('ccall( '+', '.join(ccall_args)+' )', maxwidth-8)
            ccall_line = ['    '+ccall_line[0]] + [' '*8 + l for l in ccall_line[1:]]
            #Dump it all out
            parsed_out += ['' , '', docstring]
            parsed_out += ['#  '+comment for comment in comments]
            parsed_out += ['#   Returns: '+julia_output]
            parsed_out += warnings
            parsed_out += ['function '+funcname+' ('+', '.join(julia_decl) +')']
            parsed_out += ccall_line
            parsed_out += ['end']
    return '\n'.join(parsed_out)


#Loop over all html files
if __name__ == '__main__':
    from glob import glob
    from os.path import basename
    for html_file in sorted(glob('../html_node/*.html')):
        print 'Parsing', html_file
        parsed = parsehtmldoc(open(html_file).read())
        if parsed == '': continue #Do not write julia file
        
        julia_file = '../src/'+basename(html_file)[:-4].replace('-','')+'jl'
        f = open(julia_file, 'w')
        f.write("""#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
""")
        f.write(parsed.encode("utf-8"))
        f.close()
        print 'Wrote', julia_file

