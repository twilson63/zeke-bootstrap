# output
#
module.exports = (navbarData) ->
  collapseform = no
  for item in navbarData.items
    collapseform=yes if item.collapseable
  navbarclass=""
  navbarclass=".navbar-#{navbarData.type}" if navbarData.type isnt "basic"
  navbarclass += ".navbar-inverse" if navbarData.inverted
  div "\##{navbarData.id}.navbar#{navbarclass}", ->
    div '.navbar-inner', ->
      div '.container', ->
        if collapseform
          a '.btn.btn-navbar', 'data-toggle':'collapse', 'data-target':'.nav-collapse', ->
            span 'class':'icon-bar'
            span 'class':'icon-bar'
            span 'class':'icon-bar'
        for item in navbarData.items
          itemtxt = item.txt
          if item.type is "brand"
            a '.brand', 'href':item.ref, itemtxt
          else          
            text "<div class=\"nav-collapse\">" if item.collapseable
            pullstring=""
            pullstring=".pull-#{item.pull}" if item.pull
            activestring=""
            activestring=".active" if item.name == navbarData.selected
            ul ".nav#{pullstring}", ->
              switch item.type
                when "link"
                  li "\##{item.name}#{activestring}", ->
                    a href:item.ref, itemtxt
                when "divider"
                  li '.divider-vertical',''
                when "text"
                  li "\##{item.name}#{activestring}.navbar-text", itemtxt
                when "form"
                  form "\##{item.name}.navbar-form", item.txt
                when "search"
                  form ".navbar-search", ->
                    input "##{item.name}.search-query", type:'text', 'placeholder':itemtxt
                when "dropdown"
                  li "\##{item.name}#{activestring}.dropdown", ->
                    a '.dropdown-toggle', href:'#', 'data-toggle':'dropdown', ->
                      text itemtxt
                      b 'class':'caret',''
                    ul '.dropdown-menu', ->
                      for dropdownItem in item.dropdownItems
                        dropdownItemtxt = dropdownItem.txt
                        switch dropdownItem.type
                          when "link"
                            li -> a 'href':dropdownItem.ref, dropdownItemtxt
                          when "divider"
                            li 'class':'divider'
                          when "header"
                            li ".nav-header", dropdownItemtxt
                          else
                            text downdownItemtxt
                else
                  text item.txt
            text "</div>" if item.collapseable
