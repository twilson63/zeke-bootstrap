# output
#
module.exports = (tableData) ->
  tableclass = "table"
  tableclass += " table-striped" if tableData.striped
  tableclass += " table-bordered" if tableData.bordered
  tableclass += " table-hover" if tableData.hover
  tableclass += " table-condensed" if tableData.condensed

  text "<table class=\"#{tableclass}\">"
  caption tableData.caption if tableData.caption
  thead ->
    tr ->
      for col in tableData.columns
        th -> if col.format? text(col.format(col.head)) else col.head
  tbody ->
    for row in tableData.rows
      rowclass = "tr"
      rowclass += " class=\"#{row.highlight}\"" if row.highlight
      text "<#{rowclass}>"
      for item,i in row.data
        tabledataitem=item
        if tableData.columns[i].format? 
          tabledataitem=tableData.columns[i].format(tabledataitem)
        if row.format? 
          tabledataitem=row.format(tabledataitem)
        td tabledataitem
      text "</tr>"
  text '</table>'
