RSpec.describe 'test' do
  it 'test with "4 4\n##.#\n....\n##.#\n.#.#\n"' do
    io = IO.popen("ruby abc107/B.rb", "w+")
    io.puts("4 4\n##.#\n....\n##.#\n.#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("###\n###\n.##\n")
  end

  it 'test with "3 3\n#..\n.#.\n..#\n"' do
    io = IO.popen("ruby abc107/B.rb", "w+")
    io.puts("3 3\n#..\n.#.\n..#\n")
    io.close_write
    expect(io.readlines.join).to eq("#..\n.#.\n..#\n")
  end

  it 'test with "4 5\n.....\n.....\n..#..\n.....\n"' do
    io = IO.popen("ruby abc107/B.rb", "w+")
    io.puts("4 5\n.....\n.....\n..#..\n.....\n")
    io.close_write
    expect(io.readlines.join).to eq("#\n")
  end

  it 'test with "7 6\n......\n....#.\n.#....\n..#...\n..#...\n......\n.#..#.\n"' do
    io = IO.popen("ruby abc107/B.rb", "w+")
    io.puts("7 6\n......\n....#.\n.#....\n..#...\n..#...\n......\n.#..#.\n")
    io.close_write
    expect(io.readlines.join).to eq("..#\n#..\n.#.\n.#.\n#.#\n")
  end

end
