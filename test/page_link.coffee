assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

result = z.render -> pageLink '#index', 'Home'

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<li><a class="page-link" href="#index">Home</a></li>
'''
assert.equal result, htmlf(output)
