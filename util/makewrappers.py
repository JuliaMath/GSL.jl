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

    #XXX Fake this!
    'FILE':'Void',
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



def parseheading(soup):
    """
    Extract section heading
    """
    parsed_out = []
    for headertag in ['h2', 'h3', 'h4']:
        header = soup.find(headertag)
        if header is None:
            continue
        header = header.get_text()
        parsed_out += ['#'*(len(header)+4), '# '+header+' #', '#'*(len(header)+4)]
    return parsed_out



def parsestructsh(h_file):
    """
    Extract structs from header file
    """
    exports = []
    parsed_out = []
    mode = 'seek'
    for line in h_file.split('\n'):
        if mode == 'seek':
            if 'typedef struct' in line:
                mode = 'read'
                struct_data, struct_name  = [], None
                parsed_out += ['', '']
                error = []
        elif mode == 'read':
            t = line.split(';')[0].replace('*', '* ').replace(' *', '*').split()
            if len(t)==0:
                continue
            elif len(t)==1:
                if t[0] == '}':
                    mode = 'readname'
                else:
                    continue
            elif t[0] == '}':
                struct_name = t[1]
                mode = 'flush'
            else:
                jtype, isUnknown = juliatype(t[0])
                if isUnknown: error += ['#XXX Unknown data type: '+t[1]+'::'+jtype]
                struct_data.append(t[1]+'::'+jtype)
        elif mode == 'readname':
            struct_name = line.split(';')[0].split()[-1]
            mode = 'flush'
        if mode == 'flush':
            if len(struct_data) > 0 and struct_name is not None:
                if error != '': parsed_out += error
                parsed_out += ['type '+struct_name, '    '+'\n    '.join(struct_data), 'end']
                exports.append(struct_name)
            mode = 'seek'

    return exports, parsed_out



def parsestructs1(soup):
    """
    GSL documentation contains inline blocks containing raw C code defining structs
    Extract these.
    """
    exports = []
    parsed_out = []
    for struct_block in soup.find_all('pre', class_='example'):
        struct_code = struct_block.string
        if struct_code is None: continue
        #Here is some raw C code defining a struct
        struct_data, struct_name  = [], None
        parsed_out += ['', '']
        error = []
        for line in struct_code.split('\n'):
            t = line.split(';')[0].replace('*', '* ').replace(' *', '*').split()
            if len(t)<2: continue
            if t[0] == '}':
                struct_name = t[1]
            elif t[0].lower()=='typedef' and t[1].lower()=='struct':
                continue
            else:
                jtype, isUnknown = juliatype(t[0])
                if isUnknown: error += ['#XXX Unknown data type: '+t[1]+'::'+jtype]
                struct_data.append(t[1]+'::'+jtype)

        if len(struct_data) > 0 and struct_name is not None:
            if error != '': parsed_out += error
            parsed_out += ['type '+struct_name, '    '+'\n    '.join(struct_data), 'end']
            exports.append(struct_name)

    return exports, parsed_out



def parsestructs2(soup):
    """
    Parse C struct declarations embedded in GSL HTML documentation

    Where necessary, match C types to corresponding Julia types
    """
    exports = []
    all_parsed_out = []
    for function_block in soup.find_all('div', class_='defun'):
        for fn in function_block.find_all('br'):
            parsed_out = []
            isDisabled = False #Will be disabled if the parse fails
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
            decl_type=decl_type[2:].strip()
            if decl_type != 'Data Type': continue

            if funcname in exports: continue #A hack circumventing a parse error
            exports.append(funcname)
            all_parsed_out += ['', '', 'type '+funcname]
            #The HTML tags are screwed up and they nest
            tag = fn
            while True:
                tag = tag.dt
                if tag is None: break
                entry = tag.code.string
                var_line = entry.replace(',', ' ').replace(' *', '*').split()
                var_type = var_line[0]
                var_jtype, isUnknown = juliatype(var_type)
                if isUnknown: all_parsed_out += ['    #XXX Unknown type: '+var_jtype]
                for var_name in var_line[1:]:
                    all_parsed_out += ['    '+var_name+'::'+var_jtype]
            all_parsed_out += ['end']
    return exports, all_parsed_out


