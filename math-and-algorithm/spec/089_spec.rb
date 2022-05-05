RSpec.describe 'test' do
  it 'test with "4 3 2\n"' do
    io = IO.popen("ruby math-and-algorithm/089.rb", "w+")
    io.puts("4 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "16 3 2\n"' do
    io = IO.popen("ruby math-and-algorithm/089.rb", "w+")
    io.puts("16 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "8 3 2\n"' do
    io = IO.popen("ruby math-and-algorithm/089.rb", "w+")
    io.puts("8 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1000000000000000000 1000000000000000000 1000000000000000000\n"' do
    io = IO.popen("ruby math-and-algorithm/089.rb", "w+")
    io.puts("1000000000000000000 1000000000000000000 1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "869120 5 15\n"' do
    io = IO.popen("ruby math-and-algorithm/089.rb", "w+")
    io.puts("869120 5 15\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
