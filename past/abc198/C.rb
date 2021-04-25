# frozen_string_literal: true

r, x, y = gets.split.map(&:to_i)

distance = Math.sqrt(x**2 + y**2)

if distance == r
  puts 1
elsif distance <= 2 * r
  puts 2
else
  # 半径Rでどこでもいける
  # あまりができた時は一歩へらして二歩たすので実質切り上げ
  puts (distance / r).ceil
end
