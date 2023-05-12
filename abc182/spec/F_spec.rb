RSpec.describe 'test' do
  it 'test with "3 9\n1 5 10\n"' do
    io = IO.popen("ruby abc182/F.rb", "w+")
    io.puts("3 9\n1 5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 198\n1 5 10 50 100\n"' do
    io = IO.popen("ruby abc182/F.rb", "w+")
    io.puts("5 198\n1 5 10 50 100\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "4 44\n1 4 20 100\n"' do
    io = IO.popen("ruby abc182/F.rb", "w+")
    io.puts("4 44\n1 4 20 100\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "9 11837029798\n1 942454037 2827362111 19791534777 257289952101 771869856303 3859349281515 30874794252120 216123559764840\n"' do
    io = IO.popen("ruby abc182/F.rb", "w+")
    io.puts("9 11837029798\n1 942454037 2827362111 19791534777 257289952101 771869856303 3859349281515 30874794252120 216123559764840\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

end
