RSpec.describe 'test' do
  it 'test with "100 4\n27 100\n8 39\n83 97\n24 75\n"' do
    io = IO.popen("ruby typical90/029.rb", "w+")
    io.puts("100 4\n27 100\n8 39\n83 97\n24 75\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n2\n3\n")
  end

  it 'test with "3 5\n1 2\n2 2\n2 3\n3 3\n1 2\n"' do
    io = IO.popen("ruby typical90/029.rb", "w+")
    io.puts("3 5\n1 2\n2 2\n2 3\n3 3\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n4\n")
  end

  it 'test with "10 10\n1 3\n3 5\n5 7\n7 9\n2 4\n4 6\n6 8\n3 5\n5 7\n4 6\n"' do
    io = IO.popen("ruby typical90/029.rb", "w+")
    io.puts("10 10\n1 3\n3 5\n5 7\n7 9\n2 4\n4 6\n6 8\n3 5\n5 7\n4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n3\n4\n5\n5\n6\n7\n")
  end

  it 'test with "500000 7\n1 500000\n500000 500000\n1 500000\n1 1\n1 500000\n500000 500000\n1 500000\n"' do
    io = IO.popen("ruby typical90/029.rb", "w+")
    io.puts("500000 7\n1 500000\n500000 500000\n1 500000\n1 1\n1 500000\n500000 500000\n1 500000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n5\n6\n7\n")
  end

end
