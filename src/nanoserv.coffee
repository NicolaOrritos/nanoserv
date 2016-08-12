
class Nanoserv
    constructor: @path

    run: ->
        # TODO


module.exports =
    load: path ->
        new Nanoserv path
