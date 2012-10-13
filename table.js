
module.exports = function(tableData) {
  var tableclass;
  tableclass = "table";
  if (tableData.striped) tableclass += " table-striped";
  if (tableData.bordered) tableclass += " table-bordered";
  if (tableData.hover) tableclass += " table-hover";
  if (tableData.condensed) tableclass += " table-condensed";
  text("<table class=\"" + tableclass + "\">");
  if (tableData.caption) caption(tableData.caption);
  thead(function() {
    return tr(function() {
      var col, _i, _len, _ref, _results;
      _ref = tableData.head;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        col = _ref[_i];
        _results.push(th(col));
      }
      return _results;
    });
  });
  tbody(function() {
    var item, row, rowclass, _i, _j, _len, _len2, _ref, _ref2, _results;
    _ref = tableData.rows;
    _results = [];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      row = _ref[_i];
      rowclass = "tr";
      if (row.highlight) rowclass += " class=\"" + row.highlight + "\"";
      text("<" + rowclass + ">");
      _ref2 = row.data;
      for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
        item = _ref2[_j];
        td(item);
      }
      _results.push(text("</tr>"));
    }
    return _results;
  });
  return text('</table>');
};
