# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n = gets.to_i
a_and_bs = []
n.times do
  a_and_bs.push(gets.split.map(&:to_i))
end

a_and_bs.sort_by! { |a_and_b| a_and_b[1] }

dp = 0
a_and_bs.each do |a_and_b|
  dp += a_and_b[0]
  if dp > a_and_b[1]
    puts 'No'
    exit
  end
end

puts 'Yes'
