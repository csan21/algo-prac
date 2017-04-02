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


# fibonacci recursion
def fib(num)
  return num if num == 0 || num == 1
  fib(num - 1) + fib(num - 2)
end


# simple string reverse without .reverse
def hard_reverse(str)
  str.chars.reduce{ |x,y| y+x }
end


# palindrome check
def palindrome?(str)
  str == str.reverse
end


# binary search recursion with 4 args, returns index of obj
def binary_search(arr, obj, front = 0, back = arr.length-1)
  i = arr[front..back].length / 2 + front
  return nil if front == back
  return i if arr[i] == obj

  if arr[i] < obj
    binary_search(arr, obj, i, back)
  elsif arr[i] > obj
    binary_search(arr, obj, front, i)
  end
end
# array = [:A, :B, :C, :D, :E, :F, :G, :H]
# binary_search(array, :E)
