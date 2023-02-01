RSpec.describe 'test' do
  it 'test with "2 3\n"' do
    io = IO.popen("ruby typical90/033.rb", "w+")
    io.puts("2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "#.#\n...\n"' do
    io = IO.popen("ruby typical90/033.rb", "w+")
    io.puts("#.#\n...\n")
    io.close_write
    expect(io.readlines.join).to eq("#.#\n.#.\n")
  end

  it 'test with "3 4\n"' do
    io = IO.popen("ruby typical90/033.rb", "w+")
    io.puts("3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "#..#\n....\n#..#\n"' do
    io = IO.popen("ruby typical90/033.rb", "w+")
    io.puts("#..#\n....\n#..#\n")
    io.close_write
    expect(io.readlines.join).to eq("3 6\n")
  end

  it 'test with "6\n"' do
    io = IO.popen("ruby typical90/033.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
