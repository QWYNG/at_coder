RSpec.describe 'test' do
  it 'test with "2 5\n1 3\n2 1\n"' do
    io = IO.popen("ruby typical90/024.rb", "w+")
    io.puts("2 5\n1 3\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3 1\n7 8 9\n7 8 9\n"' do
    io = IO.popen("ruby typical90/024.rb", "w+")
    io.puts("3 1\n7 8 9\n7 8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "7 999999999\n3 1 4 1 5 9 2\n1 2 3 4 5 6 7\n"' do
    io = IO.popen("ruby typical90/024.rb", "w+")
    io.puts("7 999999999\n3 1 4 1 5 9 2\n1 2 3 4 5 6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
