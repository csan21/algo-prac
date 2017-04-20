# fibonacci iterative
def fib_it(num)
  array = [0, 1]
  count = 2
  until count > num
    array << array[-2] + array[-1]
    count += 1
  end
  array[num]
end
# fib_it(5) output: 5

# fibonacci recursion
def fib(num)
  return num if num == 0 || num == 1
  fib(num - 1) + fib(num - 2)
end
# fib(5) output: 5

# simple string reverse without .reverse
def hard_reverse(str)
  str.chars.reduce{ |x,y| y+x }
end
# hard_reverse("hello") output: "olleh"

# palindrome check
def palindrome?(str)
  str == str.reverse
end
# palindrome?("wow") output: true
# palindrome?("hello") output: false

# binary search recursion with 4 args, returns index of obj
def binary_search(array, obj, min = 0, max = arr.length-1)
  mid = array[min..max].length / 2 + min
  return nil if min == max
  return mid if array[mid] == obj

  if array[mid] < obj
    binary_search(array, obj, mid, max)
  elsif array[mid] > obj
    binary_search(array, obj, min, mid)
  end
end
# array = [:A, :B, :C, :D, :E, :F, :G, :H]
# binary_search(array, :E)


# fizzbuzz with 15
def fizzbuzz?(n)
  case
  when n % 15 == 0 then "FizzBuzz"
  when n % 5 == 0 then "Buzz"
  when n % 3 == 0 then "Fizz"
  end
end

# fizzbuzz without 15
def fizzbuzz?(n)
  case
  when n % 5 && n % 3 == 0 then "FizzBuzz"
  when n % 5 == 0 then "Buzz"
  when n % 3 == 0 then "Fizz"
  end
end


# bubble sort
def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false

    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end


# quicksort
class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end
# arr = [34, 2, 1, 5,3]
# p arr.quicksort


# merge sort
def merge_sort(array)
  return array if array.size <= 1

  left, right = array.each_slice((array.size/2).round).to_a

  merge = -> (left, right) {
    array = []
    while left.size > 0 && right.size > 0
      array << (left[0] < right[0] ? left.shift : right.shift)
    end

    return array = array + left + right
  }

  return merge.call merge_sort(left), merge_sort(right)
end


# mirror symmetry
def is_symmetric(root)
  return true if root.nil?
  mirror(root.left, root.right)
end

def mirror(a,b)
  return a == b if (a == nil || b == nil)
  a.val == b.val && mirror(a.left, b.right) && mirror(a.right,b.left)
end
