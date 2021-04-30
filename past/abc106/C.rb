# frozen_string_literal: true

s = gets.chomp!
k = gets.to_i

s.each_char.with_index do |e, i|
  if e == '1' && i + 1 != k
    next
  else
    puts e
    exit
  end
end
