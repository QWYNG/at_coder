RSpec.describe 'test' do
  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby typical90/039.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n1 2\n1 3\n1 4\n"' do
    io = IO.popen("ruby typical90/039.rb", "w+")
    io.puts("4\n1 2\n1 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "12\n1 2\n3 1\n4 2\n2 5\n3 6\n3 7\n8 4\n4 9\n10 5\n11 7\n7 12\n"' do
    io = IO.popen("ruby typical90/039.rb", "w+")
    io.puts("12\n1 2\n3 1\n4 2\n2 5\n3 6\n3 7\n8 4\n4 9\n10 5\n11 7\n7 12\n")
    io.close_write
    expect(io.readlines.join).to eq("211\n")
  end

end
