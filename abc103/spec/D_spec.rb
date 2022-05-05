RSpec.describe 'test' do
  it 'test with "5 2\n1 4\n2 5\n"' do
    io = IO.popen("ruby abc103/D.rb", "w+")
    io.puts("5 2\n1 4\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "9 5\n1 8\n2 7\n3 5\n4 6\n7 9\n"' do
    io = IO.popen("ruby abc103/D.rb", "w+")
    io.puts("9 5\n1 8\n2 7\n3 5\n4 6\n7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 10\n1 2\n1 3\n1 4\n1 5\n2 3\n2 4\n2 5\n3 4\n3 5\n4 5\n"' do
    io = IO.popen("ruby abc103/D.rb", "w+")
    io.puts("5 10\n1 2\n1 3\n1 4\n1 5\n2 3\n2 4\n2 5\n3 4\n3 5\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
