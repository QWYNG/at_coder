RSpec.describe 'test' do
  it 'test with "5 2 3\n1 2\n3 4\n"' do
    io = IO.popen("ruby typical90/071.rb", "w+")
    io.puts("5 2 3\n1 2\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 4 5\n1 3 2 4 5\n1 3 5 2 4\n")
  end

  it 'test with "5 2 1\n1 3\n3 1\n"' do
    io = IO.popen("ruby typical90/071.rb", "w+")
    io.puts("5 2 1\n1 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "10 15 10\n8 4\n9 4\n10 2\n6 2\n10 6\n1 3\n7 4\n6 8\n8 1\n5 6\n10 9\n3 7\n8 3\n3 9\n2 3\n"' do
    io = IO.popen("ruby typical90/071.rb", "w+")
    io.puts("10 15 10\n8 4\n9 4\n10 2\n6 2\n10 6\n1 3\n7 4\n6 8\n8 1\n5 6\n10 9\n3 7\n8 3\n3 9\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5 10 6 2 8 1 3 7 9 4\n5 10 6 2 8 1 3 9 7 4\n5 10 6 8 2 1 3 7 9 4\n5 10 6 8 2 1 3 9 7 4\n5 10 6 8 1 2 3 7 9 4\n5 10 6 8 1 2 3 9 7 4\n10 5 6 2 8 1 3 7 9 4\n10 5 6 2 8 1 3 9 7 4\n10 5 6 8 2 1 3 7 9 4\n10 5 6 8 2 1 3 9 7 4\n")
  end

end
