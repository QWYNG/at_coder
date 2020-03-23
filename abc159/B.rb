# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#
def checkPalindrome(word)
  word = word.to_s
  size = word.length / 2
  (word[0..size] == word.reverse[0..size])
end
s = gets.chomp!

unless checkPalindrome(s)
  puts 'No'
  exit
end

if checkPalindrome(s[0..(s.size / 2 - 1)]) && checkPalindrome(s[((s.size + 3) / 2 - 1)..s.size])
  puts 'Yes'
else
  puts 'No'
end
