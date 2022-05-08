
n = gets.to_i
if n.zero?
    puts 'Second'
    exit
end

(60).times do |i|
    if n == (2 ** i - 1)
        puts 'Second'
        exit
    end
end

puts 'First'
