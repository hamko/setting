#!/usr/bin/env python3

from sys import argv, exit
from os import path, chdir, makedirs, getcwd, remove, listdir
from subprocess import run, call, check_call, TimeoutExpired, CalledProcessError, DEVNULL
import os.path
from termcolor import colored, cprint

if not 2 == len(argv):
    print('usage: check test_directory')
    exit(1)

directory = argv[1]
if not os.path.exists(directory):
    print('no such directory: {}'.format(directory))
    exit(1)

files = listdir(directory)
files.sort()
for f in files: 
    root, ext = os.path.splitext(f)
    if ext != '.in': 
        continue

    AC = 0
    infile = './' +  directory + '/' + root + '.in'
    outfile = './' + directory + '/' + root + '.out'
    tmpfile = './' + directory + '/tmp'
    ans = ''
    if os.path.exists(outfile):
        ans = outfile

    try:
        check_call(['./a.out'], stdin=open(infile, 'r'), stdout=open(tmpfile, 'w'))
    except CalledProcessError: 
        res = colored('RE', on_color='on_red')
    else:
        if ans == '':
            res = colored('NO', on_color='on_grey')
        else:
            command= ['diff', tmpfile, ans]
            is_diff = call(command, stdout=DEVNULL)
            if is_diff: 
                res = colored('WA', on_color='on_yellow')
            else:
                res = colored('AC', on_color='on_blue')
                AC = 1
    print('{:>3s}'.format(res) + ' Case' + root)
    if not AC: 
        print('Input: ')
        call(['cat', infile])
        print('Expected: ')
        call(['cat', outfile])
        print('Your answer: ')
        call(['cat', tmpfile])
    print('');
