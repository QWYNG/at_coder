# frozen_string_literal: true

n = gets.to_i
array = readlines.map(&:chomp!)

def lcs(x, y)
  m = x.length
  n = y.length
  c = Array.new(1000){ Array.new(1000) }
  0.upto(m) do |i|
    c[i][0] = 0
  end

  1.upto(n) do |j|
    c[0][j] = 0
  end

  maxl = 0
  1.upto(m) do |i|
    1.upto(n) do |j|
      c[i][j] = if x[i - 1] == y[j - 1]
                  c[i - 1][j - 1] + 1
                else
                  [c[i - 1][j], c[i][j - 1]].max
                end

      maxl = [maxl, c[i][j]].max
    end
  end

  maxl
end

n.times do
  x = array.shift
  y = array.shift
  puts lcs(x, y)
end
