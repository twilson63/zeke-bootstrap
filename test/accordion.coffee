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
  accordion 'testAccordion', ->
    accordionEntry 'testAccordion', 'testAccordionOne', 'in', 'Accordion One', ->
      p 'Accordion text one'
    accordionEntry 'testAccordion', 'testAccordionTwo', '', 'Accordion Two', ->
      p 'Accordion text two'

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<div id="testAccordion" class="accordion">
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#testAccordion" href="#testAccordionOne">Accordion One</a>
    </div>
    <div id="testAccordionOne" class="accordion-body collapse in">
       <div class="accordion-inner">
         <p>Accordion text one</p>
       </div>
    </div>
  </div>
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#testAccordion" href="#testAccordionTwo">Accordion Two</a>
    </div>
    <div id="testAccordionTwo" class="accordion-body collapse">
      <div class="accordion-inner">
        <p>Accordion text two</p>
      </div>
    </div>
  </div>
</div>
'''

mismatchloc = strcmp result, htmlf(output)
if mismatchloc != -1
  console.log "mismatch location", mismatchloc-1, "  ", result.substr( mismatchloc-1, 20), "!=", htmlf(output).substr( mismatchloc-1, 20)
assert.equal result, htmlf(output)
