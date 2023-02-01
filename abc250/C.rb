n, q = gets.split(' ').map(&:to_i)
array = []
q.times do
    array << gets.to_i
end

balunes = {}
ids = {}

1.upto(n) do |i|
    balunes[i] = i
    ids[i] = i
end


array.each do |balune_name|
    now_id = balunes[balune_name]

    target_id = if now_id == n
        now_id - 1
    else
        now_id + 1
    end

    target_balune_name = ids[target_id]

    balunes[balune_name] = target_id
    balunes[target_balune_name] = now_id

    ids[now_id] = target_balune_name
    ids[target_id] = balune_name

end

puts ids.values.join(' ')
