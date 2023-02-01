RSpec.describe 'test' do
  it 'test with "3 2\n0 1\n1 2\n2 0\n"' do
    io = IO.popen("ruby typical90/045.rb", "w+")
    io.puts("3 2\n0 1\n1 2\n2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 3\n0 0\n1 1\n0 2\n2 3\n3 1\n"' do
    io = IO.popen("ruby typical90/045.rb", "w+")
    io.puts("5 3\n0 0\n1 1\n0 2\n2 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "10 4\n0 3\n3 5\n2 7\n9 0\n5 6\n4 3\n7 8\n6 5\n9 9\n2 1\n"' do
    io = IO.popen("ruby typical90/045.rb", "w+")
    io.puts("10 4\n0 3\n3 5\n2 7\n9 0\n5 6\n4 3\n7 8\n6 5\n9 9\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n")
  end

  it 'test with "3 2\n0 0\n500000000 500000000\n1000000000 1000000000\n"' do
    io = IO.popen("ruby typical90/045.rb", "w+")
    io.puts("3 2\n0 0\n500000000 500000000\n1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("500000000000000000\n")
  end

end
