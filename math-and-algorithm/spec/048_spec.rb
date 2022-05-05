RSpec.describe 'test' do
  it 'test with "6\n"' do
    io = IO.popen("ruby math-and-algorithm/048.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "41\n"' do
    io = IO.popen("ruby math-and-algorithm/048.rb", "w+")
    io.puts("41\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "79992\n"' do
    io = IO.popen("ruby math-and-algorithm/048.rb", "w+")
    io.puts("79992\n")
    io.close_write
    expect(io.readlines.join).to eq("36\n")
  end

end
