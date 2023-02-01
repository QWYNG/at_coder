RSpec.describe 'test' do
  it 'test with "15 2\n"' do
    io = IO.popen("ruby typical90/030.rb", "w+")
    io.puts("15 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "30 2\n"' do
    io = IO.popen("ruby typical90/030.rb", "w+")
    io.puts("30 2\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "200 4\n"' do
    io = IO.popen("ruby typical90/030.rb", "w+")
    io.puts("200 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "869120 1\n"' do
    io = IO.popen("ruby typical90/030.rb", "w+")
    io.puts("869120 1\n")
    io.close_write
    expect(io.readlines.join).to eq("869119\n")
  end

  it 'test with "10000000 3\n"' do
    io = IO.popen("ruby typical90/030.rb", "w+")
    io.puts("10000000 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6798027\n")
  end

end
