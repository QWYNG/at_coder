# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

x = gets.to_i

gohyaku = (x / 500) * 1000

goen = ((x % 500) / 5) * 5

puts gohyaku + goen