def parsefunctions(soup):
    """
    Parse C function declarations embedded in GSL HTML documentation

    Where necessary, match C types to corresponding Julia types
    """
    exports = []
    all_parsed_out = []
    for function_block in soup.find_all('div', class_='defun'):
        for fn in function_block.find_all('br'):
            parsed_out = []
            isDisabled = False #Will be disabled if the parse fails
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
            decl_type=decl_type[2:].strip()
            if decl_type != 'Function': continue

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
                    isDisabled=True
            docstring = u'# ' + u'\n# '.join(wrap(docstring, maxwidth-2)) + u'\n# '
            
            julia_output, isUnknown = juliatype(outputs) 
            #If it starts with gsl, assume it will be defined at some point
            if isUnknown and 'gsl_' not in julia_output:
                warnings.append('#XXX Unknown output type '+julia_output)
                isDisabled=True
                
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
            parsed_out += [docstring]
            parsed_out += ['#  '+comment for comment in comments]
            parsed_out += ['#   Returns: '+julia_output]
            parsed_out += warnings
            parsed_out += ['function '+funcname+' ('+', '.join(julia_decl) +')']
            parsed_out += ccall_line
            parsed_out += ['end']
             
            all_parsed_out += ['', '']
            if isDisabled:
                all_parsed_out += ['### Function uses unknown type; disabled']
                parsed_out = ['### '+l for l in parsed_out]
            else:
                exports.append(funcname)

            all_parsed_out += parsed_out
    return exports, all_parsed_out



def parsehtmldoc(html_doc):
    soup = BeautifulSoup(html_doc)
    #Find section heading and put that in the beginning
    parsed_heading = parseheading(soup)
    #Parse structs in format 1
    export_structs1, structs1 = parsestructs1(soup)
    #Parse structs in format 2
    export_structs2, structs2 = parsestructs2(soup)
    #Parse functions
    export_functions, functions = parsefunctions(soup)
    #Parse structs from header file
    if len(export_structs1) == 0:
      export_structs1, structs1 = parsestructsh(html_doc)

    #Generate heading
    all_parsed_out = [''] + parsed_heading + ['']
    #Generate export line
    exports = export_structs1 + export_structs2 + export_functions
    if len(exports) > 0:
         export_line = wrap(', '.join(exports), maxwidth-7)
         export_line = ['export '+export_line[0]] + [' '*7 + l for l in export_line[1:]]
         all_parsed_out += export_line
    else: #No exports, return a blank file
        return ''
    #Generate structs
    all_parsed_out += structs1
    all_parsed_out += structs2
    #Generate function wrappers
    all_parsed_out += functions
    all_parsed_out += ['']
    return '\n'.join(all_parsed_out)



#Loop over all html files
if __name__ == '__main__':
    from glob import glob
    from os.path import basename, join
    filelist = glob('../html_node/*.html')
    path_to_gsl_h = '/usr/local/include/gsl'
    filelist += [join(path_to_gsl_h, 'gsl_sum.h')]
    #Initials wrappers were generated for these but they needed work
    #filelist += [join(path_to_gsl_h, 'gsl_fft_complex.h')]
    #filelist += [join(path_to_gsl_h, 'gsl_rng.h')]
    filelist += [join(path_to_gsl_h, 'gsl_sf_mathieu.h')]
    filelist = [] ###
    filelist += [join(path_to_gsl_h, 'gsl_eigen.h')]

    #List of files that need manual intervention
    #These all have functors - I have replaced them with Ptr{Void} for now
    #function also renamed to function_
    #Arrays of constant size
    skiplist = ['Defining-the-ODE-System.html',
            'Monte-Carlo-Interface.html',
            'Providing-a-function-to-minimize.html',
            'Providing-the-function-to-be-minimized.html',
            'Providing-the-function-to-solve.html',
            'Providing-the-multidimensional-system-of-equations-to-solve.html',
            'Representation-of-complex-numbers.html'
            ]

    for html_file in filelist:
        if basename(html_file) in skiplist: continue
        print 'Parsing', html_file
        parsed = parsehtmldoc(open(html_file).read())
        if parsed == '': continue #Do not write julia file
        
        julia_file = '../src/_'+basename(html_file).replace('-','').replace('.html','').replace('.h','struct')+'.jl'
        f = open(julia_file, 'w')
        f.write("""#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
""")
        f.write(parsed.encode("utf-8"))
        f.close()
        print 'Wrote', julia_file

