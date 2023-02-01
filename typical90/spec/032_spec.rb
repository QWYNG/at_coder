RSpec.describe 'test' do
  it 'test with "3\n1 10 100\n10 1 100\n100 10 1\n1\n1 2\n"' do
    io = IO.popen("ruby typical90/032.rb", "w+")
    io.puts("3\n1 10 100\n10 1 100\n100 10 1\n1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("111\n")
  end

  it 'test with "4\n1 2 3 4\n5 6 7 8\n9 10 11 12\n13 14 15 16\n3\n1 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby typical90/032.rb", "w+")
    io.puts("4\n1 2 3 4\n5 6 7 8\n9 10 11 12\n13 14 15 16\n3\n1 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "3\n1 10 100\n10 1 100\n100 10 1\n0\n"' do
    io = IO.popen("ruby typical90/032.rb", "w+")
    io.puts("3\n1 10 100\n10 1 100\n100 10 1\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
