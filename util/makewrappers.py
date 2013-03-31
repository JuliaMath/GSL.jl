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

#Things that members of types should not be named
sensitive_names = ['function'] 

#Start off with known C types
#http://docs.julialang.org/en/latest/manual/calling-c-and-fortran-code/#type-correspondences
known_types = {
    #System independent types
    'bool':'Cbool',
    'signedchar':'Int8',
    'unsignedchar':'UInt8',
    'short':'Cshort',
    'shortint':'Cshort',
    'unsignedshort':'Cushort',
    'unsignedshortint':'Cushort',
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
    'longint':'Clong',
    'unsignedlong':'Culong',
    'unsignedlongint':'Culong',
    'wchar_t':'Char',

    #XXX Fake this!
    'FILE':'Void',
    'longdouble':'Cdouble',
}


def forcevoid(v):
    """Forces the unknown type v to become a Void, while preserving Ptr{} wraps"""
    begidx = v.rfind('{')
    endidx = v.find('}')
    if endidx == -1: endidx = len(v)
    return v[:begidx+1] + 'Void' + v[endidx:]


def juliatype(ctype):
    """
    Tries to convert a given ctype to its corresponding Julia type

    Converts x* to Ptr{x}, x[] to Ptr{x}
    Ignores const declaration

    If it can't figure it out, will return isUnknown = True
    and juliatype will be a corrupted variant of ctype
    """
    var_typesquash = ctype.replace('const', '').replace(' ', '')
    PtrLevel = 0
    for i in range(len(var_typesquash)-1, -1, -1):
        if var_typesquash[i] == '*':
            PtrLevel+=1
        elif var_typesquash[i] == '[':
            PtrLevel+=1
        elif var_typesquash[i] == ']':
            PtrLevel+=0
        else:
            var_typesquash = var_typesquash[:i+1]
            break

    isUnknown = False
    if var_typesquash in known_types:
        juliatype =  known_types[var_typesquash]
    else:
        juliatype = var_typesquash
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



def parsestructs1(soup, unknown_handler='report'):
    """
    GSL documentation contains inline blocks containing raw C code defining structs
    Extract these.
    """
    exports = []
    parsed_out = []#'#DEBUG Structs Type 1']
    all_unknowns = []
    for struct_block in soup.find_all('pre', class_='example'):
        struct_code = struct_block.string
        unknowns = []
        if struct_code is None: continue
        #Here is some raw C code defining a struct
        struct_data, struct_name, is_struct = [], None, False
        parsed_out += ['', '']
        error = []
        for line in struct_code.split('\n'):
            t = line.split(';')[0].replace('*', '* ').replace(' *', '*').split()
            if len(t)<2: continue
            if t[0] == '}':
                struct_name = t[1]
            elif t[0].lower()=='typedef' and t[1].lower()=='struct':
                is_struct = True
            else:
                var_name = t[1]
                var_jtype, isUnknown = juliatype(t[0])
                while '[' in var_name:
                        var_name = var_name[:var_name.rfind('[')]
                        var_jtype, _ = juliatype(var_jtype+'*')
                while len(var_name)>1 and var_name[-1] == '*':
                        var_name = var_name[:var_name.rfind('*')]
                        var_jtype, _ = juliatype(var_jtype+'*')
                if isUnknown:
                    if 'report' in unknown_handler:
                        error += ['#XXX Unknown data type: '+t[1]+'::'+var_jtype]
                    if 'list' in unknown_handler:
                        unknowns.append(t[0].replace('*',''))
                struct_data.append(var_name+'::'+var_jtype)

        if len(struct_data) > 0 and struct_name is not None and is_struct:
            if error != '': parsed_out += error
            parsed_out += ['type '+struct_name, '    '+'\n    '.join(struct_data), 'end']
            exports.append(struct_name)
            all_unknowns += unknowns

    return exports, parsed_out, all_unknowns



def parsestructs2(soup, unknown_handler = 'report'):
    """
    Parse C struct declarations embedded in GSL HTML documentation

    Where necessary, match C types to corresponding Julia types
    """
    exports = []
    all_parsed_out = []#'#DEBUG Structs type 2']
    unknowns = []
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
                if '(' in entry: #Assume functor
                    var_name = entry[entry.find('(')+1:entry.find(')')].replace('*','').strip()
                    var_jtype = 'Ptr{Void}'
                    #Sanitize name
                    if var_name in sensitive_names: var_name += '_'
                    all_parsed_out += ['    '+var_name+'::'+var_jtype]
                else:
                    var_line = entry.replace(',', ' ').replace(' *', '*').split()
                    var_type = var_line[0]
                    var_jtype, isUnknown = juliatype(var_type)
                    if isUnknown:
                        if 'report' in unknown_handler:
                            all_parsed_out += ['    #XXX Unknown type: '+var_jtype]
                        if 'list' in unknown_handler:
                            unknowns.append(var_type.replace('*',''))
                    for var_name in var_line[1:]:
                        while '[' in var_name: 
                            var_name = var_name[:var_name.rfind('[')]
                            var_jtype, _ = juliatype(var_jtype+'*')
                        while len(var_name)>1 and var_name[-1] == '*':
                            var_name = var_name[:var_name.rfind('*')]
                            var_jtype, _ = juliatype(var_jtype+'*')
                        while len(var_name)>1 and var_name[-1] == ';':
                            var_name = var_name[:-1]
                        all_parsed_out += ['    '+var_name+'::'+var_jtype]
            all_parsed_out += ['end']
    
    return exports, all_parsed_out, unknowns


