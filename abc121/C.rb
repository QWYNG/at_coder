# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
N, M = gets.split.map(&:to_i)

hash = {}
readlines.each do |line|
  k, v = line.split.map(&:to_i)
  if hash[k]
    hash[k] += v
  else
    hash[k] = v
  end
end

ans = 0
hash.keys.sort!.each do |min|
  if M > hash[min]
    M -= hash[min]
    ans += min * hash[min]
  else
    ans += min * M
    break
  end
end

puts ans
