# frozen_string_literal: true

class Node
  attr_accessor :id, :parent, :left, :right, :depth, :height

  def initialize
    @id = nil
    @parent = -1
    @left = -1
    @right = -1
    @height = nil
    @depth = nil
  end
  
  def degree
    [left, right].reject { |child| child == -1 }.size
  end
end

def set_height(node, h, nodes)
  h1 = h2 = 0
  h1 = set_height(nodes[node.right], h, nodes) + 1 if node.right != -1
  h2 = set_height(nodes[node.left], h, nodes) + 1 if node.left != -1
  node.height = [h1, h2].max
end

def set_depth(node, p, nodes)
  node.depth = p
  set_depth(nodes[node.right], p + 1, nodes) if node.right != -1
  set_depth(nodes[node.left], p + 1, nodes) if node.left != -1
end

def children(node)
  [node.left, node.right]
end

def get_sibling(node, nodes)
  return -1 if node.parent == -1 ||
               nodes[node.parent].left == -1 ||
               nodes[node.parent].right == -1

  if nodes[node.parent].left == node.id
    nodes[node.parent].right
  else
    nodes[node.parent].left
  end
end

n = gets.to_i
array = readlines.map { |s| s.split.map(&:to_i) }

nodes = []
n.times do
  nodes << Node.new
end

array.each do |e|
  id = e[0]
  children = e.slice(1..-1)

  nodes[id].id = id
  nodes[id].left = children.shift
  nodes[id].right = children.shift
  children(nodes[id]).each do |child|
    next if child == -1

    nodes[child].parent = id
  end
end

root = nodes.find { |e| e.parent == -1 }

set_depth(root, 0, nodes)
set_height(root, 0, nodes)

nodes.each_with_index do |node, id|
  type = if node.parent == -1
           'root'
         elsif (node.left != -1) || (node.right != -1)
           'internal node'
         else
           'leaf'
  end

  puts "node #{id}: parent = #{node.parent}, sibling = #{get_sibling(node, nodes)}, degree = #{node.degree}, depth = #{node.depth}, height = #{node.height}, #{type}"
end
