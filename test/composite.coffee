assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

foo = z.render ->
  topbar ->
    navbar_inner ->
      container ->
        h1 'Foo'

assert.equal foo, '<div id="navbar" class="navbar navbar-fixed-top"><div class="navbar-inner"><div class="container"><h1>Foo</h1></div></div></div>'