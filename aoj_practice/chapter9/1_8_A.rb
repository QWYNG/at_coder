# frozen_string_literal: true

class Node
  attr_accessor :key, :parent, :left, :right

  def initialize(key)
    @key = key
  end

  def root?
    parent ? false : true
  end
end

class Tree < Array
  def insert(node)
    y = nil
    x = root_node

    until x.nil?
      y = x
      x = if node.key < x.key
            x.left
          else
            x.right
          end
    end
    node.parent = y

    if y.nil?
      push node
    elsif node.key < y.key
      y.left = node
    else
      y.right = node
    end
  end

  def root_node
    find(&:root?)
  end
end

def print_order_by_preorder(node)
  return unless node

  print ' '
  print node.key
  print_order_by_preorder(node.left)
  print_order_by_preorder(node.right)
end

def print_order_by_inorder(node)
  return unless node

  print_order_by_inorder(node.left)
  print ' '
  print node.key
  print_order_by_inorder(node.right)
end

n = gets.to_i
array = readlines.map(&:chomp!).map do |line|
  if line != 'print'
    line.split[1].to_i
  else
    'print'
  end
end

tree = Tree.new

array.each do |e|
  if e != 'print'
    tree.insert(Node.new(e))
  else
    print_order_by_inorder(tree.root_node)
    print "\n"
    print_order_by_preorder(tree.root_node)
    print "\n"
  end
end
