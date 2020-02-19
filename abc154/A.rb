s, t = gets.chomp.split
a, b = gets.split.map(&:to_i)
u = gets.chomp

if u == s
  a = a - 1
else
  b = b - 1
end

puts [a, b].join(' ')
