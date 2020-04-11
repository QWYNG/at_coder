# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

s = gets.chomp!


def judge?(s)
  return false if s.size.odd?
  half = s.size / 2 - 1
  s[0..half] == s[(half + 1)..-1]
end

i = 2
size = s.size
loop do
  if judge?(s[0..(size - i - 1)])
    puts size - i
    exit
  end

  i += 2
end
