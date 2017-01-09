// challenge3/challenge.js

Array.prototype.indexOf = function(val) {
  
  // Student code below
  for (var i = 0; i < this.length; i++) {
    if (this[i] === val) {
      return i
    }
  }
  return -1
}
