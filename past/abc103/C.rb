n = gets.to_i
array = gets.split.map(&:to_i)

m = array.inject(&:lcm) - 1

ans = 0

array.each do |e|
  ans += m % e
end

puts ans
