
module.exports = function(href, name, links) {
  return li('.dropdown.closed', function() {
    a('.dropdown-toggle', {
      'data-toggle': 'dropdown',
      href: href
    }, function() {
      text(name);
      return b('.caret', '');
    });
    return ul('.dropdown-menu', function() {
      var link, _i, _len, _results;
      _results = [];
      for (_i = 0, _len = links.length; _i < _len; _i++) {
        link = links[_i];
        _results.push(li(function() {
          return a({
            href: link.href
          }, link.label);
        }));
      }
      return _results;
    });
  });
};
