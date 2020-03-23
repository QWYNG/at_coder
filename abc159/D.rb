n = gets.to_i
array = gets.split.map(&:to_i)

class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

def choose2(n)
  n.factorial / (2 * (n - 2).factorial)
end

hash = {}
array.each do |e|
  if hash[e]
    hash[e] += 1
  else
    hash[e] = 1
  end
end

sum = 0
hash.each do |key, value|
  sum += choose2(value)
end

n.times do |index|
  hide = array[index]
  puts sum - (choose2(hash[hide]) - choose2(hash[hide] - 1))
end

n * (n-1) / 2

def choose2(n)
  n * (n-1) / 2
end
