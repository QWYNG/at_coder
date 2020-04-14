# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n = gets.to_i
s = gets.chomp!

array = s.split('')

i_j_k_sum = array.count('R') * array.count('G') * array.count('B')
count = 0

(0...n).each do |i|
  ((i + 1)...n).each do |j|
    k = 2 * j - i
    next if k >= n

    if array[i] != array[j] && array[i] != array[k] && array[j] != array[k]
      count += 1
    end
  end
end

puts i_j_k_sum - count
