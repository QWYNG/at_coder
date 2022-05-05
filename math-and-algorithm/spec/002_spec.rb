RSpec.describe 'test' do
  it 'test with "10 20 50\n"' do
    io = IO.popen("ruby math-and-algorithm/002.rb", "w+")
    io.puts("10 20 50\n")
    io.close_write
    expect(io.readlines.join).to eq("80\n")
  end

  it 'test with "1 1 1\n"' do
    io = IO.popen("ruby math-and-algorithm/002.rb", "w+")
    io.puts("1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "100 100 100\n"' do
    io = IO.popen("ruby math-and-algorithm/002.rb", "w+")
    io.puts("100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("300\n")
  end

end
