
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

def factorize(n)
  factorize_greater_than(1, n).flatten.sort
end

def factorize_greater_than(x, n)
  factors = []
  (x+1..n/2).each do |i|
    if n%i == 0
      factors << i
      if i < n/i
        factors << n/i
        factors << factorize_greater_than(i, n/i)
      end
      break
    end
  end
  factors
end

def largest_prime_factor(n)
  largest, factors = n, factorize(n)
  until factors.empty?
    h = factors.pop
    if factors.all? { |i| h%i != 0 }
      largest = h
      break
    end
  end
  largest
end

puts largest_prime_factor(600851475143)
