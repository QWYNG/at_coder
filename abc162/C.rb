# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
k = gets.to_i
sum = 0
sigma = (1..k).to_a
sigma.repeated_permutation(3).each do |combination|
  sum += combination[0].gcd(combination[1]).gcd(combination[2])
end

puts sum
