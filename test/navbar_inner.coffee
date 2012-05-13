assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

foo = z.render ->
  navbar_inner ->
    h1 'Foo'

assert.equal foo, '<div class="navbar-inner"><h1>Foo</h1></div>'
