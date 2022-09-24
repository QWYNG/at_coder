RSpec.describe 'test' do
  it 'test with "4 4\n1 2\n1 3\n1 4\n2 3\n5\n4 2\n3 3\n2 4\n4 5\n1 6\n"' do
    io = IO.popen("ruby typical90/083.rb", "w+")
    io.puts("4 4\n1 2\n1 3\n1 4\n2 3\n5\n4 2\n3 3\n2 4\n4 5\n1 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n3\n2\n5\n")
  end

  it 'test with "10 20\n1 3\n7 8\n5 8\n2 3\n7 10\n6 7\n4 7\n9 5\n6 5\n2 9\n4 2\n5 7\n3 10\n4 8\n1 8\n10 8\n5 3\n9 1\n7 3\n2 1\n10\n3 5\n2 2\n8 9\n5 3\n8 2\n3 9\n7 1\n7 1\n8 4\n6 8\n"' do
    io = IO.popen("ruby typical90/083.rb", "w+")
    io.puts("10 20\n1 3\n7 8\n5 8\n2 3\n7 10\n6 7\n4 7\n9 5\n6 5\n2 9\n4 2\n5 7\n3 10\n4 8\n1 8\n10 8\n5 3\n9 1\n7 3\n2 1\n10\n3 5\n2 2\n8 9\n5 3\n8 2\n3 9\n7 1\n7 1\n8 4\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n5\n1\n9\n3\n3\n9\n1\n1\n1\n")
  end

end
