RSpec.describe 'test' do
  it 'test with "6 3\n3\n1 2 3\n2\n3 4\n2\n5 6\n"' do
    io = IO.popen("ruby typical90/054.rb", "w+")
    io.puts("6 3\n3\n1 2 3\n2\n3 4\n2\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n1\n2\n-1\n-1\n")
  end

  it 'test with "4 3\n2\n1 2\n2\n2 3\n2\n3 4\n"' do
    io = IO.popen("ruby typical90/054.rb", "w+")
    io.puts("4 3\n2\n1 2\n2\n2 3\n2\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n2\n3\n")
  end

  it 'test with "4 1\n3\n2 3 4\n"' do
    io = IO.popen("ruby typical90/054.rb", "w+")
    io.puts("4 1\n3\n2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n-1\n-1\n-1\n")
  end

  it 'test with "11 5\n4\n2 6 9 10\n3\n1 3 8\n5\n2 4 6 8 10\n2\n6 7\n4\n5 6 7 8\n"' do
    io = IO.popen("ruby typical90/054.rb", "w+")
    io.puts("11 5\n4\n2 6 9 10\n3\n1 3 8\n5\n2 4 6 8 10\n2\n6 7\n4\n5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n2\n1\n2\n2\n2\n2\n1\n3\n2\n-1\n")
  end

end
