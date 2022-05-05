# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)

grouped = numbers.group_by(&:itself).transform_values!(&:count).sort_by do |k, v| v end
sum = 0
grouped.last(k).each do |k, v|
  sum += v
end

puts n - sum
