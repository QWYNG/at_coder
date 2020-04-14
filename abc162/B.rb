# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n = gets.to_i

count = 0
n.times do |i|
  if (i + 1) % 3 == 0 || (i + 1) % 5 == 0
    next
  else
    count += i + 1
  end
end

puts count
