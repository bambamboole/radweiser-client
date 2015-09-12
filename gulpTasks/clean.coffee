del = require 'del'

module.exports = (gulp, plugins) ->
  ->
    del(['build/assets/*'])