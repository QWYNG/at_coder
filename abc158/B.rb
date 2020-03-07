# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
n, a, b = gets.split.map(&:to_i)

if n <= a + b
  if n <= a
    puts n
  else
    puts a
  end
else
  tmp = n / (a + b)
  if (n - (a + b) * tmp) > a
    puts a * tmp + a
  else
    puts a * tmp + (n - (a + b) * tmp)
  end
end
