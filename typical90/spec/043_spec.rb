RSpec.describe 'test' do
  it 'test with "3 3\n1 1\n3 3\n..#\n#.#\n#..\n"' do
    io = IO.popen("ruby typical90/043.rb", "w+")
    io.puts("3 3\n1 1\n3 3\n..#\n#.#\n#..\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 3\n2 1\n2 3\n#.#\n...\n#.#\n"' do
    io = IO.popen("ruby typical90/043.rb", "w+")
    io.puts("3 3\n2 1\n2 3\n#.#\n...\n#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4 6\n2 1\n1 5\n...#..\n.#.##.\n.#....\n...##.\n"' do
    io = IO.popen("ruby typical90/043.rb", "w+")
    io.puts("4 6\n2 1\n1 5\n...#..\n.#.##.\n.#....\n...##.\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
