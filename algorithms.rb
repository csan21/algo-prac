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

# def fib(num)
#   return 0 if num == 0
#   return 1 if num == 1
#   fib(num - 1) + fib(num - 2)
# end

def fib(num)
  return num if num == 0 || num == 1
  fib(num - 1) + fib(num - 2)
end
