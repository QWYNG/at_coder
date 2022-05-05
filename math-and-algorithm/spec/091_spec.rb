RSpec.describe 'test' do
  it 'test with "5 9\n"' do
    io = IO.popen("ruby math-and-algorithm/091.rb", "w+")
    io.puts("5 9\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "8 16\n"' do
    io = IO.popen("ruby math-and-algorithm/091.rb", "w+")
    io.puts("8 16\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3 20\n"' do
    io = IO.popen("ruby math-and-algorithm/091.rb", "w+")
    io.puts("3 20\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "29 47\n"' do
    io = IO.popen("ruby math-and-algorithm/091.rb", "w+")
    io.puts("29 47\n")
    io.close_write
    expect(io.readlines.join).to eq("97\n")
  end

  it 'test with "100 160\n"' do
    io = IO.popen("ruby math-and-algorithm/091.rb", "w+")
    io.puts("100 160\n")
    io.close_write
    expect(io.readlines.join).to eq("1213\n")
  end

end
