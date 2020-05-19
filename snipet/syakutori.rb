# https://qiita.com/drken/items/ecd1a472d3a0e7db8dce
# 部分列とかで使う
#
right = 0
sum = 0
result = 0
N.times do |left| # 左は固定。 右がNを超えた時点でbreakするので実際にはO(n)
  while right < N &&(sum < K) # このsum < Kの部分で条件判定
    sum += array[right]
    right += 1
  end

  break if sum < K

  result += right - left # この例だと条件を満たす組み合わせの個数を数え上げる

  if right == left
    # rightとleftがいっしょということは一個の時点でけで条件をみたしていないので
    # leftともにrightもインクリメンとする
    # sumは足してないので引く必要がない
    right += 1
  else
    # sumに一度でも総和を足しているので左一個分引く
    sum -= array[left]
  end

end
