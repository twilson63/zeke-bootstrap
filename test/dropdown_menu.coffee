assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

result = z.render -> dropdownMenu '#contact', 'Contact', [
  { href: 'http://twitter.com/coderetreatchs', label: '@coderetreatchs' }
  { href: 'mailto://coderetreat@jackhq.com', label: 'coderetreat@jackhq.com' }
  { href: 'tel:843.606.0637', label: '843.606.0637' }
  ]

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''
output = '''
<li class="dropdown closed">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#contact">
      Contact
      <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
      <li>
        <a href="http://twitter.com/coderetreatchs">@coderetreatchs</a>
      </li>
      <li>
        <a href="mailto://coderetreat@jackhq.com">coderetreat@jackhq.com</a>
      </li>
      <li>
        <a href="tel:843.606.0637">843.606.0637</a>
      </li>
    </ul>
</li>
'''
# console.log result
# console.log htmlf(output)
assert.equal result, htmlf(output)
