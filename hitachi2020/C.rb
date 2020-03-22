# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# gets.split.map(&:to_i)
n = gets.to_i
pairs = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
