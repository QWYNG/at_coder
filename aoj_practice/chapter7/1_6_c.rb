
def merge(array, left, mid, right)
  l = array[left...mid]
  r = array[mid...right]
  l.push([nil, Float::INFINITY])
  r.push([nil, Float::INFINITY])

  i = 0
  j = 0
  k = left

  until k == right
    if l[i][1] <= r[j][1]
      array[k] = l[i]
      i += 1
    else
      array[k] = r[j]
      j += 1
    end

    k += 1
  end
end

def merge_sort(array, left, right)
  if left + 1 < right
    mid = (left + right) / 2
    merge_sort(array, left, mid)
    merge_sort(array, mid, right)
    merge(array, left, mid, right)
  end
end

def partition(array, p, r)
  x = array[r][1]
  i = p - 1

  # 配列をrで指定されたところまで検査して大きい方と小さい方でわける
  (p...r).to_a.each do |j|
    if array[j][1] <= x
      i += 1
      array[i], array[j] = array[j], array[i]
    end
  end

  # 基準を小さい側と大きい側の間にいれる
  array[i + 1], array[r] = array[r], array[i + 1]
  i + 1
end


def quick_sort(array, p, r)
  if p < r
    q = partition(array, p, r)
    quick_sort(array, p, q - 1)
    quick_sort(array, q + 1, r)
  end
end

n = gets
array = readlines.map do |n|
  el = n.split
  el[1].to_i
  el
end

if merge_sort(array.dup, 0, array.size) == quick_sort(array, 0, array.size - 1)
  puts 'Stable'
else
  puts 'Not stable'
end

puts array.map{ |e| e.join(' ') }
