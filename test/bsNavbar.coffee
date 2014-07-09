strcmp = (str1, str2) ->
  l1 = str1.length
  l2 = str2.length
  mismatch=-1
  for i in [1..l1] by 1
    if mismatch==-1 && (str1.charAt i-1) != (str2.charAt i-1)
      mismatch = i
  mismatch

assert = require 'assert'
z = require 'zeke'
z.use require '../'

z.init() unless z.initialized

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''

nav =
# basic fixed-top fixed-bottom static-top
  type:      "basic"
  inverted:  yes
  id:        "menubar"
  selected:  "link"
#item types: brand link text form search dropdown divider
  items:     [{type: "brand", name:"title", txt:"Title", ref:"#"},
              {type: "link", name:"link", txt:"Link", ref:"www.yahoo.com"},
              {type: "divider" },
              {type: "text", name:"text", txt:"Text", collapseable:yes },
              {type: "form", name:"form", txt:"Form", pull:"left"},
              {type: "search", name:"search", txt:"Search", pull:"right"},
              {type: "dropdown", name:"down", pull:"right", txt:"drop2", dropdownItems: [
                  {type:"link", txt:"drop1", ref:"www.google.com"},
                  {type:"divider"},
                  {type:"header", txt:"Nav Title"},
                  {type:"link", txt:"drop2",ref:"www.yahoo.com"}]}
             ]

template = ->
  bsNavbar @navdata

result = z.render template, navdata:nav

output = '''
<div id="menubar" class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="#">Title</a>
      <ul class="nav">
        <li id="link" class="active">
          <a href="www.yahoo.com">Link</a>
        </li>
      </ul>
      <ul class="nav">
        <li class="divider-vertical"></li>
      </ul>
      <div class="nav-collapse">
        <ul class="nav">
          <li id="text" class="navbar-text">Text</li>
        </ul>
      </div>
      <ul class="nav pull-left">
        <form id="form" class="navbar-form">Form</form>
      </ul>
      <ul class="nav pull-right">
        <form class="navbar-search">
          <input id="search" class="search-query" type="text" placeholder="Search" />
        </form>
      </ul>
      <ul class="nav pull-right">
        <li id="down" class="dropdown">
          <a class="dropdown-toggle" href="#" data-toggle="dropdown">drop2<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="www.google.com">drop1</a></li>
            <li class="divider"></li>
            <li class="nav-header">Nav Title</li>
            <li>
              <a href="www.yahoo.com">drop2</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
'''
mismatchloc = strcmp result, htmlf(output)
if mismatchloc != -1
  console.log "mismatch location", mismatchloc-1, "  ", result.substr( mismatchloc-1, 20), "!=", htmlf(output).substr( mismatchloc-1, 20)
assert.equal result, htmlf(output)

navdata =
# basic fixed-top fixed-bottom static-top
  type:      "fixed-top"
  inverted:  no
  id:        "menub"
  selected:  ""
#item types: brand link text form search dropdown divider
  items:     []

template = ->
  bsNavbar @navdata

result = z.render template, navdata:navdata

output = '''
<div id="menub" class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
    </div>
  </div>
</div>
'''
assert.equal result, htmlf(output)

navdata =
# basic fixed-top fixed-bottom static-top
  type:      "fixed-bottom"
  inverted:  no
  id:        "menub"
  selected:  ""
#item types: brand link text form search dropdown divider
  items:     []

template = ->
  bsNavbar @navdata

result = z.render template, navdata:navdata

output = '''
<div id="menub" class="navbar navbar-fixed-bottom">
  <div class="navbar-inner">
    <div class="container">
    </div>
  </div>
</div>
'''
assert.equal result, htmlf(output)

navdata =
# basic fixed-top fixed-bottom static-top
  type:      "static-top"
  inverted:  no
  id:        "menub"
  selected:  ""
#item types: brand link text form search dropdown divider
  items:     []

template = ->
  bsNavbar @navdata

result = z.render template, navdata:navdata

output = '''
<div id="menub" class="navbar navbar-static-top">
  <div class="navbar-inner">
    <div class="container">
    </div>
  </div>
</div>
'''
mismatchloc = strcmp result, htmlf(output)
if mismatchloc != -1
  console.log "mismatch location", mismatchloc-1, "  ", result.substr( mismatchloc-1, 20), "!=", htmlf(output).substr( mismatchloc-1, 20)
assert.equal result, htmlf(output)

