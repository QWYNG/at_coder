# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n, k = gets.split.map(&:to_i)
r, s, p = gets.split.map(&:to_i)
t = gets.chomp!
memo = []
count = 0

t.split('').each_with_index do |e, i|
  case e
  when 'r'
    if i < k || memo[i - k] != 'p'
      count += p
      memo << 'p'
    else
      memo << 'x'
    end
  when 's'
    if i < k || memo[i - k] != 'r'
      count += r
      memo << 'r'
    else
      memo << 'x'
    end
  when 'p'
    if i < k || memo[i - k] != 's'
      count += s
      memo << 's'
    else
      memo << 'x'
    end
  end
end

puts count
