# frozen_string_literal: true

n = gets
array = gets.split.map(&:to_i)

array.select!(&:even?)
ans = true
array.each do |e|
  if e % 5 == 0 || e % 3 == 0
    next
  else
    ans = false
  end
end

if ans
  puts 'APPROVED'
else
  puts 'DENIED'
end
