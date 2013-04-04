
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder. What is the smallest positive number that is
# evenly divisible by all of the numbers from 1 to 20?

def prime_factors(n)
  factors = []
  (2..n/2).each do |i|
    if n%i == 0
      factors = factors + [i] + prime_factors(n/i)
      break
    end
  end
  factors.empty? ? [n] : factors
end

def divisible_upto_20
  product = 1
  (1..20).each do |i|
    p = product
    prime_factors(i).each do |j|
      if p%j == 0
        p = p/j
      else
        product = product * j
      end
    end
  end
  product
end

puts divisible_upto_20
