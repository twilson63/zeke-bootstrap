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

assert.equal result, htmlf(output)
