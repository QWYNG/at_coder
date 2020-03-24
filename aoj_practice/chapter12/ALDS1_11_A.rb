n = gets.to_i
m = Array.new(n){ Array.new(n, 0) }

readlines.each do |line|
  # 1 2 2 4
  line = line.chomp!.split.map(&:to_i)
  v = line[0] - 1
  line[1].times do |index|
    m[v][line[index + 2] - 1] = 1
  end
end
m.each do |line|
  puts line.join(' ')
end
