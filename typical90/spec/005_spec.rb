RSpec.describe 'test' do
  it 'test with "3 7 3\n1 4 9\n"' do
    io = IO.popen("ruby typical90/005.rb", "w+")
    io.puts("3 7 3\n1 4 9\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 2 3\n1 4 9\n"' do
    io = IO.popen("ruby typical90/005.rb", "w+")
    io.puts("5 2 3\n1 4 9\n")
    io.close_write
    expect(io.readlines.join).to eq("81\n")
  end

  it 'test with "10000 27 7\n1 3 4 6 7 8 9\n"' do
    io = IO.popen("ruby typical90/005.rb", "w+")
    io.puts("10000 27 7\n1 3 4 6 7 8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("989112238\n")
  end

  it 'test with "1000000000000000000 29 6\n1 2 4 5 7 9\n"' do
    io = IO.popen("ruby typical90/005.rb", "w+")
    io.puts("1000000000000000000 29 6\n1 2 4 5 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("853993813\n")
  end

  it 'test with "1000000000000000000 957 7\n1 2 3 5 6 7 9\n"' do
    io = IO.popen("ruby typical90/005.rb", "w+")
    io.puts("1000000000000000000 957 7\n1 2 3 5 6 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("205384995\n")
  end

end
