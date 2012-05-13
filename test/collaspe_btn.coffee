assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

result = z.render -> collaspeBtn()

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<a class="btn btn-navbar" data-toggle="collaspe" data-target=".nav-collaspe">
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
</a>
'''
assert.equal result, htmlf(output)