def parsefunctions(soup, unknown_handler=['disable', 'report']):
    """
    Parse C function declarations embedded in GSL HTML documentation

    Where necessary, match C types to corresponding Julia types
    """
    exports = []
    all_parsed_out = []
    unknowns = []
    for function_block in soup.find_all('div', class_='defun'):
        for fn in function_block.find_all('br'):
            parsed_out = []
            varargs = ''
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
            if inputs.strip() == 'void': #Function takes no inputs
                variables = []
            else:
                variables = [x.replace('*','* ').replace(' *','*').strip() for x in inputs.split(',')]
            for var in variables:
                v = var.split()
                if len(v) == 0:
                    continue
                varname = v[-1].strip()
                if varname == '...':
                    varargs = '...'
                    continue
                var_type = var[:var.rfind(varname)].strip()
                julia_input_names.append(varname)
                julia_var_type, isUnknown = juliatype(var_type) 
                if isUnknown:
                    if 'report' in unknown_handler:
                        warnings.append('#XXX Unknown input type '+varname+'::'+julia_var_type)
                    if 'disable' in unknown_handler: isDisabled=True
                    if 'coerce' in unknown_handler: #Force this to become void type
                        julia_var_type = forcevoid(julia_var_type)
                        warnings.append('#XXX Coerced type for '+varname+'::'+julia_var_type)
                    if 'list' in unknown_handler:
                        unknowns.append(var_type.replace('const','').replace('*','').strip())
                julia_inputs.append(julia_var_type)
            docstring = u'# ' + u'\n# '.join(wrap(docstring, maxwidth-2)) + u'\n# '
            
            var_type = outputs.replace('inline','').replace('extern','').strip().strip()
            julia_output, isUnknown = juliatype(var_type)
            if isUnknown:
                if 'report' in unknown_handler:
                    warnings.append('#XXX Unknown output type '+julia_output)
                if 'disable' in unknown_handler: isDisabled=True
                if 'coerce' in unknown_handler: #Force this to become void type
                    julia_output = forcevoid(julia_output)
                    warnings.append('#XXX Coerced type for output '+julia_output)
                if 'list' in unknown_handler:
                    unknowns.append(var_type.replace('*','').replace('const','').strip())
                
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
            #If return type is Cint, assume this is an error code
            if julia_output == 'Cint':
                ccall_line = "gsl_errno = "+ccall_line
            ccall_line = wrap(ccall_line, maxwidth-8)
            if julia_output == 'Cint':
                ccall_line.append('if gsl_errno!=0 throw(GSL_ERROR, gsl_errno) end')
            ccall_line = ['    '+ccall_line[0]] + [' '*8 + l for l in ccall_line[1:]]
            #Dump it all out
            parsed_out += [docstring]
            parsed_out += ['#  '+comment for comment in comments]
            parsed_out += ['#   Returns: '+julia_output]
            parsed_out += warnings
            parsed_out += ['function '+funcname+' ('+', '.join(julia_decl) +varargs+')']
            parsed_out += ccall_line

            parsed_out += ['end']
             
            all_parsed_out += ['', '']
            if isDisabled and 'disable' in unknown_handler:
                all_parsed_out += ['### Function uses unknown type; disabled']
                parsed_out = ['### '+l for l in parsed_out]
            else:
                exports.append(funcname)

            all_parsed_out += parsed_out
    return exports, all_parsed_out, unknowns



