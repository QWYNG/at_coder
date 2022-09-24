RSpec.describe 'test' do
  it 'test with "3\n6 2 3 9 8 6\n"' do
    io = IO.popen("ruby typical90/019.rb", "w+")
    io.puts("3\n6 2 3 9 8 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n1 3 5 5 3 1\n"' do
    io = IO.popen("ruby typical90/019.rb", "w+")
    io.puts("3\n1 3 5 5 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4\n1 2 4 8 16 32 64 128\n"' do
    io = IO.popen("ruby typical90/019.rb", "w+")
    io.puts("4\n1 2 4 8 16 32 64 128\n")
    io.close_write
    expect(io.readlines.join).to eq("85\n")
  end

  it 'test with "15\n73 8 55 26 97 48 37 47 35 55 5 17 62 2 60 23 99 73 34 75 7 46 82 84 29 41 32 31 52 32\n"' do
    io = IO.popen("ruby typical90/019.rb", "w+")
    io.puts("15\n73 8 55 26 97 48 37 47 35 55 5 17 62 2 60 23 99 73 34 75 7 46 82 84 29 41 32 31 52 32\n")
    io.close_write
    expect(io.readlines.join).to eq("207\n")
  end

end
