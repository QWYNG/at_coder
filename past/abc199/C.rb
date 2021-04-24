# frozen_string_literal: true

#
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }

n = gets.to_i
s = gets.chomp!
q = gets.to_i

querys = []

q.times do
  querys << gets.split.map(&:to_i)
end


flag = false
querys.each do |query|
  t, a, b = query

  if t == 1
    if !flag
      char_a = s[a - 1]
      char_b = s[b - 1]

      s[a - 1] = char_b
      s[b - 1] = char_a
    else
      if a <= n
        a = a + n
      else
        a = a - n
      end

      if b <= n
        b = b + n
      else
        b = b - n
      end

      char_a = s[a-1]
      char_b = s[b-1]

      s[a-1] = char_b
      s[b-1] = char_a
    end
  else
    flag = !flag
  end
end

if flag
  bs = s[0...n]
  as = s[n..]
  s = as + bs
end

puts s