def parsehtmldoc(html_doc, WhatToMatch=None, unknown_handler='report'):
    soup = BeautifulSoup(html_doc)
    exports = []
    all_output = []
    parsed_all = []
    unknowns = []
    if WhatToMatch is None or WhatToMatch[-2:]!='_h':
        #Find section heading and put that in the beginning
        all_output += parseheading(soup)
    if WhatToMatch is None or 'struct' in WhatToMatch:
        #Parse structs in format 1
        export_structs1, structs1, unknowns1 = parsestructs1(soup, unknown_handler)
        #Parse structs in format 2
        export_structs2, structs2, unknowns2 = parsestructs2(soup, unknown_handler)
        exports += export_structs1 + export_structs2
        parsed_all += structs1 + structs2
        unknowns += unknowns1 + unknowns2
    if 'struct_h' in WhatToMatch:
        #Parse structs from header file
        export_structs, structs = parsestructsh(html_doc, unknown_handler)
        exports += export_structs
        parsed_all += structs
    if WhatToMatch is None or 'function' in WhatToMatch:
        #Parse functions
        export_functions, functions, unknown = parsefunctions(soup, unknown_handler)
        exports += export_functions
        parsed_all += functions
        unknowns += unknown

    #Generate export line
    if len(exports) > 0:
         export_line = wrap(', '.join(exports), maxwidth-7)
         export_line = ['export '+export_line[0]] + [' '*7 + l for l in export_line[1:]]
         all_output += export_line
    else: #No exports, return a blank file
        return exports, '', unknowns

    all_output += parsed_all + ['']
    return exports, '\n'.join(all_output), unknowns


def write_wrapper(filename, WhatToParse, unknown_handler="report", dowrite=True):
    #print 'Parsing', filename
    exports, parsed, unknowns = parsehtmldoc(open(filename).read(), WhatToParse, unknown_handler)
    if parsed == '': return None, [], []#Do not write julia wrapper for empty stuff
    julia_file=parsed.split('\n')[1].replace('#','').replace(u'\u2014','').replace('.','_').strip().replace(' ','_')
    julia_file = '../src/_'+julia_file+'.jl'
    if dowrite:
        f = open(julia_file, 'w')
        f.write("""#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
""")
        f.write(parsed.encode("utf-8"))
        f.close()
        print 'Wrote', julia_file
    return julia_file, exports, unknowns


#Loop over all html files
if __name__ == '__main__':
    from glob import glob
    from os.path import basename, join
    
    structs = {}
    dependencies = {}
    #Step 1: Search HTML docs first for structs and dependencies in structs and functions
    print 'Scanning for structs and dependencies'
    for filename in glob('../html_node/*.html'):
        jfilename, this_structs, _ = write_wrapper(filename, ["struct"], "list", False)
        _, _, unknowns = write_wrapper(filename, ["struct", "function"], "list", False)
        if jfilename is None: continue
        if this_structs != []: structs[jfilename] = set(this_structs)
        if unknowns != []: #Remove self-dependencies
            dependencies[jfilename] = set([unknown for unknown in unknowns if unknown not in this_structs])

    #Search header files for undocumented structs
    #path_to_gsl_h = '/usr/local/include/gsl'
    #filelist = []
    #filelist += [join(path_to_gsl_h, 'gsl_sum.h')]
    ##Initials wrappers were generated for these but they needed work
    ##filelist += [join(path_to_gsl_h, 'gsl_fft_complex.h')]
    ##filelist += [join(path_to_gsl_h, 'gsl_rng.h')]
    #filelist += [join(path_to_gsl_h, 'gsl_sf_mathieu.h')]
    #filelist = [] ###
    #filelist += [join(path_to_gsl_h, 'gsl_eigen.h')]
    #for filename in filelist:
    #    structs += write_wrapper(filename, "struct")

    # Now order the struct containing files so that they import correctly
    filenames=list(set(dependencies.keys()+structs.keys()))
    #for f in filenames:
    #    print f,
    #    if f in dependencies.keys():
    #        print 'Needs', ' '.join(dependencies[f]),
    #    if f in structs.keys():
    #        print 'Defines', ' '.join(structs[f]),
    #    print

    #Do selection sort to order the files properly
    for i, filename1 in enumerate(filenames):
        for j, filename2 in enumerate(filenames):
            if filename2 in dependencies.keys() and filename1 in structs.keys():
                if any([dep in structs[filename1] for dep in dependencies[filename2]]):
                    filenames[i], filenames[j] = filenames[j], filenames[i] 

    # Now populate known types into known_types
    for f, structset in structs.items():
        for struct in structset:
            print f, ': Adding', struct
            known_types[struct] = struct

    #Step 2: Search HTML docs again for functions and structs
    all_unknowns = []
    for filename in glob('../html_node/*.html'):
        jfilename, exports, unknowns = write_wrapper(filename, ["function", "struct"], ["coerce", "list", "report"])
        if jfilename is None: continue
        if exports != [] and jfilename not in filenames:
            filenames.append(jfilename)
        all_unknowns += unknowns

    #Write list of files
    f = open('../src/__FILELIST.jl', 'w')
    #Write also list of unknowns
    for unknown in sorted(list(set(all_unknowns))):
        f.write('#XXX Unknown data type was encountered: '+unknown+'\n')
    f.write('\n'.join(['include("'+x+'")' for x in sorted(filenames)]))
    f.close()

