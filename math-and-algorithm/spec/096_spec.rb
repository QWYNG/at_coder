RSpec.describe 'test' do
  it 'test with "5\n8 3 7 2 5\n"' do
    io = IO.popen("ruby math-and-algorithm/096.rb", "w+")
    io.puts("5\n8 3 7 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "2\n1000 1\n"' do
    io = IO.popen("ruby math-and-algorithm/096.rb", "w+")
    io.puts("2\n1000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1000\n")
  end

  it 'test with "9\n3 14 15 9 26 5 35 89 79\n"' do
    io = IO.popen("ruby math-and-algorithm/096.rb", "w+")
    io.puts("9\n3 14 15 9 26 5 35 89 79\n")
    io.close_write
    expect(io.readlines.join).to eq("138\n")
  end

end
