RSpec.describe 'test' do
  it 'test with "1 6 3\n"' do
    io = IO.popen("ruby abc103/A.rb", "w+")
    io.puts("1 6 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "11 5 5\n"' do
    io = IO.popen("ruby abc103/A.rb", "w+")
    io.puts("11 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "100 100 100\n"' do
    io = IO.popen("ruby abc103/A.rb", "w+")
    io.puts("100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
