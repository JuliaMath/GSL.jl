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

for pathfilename in glob('../src/*.jl'):
    filename = basename(pathfilename)
    if filename == master_file: continue
    outbuf.insert(len(outbuf)-1,'    include("'+filename+'")')

f = open('../src/'+master_file, 'w')
f.write('\n'.append(outbuf))
f.close()

