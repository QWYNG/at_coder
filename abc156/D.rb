# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)
class Integer
  def factorial
    return 1 if self == 0
    (1..self).inject(:*)
  end

  def permutation(r)
    return 1 if self == 0
    s = self - r + 1
    (s..self).inject(:*)
  end

  def combination(r)
    r = [r, self - r].min
    return self if r == 1
    return 1 if r == 0
    self.permutation(r) / r.factorial
  end
end

result = 0
(0...(n / 2)).to_a.each do |f|
  result += n.combination(f)
end

result *= 2

if n.even?
  result += n.combination((n / 2))
end
result = result - n.combination(a) - n.combination(b) - 1
puts result % (1000000000 + 7)
