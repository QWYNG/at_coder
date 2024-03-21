n = gets.to_i
array = gets.split.map(&:to_i)

table = {}
array.each do |e|
  if table[e]
    table[e] += 1
  else
    table[e] = 1
  end
end

result = 0
array.uniq!

loop do
  e = array.shift
  a = table[e]
  b = table[100000 - e]

  if e == 100000 / 2
    result += a * (a - 1) / 2 if a
  else
    result += a * b if a && b
    table[100000 - e] = 0
  end

  break if array.empty?
end

puts result