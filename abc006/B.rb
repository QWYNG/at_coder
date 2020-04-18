# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

n, l = gets.split.map(&:to_i)

maize = []
l.times do
  maize.push gets.chomp.split('')
end
goal = gets.chomp.split('').index('o')

n.times do |start|
  depth = 0
  position = start
  position += position unless start.zero?

  while depth < l

    if maize[depth][position + 1] == '-'
      position += 2
    elsif position != 0 && maize[depth][position - 1] == '-'
      position -= 2
    end

    depth += 1
  end

  if position == goal
    puts start + 1
    exit
  end
end
