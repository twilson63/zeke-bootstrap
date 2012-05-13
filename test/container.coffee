assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

foo = z.render ->
  container ->
    h1 'Foo'

assert.equal foo, '<div class="container"><h1>Foo</h1></div>'
