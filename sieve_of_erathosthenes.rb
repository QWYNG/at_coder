def sieve_of_erathosthenes(n)
  
  vec = (2..n).to_a
  
  2.upto(Integer.sqrt(n)) do |i|
    vec = vec.reject do |e|
      
      e != i && e % i == 0
    end
  end
  
  vec
end

p sieve_of_erathosthenes(50)
p sieve_of_erathosthenes(120)
p sieve_of_erathosthenes(111111)

