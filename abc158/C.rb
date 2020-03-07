# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
$a, $b = gets.split.map(&:to_i)

def valid?(e)
  hatipa = (e * 0.08).to_i
  zyuppa = (e * 0.1).to_i

  hatipa == $a && zyuppa == $b
end

(1..1300).to_a.each do |e|
  if valid?(e)
    puts e
    exit
  end
end

puts '-1'

