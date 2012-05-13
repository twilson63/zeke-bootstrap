
module.exports = function(href, t) {
  return li(function() {
    return a('.page-link', {
      href: href
    }, t);
  });
};
