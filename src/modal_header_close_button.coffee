# output
#<button type="button" class="close" data-dismiss="modal">&times;</button>
module.exports = (name)  -> 
  button "#{name}.close", 'type':'button', 'data-dismiss':'modal', '&times;'
