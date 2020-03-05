# frozen_string_literal: true

class Node
  attr_accessor :id, :key, :left, :right, :parent
end

def to_max_heap(heap, i)
  left_i = left(i) - 1
  right_i = right(i) - 1

  p = heap[i - 1]
  l = heap[left_i]
  r = heap[right_i]

  largest = if l && p < l
              left_i
            else
              i - 1
  end

  largest = right_i if r && heap[largest] < r

  if largest != i - 1
    heap[i - 1], heap[largest] = heap[largest], heap[i - 1]
    to_max_heap(heap, largest + 1)
  end
end

def build_max_heap(heap)
  (heap.size / 2).downto(1) do |i|
    to_max_heap(heap, i)
  end
end

_n = gets
heap = gets.split.map(&:to_i)

def left(i)
  i * 2
end

def right(i)
  i * 2 + 1
end

build_max_heap(heap)

heap.each do |n|
  print " #{n}"
end

print "\n"
