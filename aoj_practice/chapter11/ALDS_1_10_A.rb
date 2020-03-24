# frozen_string_literal: true

$memo = {}

def fibonacci(n)
  return $memo[n] if $memo[n]
  return $memo[n] = 1 if n == 0 || n == 1

  $memo[n] ||= fibonacci(n - 2) + fibonacci(n - 1)
end

n = gets.to_i
puts fibonacci(n)
