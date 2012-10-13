# output
#<li><a data-toggle="modal" href="#index">Home</a></li>
module.exports = (href,t) -> 
  li ->
    a 'data-toggle':'modal', href:href, t