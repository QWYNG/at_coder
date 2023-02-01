RSpec.describe 'test' do
  it 'test with "3\n1 1\n5 1\n5 5\n"' do
    io = IO.popen("ruby abc131/F.rb", "w+")
    io.puts("3\n1 1\n5 1\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2\n10 10\n20 20\n"' do
    io = IO.popen("ruby abc131/F.rb", "w+")
    io.puts("2\n10 10\n20 20\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "9\n1 1\n2 1\n3 1\n4 1\n5 1\n1 2\n1 3\n1 4\n1 5\n"' do
    io = IO.popen("ruby abc131/F.rb", "w+")
    io.puts("9\n1 1\n2 1\n3 1\n4 1\n5 1\n1 2\n1 3\n1 4\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

end
