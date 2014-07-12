
module.exports = function(navbarData) {
  var collapseform, item, navbarclass, _i, _len, _ref;
  collapseform = false;
  _ref = navbarData.items;
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    item = _ref[_i];
    if (item.collapseable) collapseform = true;
  }
  navbarclass = "";
  if (navbarData.type !== "basic") navbarclass = ".navbar-" + navbarData.type;
  if (navbarData.inverted) navbarclass += ".navbar-inverse";
  return div("\#" + navbarData.id + ".navbar" + navbarclass, function() {
    return div('.navbar-inner', function() {
      return div('.container', function() {
        var activestring, item, itemtxt, pullstring, _j, _len2, _ref2, _results;
        if (collapseform) {
          a('.btn.btn-navbar', {
            'data-toggle': 'collapse',
            'data-target': '.nav-collapse'
          }, function() {
            span({
              'class': 'icon-bar'
            });
            span({
              'class': 'icon-bar'
            });
            return span({
              'class': 'icon-bar'
            });
          });
        }
        _ref2 = navbarData.items;
        _results = [];
        for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
          item = _ref2[_j];
          itemtxt = item.txt;
          if (item.type === "brand") {
            _results.push(a('.brand', {
              'href': item.ref
            }, itemtxt));
          } else {
            if (item.collapseable) text("<div class=\"nav-collapse\">");
            pullstring = "";
            if (item.pull) pullstring = ".pull-" + item.pull;
            activestring = "";
            if (item.name === navbarData.selected) activestring = ".active";
            ul(".nav" + pullstring, function() {
              switch (item.type) {
                case "link":
                  return li("\#" + item.name + activestring, function() {
                    return a({
                      href: item.ref
                    }, itemtxt);
                  });
                case "divider":
                  return li('.divider-vertical', '');
                case "text":
                  return li("\#" + item.name + activestring + ".navbar-text", itemtxt);
                case "form":
                  return form("\#" + item.name + ".navbar-form", item.txt);
                case "search":
                  return form(".navbar-search", function() {
                    return input("#" + item.name + ".search-query", {
                      type: 'text',
                      'placeholder': itemtxt
                    });
                  });
                case "dropdown":
                  return li("\#" + item.name + activestring + ".dropdown", function() {
                    a('.dropdown-toggle', {
                      href: '#',
                      'data-toggle': 'dropdown'
                    }, function() {
                      text(itemtxt);
                      return b({
                        'class': 'caret'
                      }, '');
                    });
                    return ul('.dropdown-menu', function() {
                      var dropdownItem, dropdownItemtxt, _k, _len3, _ref3, _results2;
                      _ref3 = item.dropdownItems;
                      _results2 = [];
                      for (_k = 0, _len3 = _ref3.length; _k < _len3; _k++) {
                        dropdownItem = _ref3[_k];
                        dropdownItemtxt = dropdownItem.txt;
                        switch (dropdownItem.type) {
                          case "link":
                            _results2.push(li(function() {
                              return a({
                                'href': dropdownItem.ref
                              }, dropdownItemtxt);
                            }));
                            break;
                          case "divider":
                            _results2.push(li({
                              'class': 'divider'
                            }));
                            break;
                          case "header":
                            _results2.push(li(".nav-header", dropdownItemtxt));
                            break;
                          default:
                            _results2.push(text(downdownItemtxt));
                        }
                      }
                      return _results2;
                    });
                  });
                default:
                  return text(item.txt);
              }
            });
            if (item.collapseable) {
              _results.push(text("</div>"));
            } else {
              _results.push(void 0);
            }
          }
        }
        return _results;
      });
    });
  });
};
