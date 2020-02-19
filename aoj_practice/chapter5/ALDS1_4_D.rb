# frozen_string_literal: true

n, k = gets.chomp.split.map(&:to_i)
array = readlines.map { |e| e.chomp!.to_i }

func = proc do |p|
  array_c = array.dup
  nimotu = 0
  k.times do
    loop do
      break if array_c.empty?

      if nimotu + array_c.first <= p
        nimotu += array_c.shift
      else
        break
      end
    end

    nimotu = 0
  end

  array_c.empty?
end

left = 0
right = 100000 * 10000
ans = 0

while left <= right
  mid = (left + right) / 2
  if func.call(mid)
    ans = mid
    right = mid - 1
  else
    left = mid + 1
  end
end

puts ans
