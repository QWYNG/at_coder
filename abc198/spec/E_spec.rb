RSpec.describe 'test' do
  it 'test with "6\n2 7 1 8 2 8\n1 2\n3 6\n3 2\n4 3\n2 5\n"' do
    io = IO.popen("ruby abc198/E.rb", "w+")
    io.puts("6\n2 7 1 8 2 8\n1 2\n3 6\n3 2\n4 3\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n6\n")
  end

  it 'test with "10\n3 1 4 1 5 9 2 6 5 3\n1 2\n2 3\n3 4\n4 5\n5 6\n6 7\n7 8\n8 9\n9 10\n"' do
    io = IO.popen("ruby abc198/E.rb", "w+")
    io.puts("10\n3 1 4 1 5 9 2 6 5 3\n1 2\n2 3\n3 4\n4 5\n5 6\n6 7\n7 8\n8 9\n9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n5\n6\n7\n8\n")
  end

end
