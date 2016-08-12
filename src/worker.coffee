
{spawn} = require 'child_process'


class Worker
    constructor: (@path, @name, @route, @serve) ->
        @name ?= @route

    start: ->
        # TODO


module.exports = new Worker
