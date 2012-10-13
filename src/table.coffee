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
      for col in tableData.head
        th col
  tbody ->
    for row in tableData.rows
      rowclass = "tr"
      rowclass += " class=\"#{row.highlight}\"" if row.highlight
      text "<#{rowclass}>"
      td item for item in row.data
      text "</tr>"
  text '</table>'
