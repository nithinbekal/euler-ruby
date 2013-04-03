
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples_of_both(x, y, max)
  sum_of_multiples(x, max) + sum_of_multiples(y, max) - sum_of_multiples(x*y, max)
end

def sum_of_multiples(x, max)
  k = max/x
  x * k * (k+1) / 2
end

puts sum_of_multiples_of_both(3, 5, 999)
