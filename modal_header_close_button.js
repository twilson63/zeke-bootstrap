
module.exports = function() {
  return button(".close", {
    'type': 'button',
    'data-dismiss': 'modal'
  }, '&times;');
};
