n = gets
array = readlines.map(&:chomp!)

a = array.group_by(&:itself).map { |k, v| [k, v.size] }
max_n = a.max { |x, y| x[1] <=> y[1] }[1]

b = a.select { |e| e[1] == max_n }.sort_by { |e| e[0] }

b.each do |e|
  puts e.first
end
