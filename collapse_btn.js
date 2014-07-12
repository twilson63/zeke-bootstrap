
module.exports = function() {
  return a('.btn.btn-navbar', {
    'data-toggle': 'collapse',
    'data-target': '.nav-collapse'
  }, function() {
    var times, _results;
    _results = [];
    for (times = 0; times <= 2; times++) {
      _results.push(span('.icon-bar', ''));
    }
    return _results;
  });
};
