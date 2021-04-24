#
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }

n = gets.to_i
arraya = gets.split.map(&:to_i)
arrayb = gets.split.map(&:to_i)

amax = arraya.max
bmin = arrayb.min

if (bmin - amax) >= 0
  puts (bmin - amax) + 1
else
  puts 0
end

