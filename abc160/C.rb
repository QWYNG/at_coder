# frozen_string_literal: true

@k, @n = gets.split.map(&:to_i)

array = gets.split.map(&:to_i).sort
list = []
array.each_with_index do |e, i|
  if i < array.size - 1
    list.push(array[i + 1] - e)
  else
    list.push(@k + array[0] - e)
  end
end

puts @k - list.max
