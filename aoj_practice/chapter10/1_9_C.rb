# frozen_string_literal: true

class Node
  attr_accessor :id, :key, :left, :right, :parent
end


_n = gets
commands = readlines.map(&:chomp!).map do |line|
  if line == 'extract'
    { extract: 0}
  elsif line.include?('insert')
    { insert: line.split[1].to_i }
  end
end



commands.each do |command|
  if command[:insert]
    insert(command[:insert], heap)
  elsif command[:extract]
    tree.find_node(command[:find]) ? puts('yes') : puts('no')
  end
end

