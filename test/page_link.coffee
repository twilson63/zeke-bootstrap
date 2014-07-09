strcmp = (str1, str2) ->
  l1 = str1.length
  l2 = str2.length
  mismatch=-1
  for i in [1..l1] by 1
    if mismatch==-1 && (str1.charAt i-1) != (str2.charAt i-1)
      mismatch = i
  mismatch

assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

result = z.render -> pageLink '#index', 'Home'

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<li><a class="page-link" href="#index">Home</a></li>
'''

mismatchloc = strcmp result, htmlf(output)
if mismatchloc != -1
  console.log "mismatch location", mismatchloc-1, "  ", result.substr( mismatchloc-1, 20), "!=", htmlf(output).substr( mismatchloc-1, 20)

assert.equal result, htmlf(output)
