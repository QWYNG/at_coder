n = gets
array = gets.split.map(&:to_i)
$count = 0
def merge(array, left, mid, right)
  l = array[left...mid]
  r = array[mid...right]
  l.push(Float::INFINITY)
  r.push(Float::INFINITY)

  i = 0
  j = 0
  k = left

  until k == right
    $count += 1
    if l[i] <= r[j]
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

merge_sort(array, 0, array.size)
puts array.join(' ')
puts $count
