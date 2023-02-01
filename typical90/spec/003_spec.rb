RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n"' do
    io = IO.popen("ruby typical90/003.rb", "w+")
    io.puts("3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5\n1 2\n2 3\n3 4\n3 5\n"' do
    io = IO.popen("ruby typical90/003.rb", "w+")
    io.puts("5\n1 2\n2 3\n3 4\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "10\n1 2\n1 3\n2 4\n4 5\n4 6\n3 7\n7 8\n8 9\n8 10\n"' do
    io = IO.popen("ruby typical90/003.rb", "w+")
    io.puts("10\n1 2\n1 3\n2 4\n4 5\n4 6\n3 7\n7 8\n8 9\n8 10\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "31\n1 2\n1 3\n2 4\n2 5\n3 6\n3 7\n4 8\n4 9\n5 10\n5 11\n6 12\n6 13\n7 14\n7 15\n8 16\n8 17\n9 18\n9 19\n10 20\n10 21\n11 22\n11 23\n12 24\n12 25\n13 26\n13 27\n14 28\n14 29\n15 30\n15 31\n"' do
    io = IO.popen("ruby typical90/003.rb", "w+")
    io.puts("31\n1 2\n1 3\n2 4\n2 5\n3 6\n3 7\n4 8\n4 9\n5 10\n5 11\n6 12\n6 13\n7 14\n7 15\n8 16\n8 17\n9 18\n9 19\n10 20\n10 21\n11 22\n11 23\n12 24\n12 25\n13 26\n13 27\n14 28\n14 29\n15 30\n15 31\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
