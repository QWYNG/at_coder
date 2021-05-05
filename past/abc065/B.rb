# frozen_string_literal: true

n = gets.to_i
numbers = readlines.map.with_index do |line, i|
  [i, line.to_i - 1]
end.to_h

on = numbers.first

count = 1
checkd = {}
loop do
  if on[1] == 1
    puts count
    exit
  elsif !checkd[on[1]]
    on = [on[1], numbers[on[1]]]
    checkd[on[0]] = true
    count += 1
  else
    #binding.irb
    puts -1
    exit
  end
end
