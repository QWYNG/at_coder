RSpec.describe 'test' do
  it 'test with "3 3\n-1 2\n1 1\n-2 -3\n1\n2\n3\n"' do
    io = IO.popen("ruby typical90/036.rb", "w+")
    io.puts("3 3\n-1 2\n1 1\n-2 -3\n1\n2\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n7\n7\n")
  end

  it 'test with "5 3\n-2 -2\n-1 -1\n0 0\n1 1\n2 2\n5\n3\n1\n"' do
    io = IO.popen("ruby typical90/036.rb", "w+")
    io.puts("5 3\n-2 -2\n-1 -1\n0 0\n1 1\n2 2\n5\n3\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n4\n8\n")
  end

  it 'test with "2 1\n-1000000000 -1000000000\n1000000000 1000000000\n1\n"' do
    io = IO.popen("ruby typical90/036.rb", "w+")
    io.puts("2 1\n-1000000000 -1000000000\n1000000000 1000000000\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("4000000000\n")
  end

end
