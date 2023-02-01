RSpec.describe 'test' do
  it 'test with "3 3\n...\n.#.\n...\n"' do
    io = IO.popen("ruby typical90/072.rb", "w+")
    io.puts("3 3\n...\n.#.\n...\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "1 6\n......\n"' do
    io = IO.popen("ruby typical90/072.rb", "w+")
    io.puts("1 6\n......\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "4 4\n....\n#...\n....\n...#\n"' do
    io = IO.popen("ruby typical90/072.rb", "w+")
    io.puts("4 4\n....\n#...\n....\n...#\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

end
