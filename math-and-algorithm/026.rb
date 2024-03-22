n = gets.to_i

expected = 0

n.times do |i|
  expected += n.to_f / (n - i)
end

puts expected

