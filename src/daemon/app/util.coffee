fs = require 'fs'
chalk = require 'chalk'

module.exports =

  append: (path, str) ->
    fs.appendFileSync "#{path}/katon.log", str

  log: (path, str) ->
    console.log chalk.cyan("[app]   #{path?.split('/').pop()}"), str
    @append path, "#{chalk.cyan('[katon]')} #{str}\n"

  error: (path, str) ->
    console.error chalk.red("[app]   #{path?.split('/').pop()}"), str
    @append path, chalk.red "[katon] #{str}\n"