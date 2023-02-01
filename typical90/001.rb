n, l = gets.split(' ').map(&:to_i)
k = gets.to_i
array = gets.split(' ').map(&:to_i)

a = (0..l).to_a.bsearch do |j|
  m = j
  cut_count = 0
  cen = 0
  flag = true
  array.each do|e|
    if e - cen >= m
      cut_count += 1
      cen = e
      if cut_count == k
        if l - e >= m
          flag = false
          break
        end
      elsif cut_count > k
        break
      end
    end
  end

  flag
end

puts a - 1