// binary search recursive
var binarySearch = function(array, obj, min, max) {
  var mid = Math.floor((max-min)/2) + min;

  if (array[mid] === obj) {
    return mid;
  } else if (max === min) {
    return null;
  } else if (array[mid] < obj) {
    return binarySearch(array, obj, mid, max);
  } else if (array[mid] > obj) {
    return binarySearch(array, obj, min, mid)
  }
}
// var array = [1,2,3,4,5,6,7,8,9,10];
// var obj = 3;
// var min = 0;
// var max = array.length-1
// binarySearch(array, obj, min, max) output: returns index 2 for obj


// palindrome check
var palindrome = function(string) {
  return string == string.split('').reverse().join('');
}
// palindrome("hello") output: false
// palindrome("wow") output: true


// bubble sort
var bubbleSort = function(array) {
  for (var i = array.length - 1; i >= 0; i--){
    for(var j = 1; j <= i; j++){
      if(array[j-1] > array[j]){
        var temp = array[j-1];
        array[j-1] = array[j];
        array[j] = temp;
      }
    }
  }
  return array
}
// bubbleSort([6,8,1,2,4,5]) output: [ 1, 2, 4, 5, 6, 8 ]
