# frozen_string_literal: true

WHITE = -9999
GRAY = -99_999

$colors = {}
$pair = {}

_n = gets
$graph = readlines.map do |line|
  # 1 2 2 4
  line.split.map(&:to_i)
end

$graph.each do |line|
  $colors[line[0]] = WHITE
end

def bfs(n)
  queue = []
  queue.push([$graph[n - 1], 0])

  while queue.any?
    v, distance = queue.shift
    next unless $colors[v[0]] == WHITE

    $colors[v[0]] = GRAY
    $pair[v[0]] = distance

    v[2..-1].each do |i|
      if $colors[i] == WHITE
        queue.push([$graph[i - 1], distance + 1])
      end
    end
  end
end

bfs(1)

$graph.each do |line|
  v = line[0]
  $pair[v] = -1 if $pair[v].nil?
end

$pair.sort_by { |k, _v| k }.each do |k, v|
  puts "#{k} #{v}"
end

