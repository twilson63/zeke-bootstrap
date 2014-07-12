# output
# <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
#    <span class="icon-bar"></span>
#    <span class="icon-bar"></span>
#    <span class="icon-bar"></span>
# </a>
module.exports = ->
  a '.btn.btn-navbar', 'data-toggle': 'collapse', 'data-target': '.nav-collapse', ->
    span '.icon-bar', '' for times in [0..2]