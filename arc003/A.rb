# frozen_string_literal: true

n = gets.to_i
array = gets.chomp!.split('')

total = 0
array.each do |score|
  total += case score
           when 'A'
             4
           when 'B'
             3
           when 'C'
             2
           when 'D'
             1
           when 'F'
             0
           end
end

puts total.quo(n).to_f
