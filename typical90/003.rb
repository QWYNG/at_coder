n = gets.to_i
edge = {}
(n - 1).times do
  k, v = gets.split(' ').map(&:to_i)
  if edge[k]
    edge[k] << v
  else
    edge[k] = [v]
  end

  if edge[v]
    edge[v] << k
  else
    edge[v] = [k]
  end
end

dist = Array.new(edge.size, -1)
queue = [1]
dist[0] = 0
while queue.any?
  node = queue.shift
  edge[node].each do |nn|
    next if dist[nn - 1] != -1
    dist[nn - 1] = dist[node - 1] + 1

    queue.push(nn)
  end
end

_max, max_node = dist.each_with_index.max
max_node += 1

dist = Array.new(edge.size, -1)
queue = [max_node]
dist[max_node - 1] = 0
while queue.any?
  node = queue.shift
  edge[node].each do |nn|
    next if dist[nn - 1] != -1
    dist[nn - 1] = dist[node - 1] + 1

    queue.push(nn)
  end
end

puts dist.max + 1