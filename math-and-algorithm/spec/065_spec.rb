RSpec.describe 'test' do
  it 'test with "4 5\n"' do
    io = IO.popen("ruby math-and-algorithm/065.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "7 3\n"' do
    io = IO.popen("ruby math-and-algorithm/065.rb", "w+")
    io.puts("7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "1000000000 1000000000\n"' do
    io = IO.popen("ruby math-and-algorithm/065.rb", "w+")
    io.puts("1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("500000000000000000\n")
  end

end
