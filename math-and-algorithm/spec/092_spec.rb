RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby math-and-algorithm/092.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "9\n"' do
    io = IO.popen("ruby math-and-algorithm/092.rb", "w+")
    io.puts("9\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "160\n"' do
    io = IO.popen("ruby math-and-algorithm/092.rb", "w+")
    io.puts("160\n")
    io.close_write
    expect(io.readlines.join).to eq("52\n")
  end

  it 'test with "869120\n"' do
    io = IO.popen("ruby math-and-algorithm/092.rb", "w+")
    io.puts("869120\n")
    io.close_write
    expect(io.readlines.join).to eq("3732\n")
  end

  it 'test with "2147483647\n"' do
    io = IO.popen("ruby math-and-algorithm/092.rb", "w+")
    io.puts("2147483647\n")
    io.close_write
    expect(io.readlines.join).to eq("4294967296\n")
  end

end
