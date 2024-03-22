n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

results = []
n.times do |i|
  a = as[i] * 1.0
  b = bs[i] * 1.0

  expected = (a * 2 / 6) + (b * 4 / 6)

  results << expected
end

puts results.sum
