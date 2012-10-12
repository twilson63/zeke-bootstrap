# output
#<li><a href="#index" class="page-link">Home</a></li>
module.exports = (accordion_id,entry_id,in_sel,heading,body) -> 
  div '.accordion-group', ->
    div '.accordion-heading', ->
      a '.accordion-toggle', 'data-toggle':'collapse', 'data-parent':"\##{accordion_id}", href: "\##{entry_id}", heading
    div "\##{entry_id}.accordion-body.collapse.#{in_sel}", ->
      div '.accordion-inner', body
