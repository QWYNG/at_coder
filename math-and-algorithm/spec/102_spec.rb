RSpec.describe 'test' do
  it 'test with "3\nBWR\n"' do
    io = IO.popen("ruby math-and-algorithm/102.rb", "w+")
    io.puts("3\nBWR\n")
    io.close_write
    expect(io.readlines.join).to eq("W\n")
  end

  it 'test with "4\nRRBB\n"' do
    io = IO.popen("ruby math-and-algorithm/102.rb", "w+")
    io.puts("4\nRRBB\n")
    io.close_write
    expect(io.readlines.join).to eq("W\n")
  end

  it 'test with "6\nBWWRBW\n"' do
    io = IO.popen("ruby math-and-algorithm/102.rb", "w+")
    io.puts("6\nBWWRBW\n")
    io.close_write
    expect(io.readlines.join).to eq("B\n")
  end

  it 'test with "8\nWWBRBBWB\n"' do
    io = IO.popen("ruby math-and-algorithm/102.rb", "w+")
    io.puts("8\nWWBRBBWB\n")
    io.close_write
    expect(io.readlines.join).to eq("R\n")
  end

  it 'test with "21\nBWBRRBBRWBRBBBRRBWWWR\n"' do
    io = IO.popen("ruby math-and-algorithm/102.rb", "w+")
    io.puts("21\nBWBRRBBRWBRBBBRRBWWWR\n")
    io.close_write
    expect(io.readlines.join).to eq("B\n")
  end

end
