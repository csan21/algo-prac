// linear search
var linearSearch = function(array, obj) {
  for (var i = 0; i < array.length; ++i) {
    if (array[i] == obj) {
      return i;
    }
  }
  return -1;
}
// var array = [1,2,3,4,5,6,7,8,9,10];
// var obj = 6;
// linearSearch(array, obj) output: returns index 5 for obj


// binary search recursive
var binarySearch = function(array, obj, min, max) {
  var mid = Math.floor((max-min)/2);

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
  for (var i = array.length - 1; i >= 0; i--) {
    for (var j = 1; j <= i; j++) {
      if (array[j-1] > array[j]) {
        var temp = array[j-1];
        array[j-1] = array[j];
        array[j] = temp;
      }
    }
  }
  return array
}
// bubbleSort([6,8,1,2,4,5]) output: [ 1, 2, 4, 5, 6, 8 ]


// merge sort in 2 functions
var mergeSort = function(list) {
  if (list.length <= 1)
    return list;

  var mid   = Math.floor(list.length / 2);
  var left  = list.slice(0, mid);
  var right = list.slice(mid, list.length);

    return merge(mergeSort(left), mergeSort(right))
}

var merge = function(left, right) {
  var temp = [];
  while (left && left.length > 0 && right && right.length > 0) {
    temp.push(left[0] <= right[0]? left.shift() : right.shift());
  }
  return temp.concat(left, right);
}
// nums = [10,9,8,7,6,5,5,5,4,3,2,1]
// mergeSort(nums) output: [ 1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 10 ]
