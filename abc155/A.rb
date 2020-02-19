a, b, c = gets.split.map(&:to_i)

if a == b && a== c
  puts 'No'
elsif a == b or a == c or b == c
  puts 'Yes'
else
  puts 'No'
end
