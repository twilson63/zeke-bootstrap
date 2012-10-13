
module.exports = function(href, t) {
  return li(function() {
    return a({
      'data-toggle': 'modal',
      href: href
    }, t);
  });
};
