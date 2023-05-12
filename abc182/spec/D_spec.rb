RSpec.describe 'test' do
  it 'test with "3\n2 -1 -2\n"' do
    io = IO.popen("ruby abc182/D.rb", "w+")
    io.puts("3\n2 -1 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "5\n-2 1 3 -1 -1\n"' do
    io = IO.popen("ruby abc182/D.rb", "w+")
    io.puts("5\n-2 1 3 -1 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5\n-1000 -1000 -1000 -1000 -1000\n"' do
    io = IO.popen("ruby abc182/D.rb", "w+")
    io.puts("5\n-1000 -1000 -1000 -1000 -1000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
