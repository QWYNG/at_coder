RSpec.describe 'test' do
  it 'test with "2 8 8\n"' do
    io = IO.popen("ruby math-and-algorithm/004.rb", "w+")
    io.puts("2 8 8\n")
    io.close_write
    expect(io.readlines.join).to eq("128\n")
  end

  it 'test with "7 7 25\n"' do
    io = IO.popen("ruby math-and-algorithm/004.rb", "w+")
    io.puts("7 7 25\n")
    io.close_write
    expect(io.readlines.join).to eq("1225\n")
  end

  it 'test with "100 100 100\n"' do
    io = IO.popen("ruby math-and-algorithm/004.rb", "w+")
    io.puts("100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000\n")
  end

end
