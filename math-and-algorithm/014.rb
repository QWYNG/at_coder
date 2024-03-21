n = gets.to_i

def prime_factorization(n)
  res = []
  i = 2
  while i * i <= n
    while n % i == 0
      n /= i
      res << i
    end
    i += 1
  end
  res << n if n > 1
  res
end

puts prime_factorization(n).join(' ')