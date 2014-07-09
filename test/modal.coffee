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

result = z.render -> 
  modal 'myModal', ->
    modal_header ->
      modalHeaderCloseButton ''
    modal_body ->
    modal_footer ->

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<div id="myModal" class="modal hide fade">
  <div class="modal-header">
    <button class="close" type="button" data-dismiss="modal">&times;</button>
  </div>
  <div class="modal-body"></div>
  <div class="modal-footer"></div>
</div>
'''
mismatchloc = strcmp result, htmlf(output)
if mismatchloc != -1
  console.log "mismatch location", mismatchloc-1, "  ", result.substr( mismatchloc-1, 20), "!=", htmlf(output).substr( mismatchloc-1, 20)
assert.equal result, htmlf(output)
