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
