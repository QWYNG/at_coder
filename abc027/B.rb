# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

n = gets.to_i
array = gets.split(' ').map(&:to_i)
sum = array.inject(:+)

if sum % n != 0
  puts(-1)
  exit
end

left = 0
count = 0

(0...(n - 1)).each do |i|
  left += array[i]
  count += 1 if left != sum / n * (i + 1)
end

puts count
