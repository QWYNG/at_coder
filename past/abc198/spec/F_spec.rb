RSpec.describe 'test' do
  it 'test with "8\n"' do
    io = IO.popen("ruby abc198/F.rb", "w+")
    io.puts("8\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "9\n"' do
    io = IO.popen("ruby abc198/F.rb", "w+")
    io.puts("9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "50\n"' do
    io = IO.popen("ruby abc198/F.rb", "w+")
    io.puts("50\n")
    io.close_write
    expect(io.readlines.join).to eq("80132\n")
  end

  it 'test with "10000000000\n"' do
    io = IO.popen("ruby abc198/F.rb", "w+")
    io.puts("10000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2239716\n")
  end

end
