assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

foo = z.render ->
  bootstrapJS()

assert.equal foo, "<script src=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/js/bootstrap.min.js\"></script>"
