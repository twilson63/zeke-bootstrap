assert = require 'assert'
z = require 'zeke'
z.use require '../'

z.init() unless z.initialized

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''

data = 
  striped:   yes
  bordered:  yes
  hover:     yes
  condensed: yes
  caption:   "sample table data"
  head:      ["H1", "H2"]
  rows:      [{ data:["R00","R01"], highlight:"success"},
              { data:["R10","R11"], highlight:"error"},
              { data:["R20","R21"], highlight:"warning"},
              { data:["R30","R31"], highlight:"info"},
              { data:["R40","R41"]} ] 



template = ->
  bsTable @tableData

result = z.render template, tableData:data

output = '''
<table class="table table-striped table-bordered table-hover table-condensed">
  <caption>
  sample table data
  </caption>
  <thead>
    <tr><th>H1</th><th>H2</th></tr>
  </thead>
  <tbody>
    <tr class="success"><td>R00</td><td>R01</td></tr>
    <tr class="error"><td>R10</td><td>R11</td></tr>
    <tr class="warning"><td>R20</td><td>R21</td></tr>
    <tr class="info"><td>R30</td><td>R31</td></tr>
    <tr><td>R40</td><td>R41</td></tr>
  </tbody>
</table>
'''
console.log result
console.log htmlf(output)
assert.equal result, htmlf(output)