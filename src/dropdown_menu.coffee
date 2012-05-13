# output
# <li class="dropdown closed">
#     <a href="#contact" class="dropdown-toggle" data-toggle="dropdown">
#       Contact
#       <b class="caret"></b>
#     </a>
#     <ul class="dropdown-menu">
#       <li>
#         <a href="http://twitter.com/coderetreatchs">@coderetreatchs</a>
#       </li>
#       <li>
#         <a href="mailto://coderetreat@jackhq.com">coderetreat@jackhq.com</a>
#       </li>
#       <li>
#         <a href="tel:843.606.0637">843.606.0637</a>
#       </li>
#     </ul>
# </li>
module.exports = (href, name, links) -> 
  li '.dropdown.closed', ->
    a '.dropdown-toggle', 'data-toggle': 'dropdown', href: href, ->
      text name
      b '.caret', ''
    ul '.dropdown-menu', ->
      (li -> a { href: link.href }, link.label) for link in links