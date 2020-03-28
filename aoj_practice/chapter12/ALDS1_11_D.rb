# frozen_string_literal: true

@n, m = gets.split.map(&:to_i)

@edge_by_v = {}
@color_by_v = {}

m.times do
  edge = gets.split.map(&:to_i)
  if @edge_by_v[edge[0]]
    @edge_by_v[edge[0]].push(edge[1])
  else
    @edge_by_v[edge[0]] = [edge[1]]
  end
end

@n.times do |i|
  @edge_by_v[i] = [] if @edge_by_v[i].nil?
end

def bfs(i, color)
  pp i
  pp @color_by_v
  queue = []
  queue.push(@edge_by_v[i])
  while queue.any?
    @color_by_v[i] = color

    edges = queue.shift
    edges.each do |v|
      if @color_by_v[v].nil?
        queue.push(@edge_by_v[v])
        @color_by_v[v] = color
      else
        color = @color_by_v[v]
      end
    end
  end
end

def assign_color
  color = 0
  @n.times do |i|
    if @color_by_v[i].nil?
      color += 1
      bfs(i, color)
    end
  end
end

assign_color

q = gets.to_i
pp @color_by_v

q.times do
  s, t = gets.split.map(&:to_i)
  if @color_by_v[s] == @color_by_v[t]
    puts 'yes'
  else
    puts 'no'
  end
end
