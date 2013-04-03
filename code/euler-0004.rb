# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome_of_products
  max = 0
  999.downto(100) do |i|
    i.downto(100) do |j|
      p = i * j
      max = p if p.to_s == p.to_s.reverse && p > max
    end
  end
  max
end

puts palindrome_of_products
