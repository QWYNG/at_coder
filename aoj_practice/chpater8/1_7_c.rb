# frozen_string_literal: true

class Node
  attr_accessor :id, :parent, :left, :right

  def initialize(id)
    @id = id
  end

  def root?
    parent ? false : true
  end
end

n = gets.to_i
array = readlines.map { |s| s.split.map(&:to_i) }

nodes = []
array.each do |e|
  nodes << Node.new(e[0])
end

array.each do |e|
  node = nodes.find { |node| node.id == e[0] }

  if e[1] != -1
    node.left = e[1]
    nodes.find { |node| node.id == e[1] }.parent = node.id
  end

  if e[2] != -1
    node.right = e[2]
    nodes.find { |node| node.id == e[2] }.parent = node.id
  end
end

def print_order_by_preorder(node, nodes)
  return unless node

  print ' '
  print node.id
  print_order_by_preorder(nodes.find { |n| n.id == node.left }, nodes)
  print_order_by_preorder(nodes.find { |n| n.id == node.right }, nodes)
end

def print_order_by_inorder(node, nodes)
  return unless node

  print_order_by_inorder(nodes.find { |n| n.id == node.left }, nodes)
  print ' '
  print node.id
  print_order_by_inorder(nodes.find { |n| n.id == node.right }, nodes)
end

def print_order_by_postorder(node, nodes)
  return unless node

  print_order_by_postorder(nodes.find { |n| n.id == node.left }, nodes)
  print_order_by_postorder(nodes.find { |n| n.id == node.right }, nodes)
  print ' '
  print node.id
end

root_index = nodes.find_index(&:root?)
puts 'Preorder'
print_order_by_preorder(nodes[root_index], nodes)
puts "\n"
puts 'Inorder'
print_order_by_inorder(nodes[root_index], nodes)
puts "\n"
puts 'Postorder'
print_order_by_postorder(nodes[root_index], nodes)
puts "\n"
