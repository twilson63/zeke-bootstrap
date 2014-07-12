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

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''

cen = ->
  div 'align':'center', @data

rt = ->
  div 'align':'right', @data

lt = ->
  div 'align':'left', @data

center = (f) ->
  z.render cen, data:f

right = (f) ->
  z.render rt, data:f

left = (f) ->
  z.render lt, data:f

data = 
  striped:   yes
  bordered:  yes
  hover:     yes
  condensed: yes
  caption:   "sample table data"
  columns:   [{head:"H1"}, {head:"H2",format:center}]
  rows:      [{ data:[left("R00"),"R01"], highlight:"success"},
              { data:["R10","R11"], highlight:"error"},
              { data:["R20","R21"], highlight:"warning"},
              { data:["R30","R31"], highlight:"info"},
              { data:["R40","R41"], format:right} ] 


template = ->
  bsTable @tableData

result = z.render template, tableData:data

output = '''
<table class="table table-striped table-bordered table-hover table-condensed">
  <caption>
  sample table data
  </caption>
  <thead>
    <tr><th>H1</th><th><div align="center">H2</div></th></tr>
  </thead>
  <tbody>
    <tr class="success"><td><div align="left">R00</div></td><td><div align="center">R01</div></td></tr>
    <tr class="error"><td>R10</td><td><div align="center">R11</div></td></tr>
    <tr class="warning"><td>R20</td><td><div align="center">R21</div></td></tr>
    <tr class="info"><td>R30</td><td><div align="center">R31</div></td></tr>
    <tr><td><div align="right">R40</div></td><td><div align="right"><div align="center">R41</div></div></td></tr>
  </tbody>
</table>
'''

mismatchloc = strcmp result, htmlf(output)
if mismatchloc != -1
  console.log "mismatch location", mismatchloc-1, "  ", result.substr( mismatchloc-1, 20), "!=", htmlf(output).substr( mismatchloc-1, 20)

assert.equal result, htmlf(output)