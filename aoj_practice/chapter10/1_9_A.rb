
class Node
  attr_accessor :key, :left, :right, :parent
end

def print_heap(heap)
  heap.each.with_index(1) do |node, i|
    print "node #{i}: key = #{node.key},"
    print " parent key = #{heap[node.parent].key}," if node.parent
    print " left key = #{heap[node.left].key}," if heap[node.left]
    print " right key = #{heap[node.right].key}," if heap[node.right]
    print " \n"
  end
end

_n = gets
heap_keys = gets.split.map(&:to_i)
heap = []

heap_keys.each.with_index(1) do |e, i|
  node = Node.new
  node.key = e
  node.left = i * 2 - 1
  node.right = i * 2 + 1 - 1
  node.parent = i / 2 - 1 if i > 1

  heap.push(node)
end

print_heap(heap)
