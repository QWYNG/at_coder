s = gets.to_i

%w[( )].repeated_permutation(s).each do |array|
  count = 0
  valid = true
  array.each do |e|
    if e == ')'
      if count > 0
        count -= 1
      else
        valid = false
        break
      end
    else
      count += 1

    end
  end
  valid = false if count != 0

  if valid
    puts array.join('')
  end
end

