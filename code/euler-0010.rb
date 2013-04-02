
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

class Integer
  def prime?
    return false if self < 2
    return true  if self == 2
    return false if self%2 == 0

    i = 3
    limit = self/i

    while i <= limit
      return false if self%i == 0
      i += 2
      limit = self/i
    end
    true
  end
end

primes = Enumerator.new do |e|
  i = 2
  loop do
    e << i if i.prime?
    i += (i%2 + 1)
  end
end

LIMIT = 2_000_000

puts primes.take_while { |n| n < LIMIT }.reduce(:+)
