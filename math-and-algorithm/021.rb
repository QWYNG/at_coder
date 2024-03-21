n, r = gets.split.map(&:to_i)

# nの階上
def factorial(n)
  return 1 if n == 0
  n * factorial(n - 1)
end

puts factorial(n) / (factorial(r) * factorial(n - r))