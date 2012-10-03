
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
  this.helpers['page_header'] = function(t) {
    return div('.page-header', t);
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
  this.helpers['row_fluid'] = function(t) {
    return div('.row-fluid', t);
  };
  this.helpers['modal'] = require('./src/modal');
  this.helpers['collaspeBtn'] = require('./collaspe_btn');
  this.helpers['brandLink'] = require('./brand_link');
  this.helpers['pageLink'] = require('./page_link');
  this.helpers['modalLink'] = require('./src/modal_link');
  this.helpers['accordionEntry'] = require('./src/accordion_entry');
  this.helpers['accordion'] = require('./src/accordion');
  this.helpers['modalHeaderCloseButton'] = require('./src/modal_header_close_button');
  return this.helpers['dropdownMenu'] = require('./dropdown_menu');
};
