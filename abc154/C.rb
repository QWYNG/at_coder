n = gets
array = gets.chomp.split.map(&:to_i)

if (array.count - array.uniq.count) > 0
  puts 'NO'
else
  puts 'YES'
end
