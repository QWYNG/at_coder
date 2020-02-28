# frozen_string_literal: true

unless ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({ 'RUBY_THREAD_VM_STACK_SIZE' => '100000000' }, RUBY, $PROGRAM_NAME) # 100MB
end

class Node
  attr_accessor :parent, :left, :right, :depth

  def initialize(parent, left, right)
    @parent = parent || -1
    @left = left
    @right = right
    @depth = nil
  end
end

def set_depth(node, p, nodes)
  node.depth = p
  set_depth(nodes[node.right], p, nodes) if node.right
  set_depth(nodes[node.left], p + 1, nodes) if node.left
end

def children(node, nodes)
  children = []
  child = node.left
  while child
    children << child
    child = nodes[child].right
  end

  children
end

n = gets.to_i
array = readlines.map { |s| s.split.map(&:to_i) }

nodes = []
n.times do
  nodes << Node.new(nil, nil, nil)
end

array.each do |e|
  id = e[0]
  k = e[1]
  children = e.slice(2..-1)

  nodes[id].left = children.first
  children.each_with_index do |child, i|
    nodes[child].parent = id
    nodes[child].right = children[i + 1]
  end
end

root = nodes.find { |e| e.parent == -1 }

set_depth(root, 0, nodes)

nodes.each_with_index do |node, id|
  type = if node.parent == -1
           'root'
         elsif node.left
           'internal node'
         else
           'leaf'
  end

  puts "node #{id}: parent = #{node.parent}, depth = #{node.depth}, #{type}, #{children(node, nodes).inspect}"
end
