# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025  385 = 2640.

# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

def sum_of_squares(n)
  n * (n+1) * (2*n + 1) / 6
end

def sum_of_series(n)
  n * (n+1) / 2
end

def diff(n)
  (sum_of_squares(n) - sum_of_series(n)**2).abs
end

puts diff(100)
