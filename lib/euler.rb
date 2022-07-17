require 'prime'

# Problem 1 (find the sum of all multiples of 3 or 5 below 1000)
def sum_multiples(divisors, limit)
  (1...limit).to_a.select { |n| divisors.any? { |divisor| (n % divisor).zero? } }.sum
end

p sum_multiples([3, 5], 1000)

# Problem 2 (sum even fibonacci numbers no greater than 4 million)
def sum_even_fibonacci(limit)
  fibs = [0, 1]
  loop do
    fibs << fibs.last(2).sum
    break if fibs.last > limit
  end
  fibs.pop
  fibs.select(&:even?).sum
  # fibs.sum
end

p sum_even_fibonacci(4_000_000)

# Problem 3 (largest prime factor of the number 600851475143)
def largest_prime_factor(n)
  return n if n.prime?

  Prime.each { |prime| return largest_prime_factor(n / prime) if (n % prime).zero? }
end

p largest_prime_factor(600_851_475_143)
p largest_prime_factor(13_195)

# Problem 4 (largest palindrome made from the product of two 3-digit numbers)
def largest_palindrome
  products = []
  (100..999).to_a.each { |a| (100..999).to_a.each { |b| products << b * a } }
  products.select { |product| product.to_s == product.to_s.reverse }.max
end

p largest_palindrome

# Problem 5 (smallest positive number that is evenly divisible by all of the numbers from 1 to 20)
def smallest_multiple(divisors, acc = divisors.first)
  return acc if divisors.length.zero?

  smallest_multiple(divisors.drop(1), (divisors.first).lcm(acc))
end

# # Problem 5 (Iterative solution - not practical for larger lists of numbers)
# def smallest_multiple(numbers)
#   n = 1
#   loop do
#     return n if numbers.all? { |number| (n % number).zero? }

#     n += 1
#   end
# end

p smallest_multiple((1..20).to_a)
