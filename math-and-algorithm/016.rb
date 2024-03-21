n = gets.to_i
array = gets.split.map(&:to_i)

def gcd(a, b)
  if b == 0
    a
  else
    gcd(b, a % b)
  end
end

while array.size > 1
  a = array.shift
  b = array.shift
  array.unshift(gcd(a, b))
end

puts array[0]

