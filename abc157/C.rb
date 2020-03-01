# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
array = readlines.map { |e| e.split.map(&:to_i) }

ans = ''

(1..n).to_a.each do |key|
  value = array.select { |e| e[0] == key }.uniq
  if value.size > 1
    puts -1
    exit
  end

  if key == 1 && value.any? && value.first[1] == 0 && n != 1
    puts -1
    exit
  end

  value = if value.empty? && n != 1
            key == 1 ? 1 : 0
          elsif value.empty? && n == 1
            0
          else
            value.first[1]
          end
  ans += value.to_s
end

puts ans
