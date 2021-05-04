_n = gets.to_i
numbers = readlines.map(&:to_i)

hash = Hash.new(nil)

numbers.each do |i|
  if hash[i]
    hash.delete(i)
  else
    hash[i] = 1
  end
end

puts hash.size
