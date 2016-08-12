
###
Example usage of the library:

First of all create a module with three fields in it:
 - 'name':  Name (optional)
 - 'route': Route to be served
 - 'serve': One exported 'serve(req, res, next)' function

Save it to a file, let's name it 'myroute.coffee'
and place inside folder 'lib/routes'.
Do the same for every route that you may need in your service.
###

module.exports =
    name:  'myroute'

    route: '/:parametric_path_segment/staticsegment/:another_parameter/api'
    
    serve: (req, res, next) ->
        # TODO


###
Then, in your app entry-point, write down only the 'nanoserv' bootstrap code
Specifying from where to load the routes of your service
###

nanoserv = require '../index'

nanoserv
.load 'lib/routes'
.run


###
This way each route will be started in its own process
and serve only requests directed to it.

A main process will proxy the requests
based on how routes are declared in each route file.
###


###
To stop 'nanoserv' simply:
###

nanoserv.stop
