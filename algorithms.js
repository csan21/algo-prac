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
    return binarSearch(array, obj, min, mid)
  }
}
// var array = [1,2,3,4,5,6,7,8,9,10];
// var obj = 3;
// var min = 0;
// var max = array.length-1
// binarySearch(array, obj, min, max)
