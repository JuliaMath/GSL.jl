#!/usr/bin/env python
"""
Regenerates index

Scans src directory and generates a master file that includes all other
*.jl files.
"""
master_file='GSL.jl'

from glob import glob
from os.path import basename

outbuf = []
for f in open('../src/'+master_file):
    if 'include(' not in f:
        outbuf.append(f[:-1])

#Include the struct definitions first
juliafiles2=[]
for juliafile_ in sorted(glob('../src/*.jl')):
    juliafile = basename(juliafile_)
    havetypedef = False
    for l in open(juliafile_):
        if 'type gsl_' in l:
            havetypedef = True
            break
    if havetypedef:
        outbuf.insert(len(outbuf)-1,'    include("'+juliafile+'")')
    else:
        juliafiles2.append(juliafile)

#Then everything else
for pathfilename in sorted(juliafiles2):
    filename = basename(pathfilename)
    if filename == master_file: continue
    outbuf.insert(len(outbuf)-1,'    include("'+filename+'")')

f = open('../src/'+master_file, 'w')
f.write('\n'.join(outbuf))
f.close()

