# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
a, b, m = gets.split.map(&:to_i)
a_prices = gets.split.map(&:to_i)
b_prices = gets.split.map(&:to_i)
tickets = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }

after_prices = tickets.map do |ticket|
  a_prices[ticket[0] - 1] + b_prices[ticket[1] - 1] - ticket[2]
end

normal_lowest = a_prices.min + b_prices.min
after_prices_min = after_prices.min

if after_prices_min >= normal_lowest
  puts normal_lowest
else
  puts after_prices_min
end
