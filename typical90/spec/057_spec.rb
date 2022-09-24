RSpec.describe 'test' do
  it 'test with "2 3\n2\n1 2\n2\n2 3\n1 0 1\n"' do
    io = IO.popen("ruby typical90/057.rb", "w+")
    io.puts("2 3\n2\n1 2\n2\n2 3\n1 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 3\n1\n1\n1\n2\n0 1 1\n"' do
    io = IO.popen("ruby typical90/057.rb", "w+")
    io.puts("2 3\n1\n1\n1\n2\n0 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3 2\n1\n1\n1\n2\n1\n2\n1 0\n"' do
    io = IO.popen("ruby typical90/057.rb", "w+")
    io.puts("3 2\n1\n1\n1\n2\n1\n2\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "13 6\n3\n1 3 5\n3\n1 4 5\n4\n3 4 5 6\n2\n2 5\n4\n1 2 3 5\n3\n3 4 6\n3\n4 5 6\n6\n1 2 3 4 5 6\n4\n1 3 5 6\n3\n1 2 4\n3\n1 5 6\n4\n1 2 3 4\n1\n5\n1 0 0 1 0 0\n"' do
    io = IO.popen("ruby typical90/057.rb", "w+")
    io.puts("13 6\n3\n1 3 5\n3\n1 4 5\n4\n3 4 5 6\n2\n2 5\n4\n1 2 3 5\n3\n3 4 6\n3\n4 5 6\n6\n1 2 3 4 5 6\n4\n1 3 5 6\n3\n1 2 4\n3\n1 5 6\n4\n1 2 3 4\n1\n5\n1 0 0 1 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("128\n")
  end

end
