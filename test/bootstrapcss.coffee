assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

foo = z.render ->
  bootstrapCSS()

assert.equal foo, "<link href=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/css/bootstrap-combined.min.css\" rel=\"stylesheet\" />"

