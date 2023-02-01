a, b, c, d = gets.split(" ").map(&:to_i)

low = a - 1

up = b - (b / c + b / d - b / c.lcm(d))
down = low - (low / c + low / d - low /c.lcm(d))

puts up - down
