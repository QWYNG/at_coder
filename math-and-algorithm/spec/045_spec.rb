RSpec.describe 'test' do
  it 'test with "5 5\n1 2\n1 3\n3 2\n5 2\n4 2\n"' do
    io = IO.popen("ruby math-and-algorithm/045.rb", "w+")
    io.puts("5 5\n1 2\n1 3\n3 2\n5 2\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 1\n1 2\n"' do
    io = IO.popen("ruby math-and-algorithm/045.rb", "w+")
    io.puts("2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7 18\n7 2\n1 6\n5 2\n1 3\n7 6\n5 3\n5 6\n5 4\n1 7\n2 6\n3 4\n5 1\n4 7\n4 6\n5 7\n3 2\n4 2\n1 4\n"' do
    io = IO.popen("ruby math-and-algorithm/045.rb", "w+")
    io.puts("7 18\n7 2\n1 6\n5 2\n1 3\n7 6\n5 3\n5 6\n5 4\n1 7\n2 6\n3 4\n5 1\n4 7\n4 6\n5 7\n3 2\n4 2\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
