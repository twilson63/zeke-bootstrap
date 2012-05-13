# Usage Example:
# template = ->
#  topbar ->
#    navbar_inner ->
#      container ->
exports.attach = ->
  @helpers['topbar'] = (t) -> div '#navbar.navbar.navbar-fixed-top', t
  @helpers['navbar_inner'] = (t) -> div '.navbar-inner', t
  @helpers['container'] = (t) -> div '.container', t
  @helpers['collaspeBtn'] = require './collaspe_btn'
  #@helpers['nav_collaspe'] -> (t) -> div '.nav-collapse', t
  @helpers['brandLink'] = require './brand_link'
  @helpers['pageLink'] = require './page_link'
  @helpers['dropdownMenu'] = require './dropdown_menu'