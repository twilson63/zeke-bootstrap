assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

foo = z.render ->
  jquery()

assert.equal foo, "<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.min.js\"></script>"
