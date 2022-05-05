RSpec.describe 'test' do
  it 'test with "21 40\n"' do
    io = IO.popen("ruby math-and-algorithm/097.rb", "w+")
    io.puts("21 40\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "101 130\n"' do
    io = IO.popen("ruby math-and-algorithm/097.rb", "w+")
    io.puts("101 130\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "1 100\n"' do
    io = IO.popen("ruby math-and-algorithm/097.rb", "w+")
    io.puts("1 100\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

  it 'test with "217 217\n"' do
    io = IO.popen("ruby math-and-algorithm/097.rb", "w+")
    io.puts("217 217\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "999999500000 1000000000000\n"' do
    io = IO.popen("ruby math-and-algorithm/097.rb", "w+")
    io.puts("999999500000 1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("18228\n")
  end

end
