0# frozen_string_literal: true

WHITE = -9999
GRAY = -99999
BLACK = -2121

$colors = {}
$times = {}
$finishes = {}
$time = 0
n = gets.to_i
$m = Array.new(n){ Array.new(n, 0) }

readlines.each do |line|
  # 1 2 2 4
  line = line.split.map(&:to_i)
  v = line[0] - 1
  line[1].times do |index|
    $m[v][line[index + 2] - 1] = 1
  end
end

$m.each do |v|
  $colors[v[0]] = WHITE
end


def dfs(n)
  $colors[n] = GRAY
  $time += 1
  $times[n] = $time

  $m.each do |line|
    dfs(line[0]) if $colors[line[0]] == WHITE && $m[n][line[0]] == 1
  end

  $colors[n] = BLACK

  $time += 1

  $finishes[n] = $time
end

dfs(1)

$m.each do |e|
  puts [e[0] + 1, $times[e[0] + 1], $finishes[e[0] + 1]].join(' ')
end
