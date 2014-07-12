
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
      _ref = tableData.columns;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        col = _ref[_i];
        _results.push(th(function() {
          if (typeof col.format === "function" ? col.format(text(col.format(col.head))) : void 0) {} else {
            return col.head;
          }
        }));
      }
      return _results;
    });
  });
  tbody(function() {
    var i, item, row, rowclass, tabledataitem, _i, _len, _len2, _ref, _ref2, _results;
    _ref = tableData.rows;
    _results = [];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      row = _ref[_i];
      rowclass = "tr";
      if (row.highlight) rowclass += " class=\"" + row.highlight + "\"";
      text("<" + rowclass + ">");
      _ref2 = row.data;
      for (i = 0, _len2 = _ref2.length; i < _len2; i++) {
        item = _ref2[i];
        tabledataitem = item;
        if (tableData.columns[i].format != null) {
          tabledataitem = tableData.columns[i].format(tabledataitem);
        }
        if (row.format != null) tabledataitem = row.format(tabledataitem);
        td(tabledataitem);
      }
      _results.push(text("</tr>"));
    }
    return _results;
  });
  return text('</table>');
};
