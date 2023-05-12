n = gets.to_i
balloons = []
n.times do
  balloons << gets.split(' ').map(&:to_i)
end


answer = (1 .. (1_000_000_000 + 1_000_000_000 * n)).bsearch do |m|
  # m以下の得点がとれるか？
  seconds = []
  balloons.each do |h, s|
    seconds << (m - h) / s
  end

  seconds.sort!
  flag = true

  n.times do |i|
    flag = false if i > seconds[i]
  end

  flag
end

puts answer