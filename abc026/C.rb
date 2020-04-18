# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

n = gets.to_i
$array = readlines.map(&:to_i)


def dfs(i, depth)
  return 1 unless $array.include?(i)

  result = []
  $array.each_with_index do |e, index|
    if e == i
      result << dfs(index + 2, depth + 1)
    end
  end

  result.max + result.min + 1
end

puts dfs(1, 0)
