require 'coffee-script/register'

{spawn, exec} = require 'child_process'
{noisyExec} = require 'tafa-misc-util'

task 'compile', () ->
    noisyExec "iced -cwo lib src"
    
task 'run', () ->
    noisyExec "node lib/script.js"