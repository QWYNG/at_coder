# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
n, t = gets.split.map(&:to_i)
pairs = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }

array = pairs.map do |pair|
  pair[0] + pair[1]
end


over_time = 0
count = 0
while over_time <= t
  over_time += 1

  goto_index = array.each_with_index.min[1]
  over_time += pairs[goto_index][0] * over_time + pairs[goto_index][1]
  break if over_time > t

  count += 1
  array[goto_index] = Float::INFINITY
end

puts count
