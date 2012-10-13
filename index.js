
exports.attach = function() {
  this.helpers['topbar'] = function(t) {
    return div('#navbar.navbar.navbar-fixed-top', t);
  };
  this.helpers['responsive_navbar'] = function(t) {
    return div('#navbar.navbar', t);
  };
  this.helpers['inverted_responsive_navbar'] = function(t) {
    return div('#navbar.navbar.navbar-inverse', t);
  };
  this.helpers['navbar_inner'] = function(t) {
    return div('.navbar-inner', t);
  };
  this.helpers['container'] = function(t) {
    return div('.container', t);
  };
  this.helpers['container_fluid'] = function(t) {
    return div('.container-fluid', t);
  };
  this.helpers['modal_header'] = function(t) {
    return div('.modal-header', t);
  };
  this.helpers['modal_body'] = function(t) {
    return div('.modal-body', t);
  };
  this.helpers['modal_footer'] = function(t) {
    return div('.modal-footer', t);
  };
  this.helpers['modal'] = require('./modal');
  this.helpers['modalLink'] = require('./modal_link');
  this.helpers['modalHeaderCloseButton'] = require('./modal_header_close_button');
  this.helpers['accordion'] = require('./accordion');
  this.helpers['accordionEntry'] = require('./accordion_entry');
  this.helpers['row_fluid'] = function(t) {
    return div('.row-fluid', t);
  };
  this.helpers['page_header'] = function(t) {
    return div('.page-header', t);
  };
  this.helpers['collapseBtn'] = require('./collaspe_btn');
  this.helpers['brandLink'] = require('./brand_link');
  this.helpers['pageLink'] = require('./page_link');
  this.helpers['dropdownMenu'] = require('./dropdown_menu');
  this.helpers['jquery'] = require('./jquery');
  this.helpers['bootstrapCSS'] = require('./bootstrapcss');
  this.helpers['bootstrapJS'] = require('./bootstrapjs');
  return this.helpers['bsTable'] = require('./table');
};
