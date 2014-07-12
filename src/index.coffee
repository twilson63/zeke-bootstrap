# Usage Example:
# template = ->
#  topbar ->
#    navbar_inner ->
#      container ->
exports.attach = ->
  @helpers['topbar'] = (t) -> div '#navbar.navbar.navbar-fixed-top', t
  @helpers['responsive_navbar'] = (t) -> div '#navbar.navbar', t
  @helpers['inverted_responsive_navbar'] = (t) -> div '#navbar.navbar.navbar-inverse', t
  @helpers['navbar_inner'] = (t) -> div '.navbar-inner', t
  @helpers['container'] = (t) -> div '.container', t
  @helpers['container_fluid'] = (t) -> div '.container-fluid', t
  @helpers['modal_header'] = (t) -> div '.modal-header', t
  @helpers['modal_body'] = (t) -> div '.modal-body', t
  @helpers['modal_footer'] = (t) -> div '.modal-footer', t
  @helpers['modal'] = require './modal'
  @helpers['modalLink'] = require './modal_link'
  @helpers['modalHeaderCloseButton'] =  require './modal_header_close_button'
  @helpers['accordion'] = require './accordion'
  @helpers['accordionEntry'] = require './accordion_entry'
  @helpers['row_fluid'] = (t) -> div '.row-fluid', t
  @helpers['page_header'] = (t) -> div '.page-header', t
  @helpers['collapseBtn'] = require './collapse_btn'
  #@helpers['nav_collaspe'] -> (t) -> div '.nav-collapse', t
  @helpers['brandLink'] = require './brand_link'
  @helpers['pageLink'] = require './page_link'
  @helpers['dropdownMenu'] = require './dropdown_menu'  
  @helpers['jquery'] = require './jquery'
  @helpers['bootstrapCSS'] = require './bootstrapcss'
  @helpers['bootstrapJS'] = require './bootstrapjs'  
  @helpers['bsTable'] = require './table'  
  @helpers['bsNavbar'] = require './bsNavbar'  
  @helpers['center'] = (t) -> div 'align':'center',t
