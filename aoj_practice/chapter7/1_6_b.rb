
def partition(array, p, r)
  x = array[r]
  i = p - 1

  # 配列をrで指定されたところまで検査して大きい方と小さい方でわける
  (p...r).to_a.each do |j|
    if array[j] <= x
      i += 1
      array[i], array[j] = array[j], array[i]
    end
  end

  # 基準を小さい側と大きい側の間にいれる
  array[i + 1], array[r] = array[r], array[i + 1]
  i + 1
end

n = gets
array = gets.split.map(&:to_i)

partition_index = partition(array, 0, array.size - 1)

array[partition_index] = "[#{array[partition_index]}]"
puts array.join(' ')
