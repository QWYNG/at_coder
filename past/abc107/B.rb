# frozen_string_literal: true

h, w = gets.split.map(&:to_i)
map = readlines.map { |e| e.chomp!.split('') }

map.delete_if do |line|
  line.all?('.')
end

need_delete = []
w.times do |i|
  if map.all? { |line| line[i] == '.' }
    need_delete << i
  end
end

map.each do |line|
  puts line.values_at(*(0..w).to_a - need_delete).join
end
