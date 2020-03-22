require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n.##\n.#.\n##.\n"' do
    io = IO.popen("ruby agc043/A.rb", "w+")
    io.puts("3 3\n.##\n.#.\n##.\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 2\n#.\n.#\n"' do
    io = IO.popen("ruby agc043/A.rb", "w+")
    io.puts("2 2\n#.\n.#\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 4\n..##\n#...\n###.\n###.\n"' do
    io = IO.popen("ruby agc043/A.rb", "w+")
    io.puts("4 4\n..##\n#...\n###.\n###.\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 5\n.#.#.\n#.#.#\n.#.#.\n#.#.#\n.#.#.\n"' do
    io = IO.popen("ruby agc043/A.rb", "w+")
    io.puts("5 5\n.#.#.\n#.#.#\n.#.#.\n#.#.#\n.#.#.\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
