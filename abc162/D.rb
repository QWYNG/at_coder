n = gets.to_i
s = gets.chomp!.split('')

r_count = s.count('R')
g_count = s.count('G')
b_count = s.count('B')

all_count = r_count * g_count * b_count
not_ok_count = 0
(0...n).each do |i|
  ((i+1)...n).each do |j|
    k = j + (j - i)
    next if k >= n

    if s[i] != s[j] && s[i] != s[k] && s[j] != s[k]
      #binding.irb
      not_ok_count += 1
    end
  end
end
puts all_count - not_ok_count