# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
n, m = gets.split.map(&:to_i)

puts (1..n).to_a.combination(2).to_a.size + (1..m).to_a.combination(2).to_a.size

