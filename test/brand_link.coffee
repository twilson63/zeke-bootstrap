assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

result = z.render -> brandLink '#index', 'foo'

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<a class="brand pw page-link" href="#index">foo</a>
'''
assert.equal result, htmlf(output)
