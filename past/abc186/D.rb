n = gets.to_i
collection = gets.split.map(&:to_i)

collection.sort!
ruisekiwa = [0]
collection.each do |e|
  ruisekiwa << ruisekiwa.last + e
end

answer = 0
(1...n).each do |j|
  answer += collection[j] * j - ruisekiwa[j]
end

puts answer
