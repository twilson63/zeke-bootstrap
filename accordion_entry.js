
module.exports = function(accordion_id, entry_id, in_sel, heading, body) {
  return div('.accordion-group', function() {
    div('.accordion-heading', function() {
      return a('.accordion-toggle', {
        'data-toggle': 'collapse',
        'data-parent': "\#" + accordion_id,
        href: "\#" + entry_id
      }, heading);
    });
    return div("\#" + entry_id + ".accordion-body.collapse." + in_sel, function() {
      return div('.accordion-inner', body);
    });
  });
};
