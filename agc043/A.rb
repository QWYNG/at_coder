# frozen_string_literal: true

# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
GOAL_H, GOAL_W = gets.split.map(&:to_i)
FIELD = readlines.map(&:chomp!).map { |e| e.split('') }
FIELD[GOAL_H - 1][GOAL_W - 1] = 'GOAL'
$count = 0

def bfs(h, w)
  queue = []
  queue.push([h, w])
  old = '.'

  until queue.empty?
    h, w = queue.shift
    node = FIELD[h][w]

    break if node == 'GOAL'

    queue.push([h + 1, w]) if FIELD[h + 1] && FIELD[h + 1][w] == '.'
    queue.push([h, w + 1]) if FIELD[h][w + 1] == '.'

    if (FIELD[h + 1] && FIELD[h + 1][w] == '#' && FIELD[h][w + 1] == '#') ||
       (!FIELD[h + 1] && FIELD[h][w + 1] == '#') ||
       (!FIELD[h][w + 1] && FIELD[h + 1][w] == '#')
      if old == '.'
        $count += 1
        old = '#'
        queue.push([h + 1, w]) if FIELD[h + 1]
        queue.push([h, w + 1]) if FIELD[h][w + 1]
      else
        queue.push([h + 1, w]) if FIELD[h + 1]
        queue.push([h, w + 1]) if FIELD[h][w + 1]
      end
    end

    old = '.' if node == '.'
  end
end

bfs(0, 0)

puts $count
