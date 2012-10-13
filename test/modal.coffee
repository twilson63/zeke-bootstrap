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
assert.equal result, htmlf(output)
