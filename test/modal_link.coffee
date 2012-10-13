assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

result = z.render -> modalLink '#index', 'Home'

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<li><a data-toggle="modal" href="#index">Home</a></li>
'''
assert.equal result, htmlf(output)
