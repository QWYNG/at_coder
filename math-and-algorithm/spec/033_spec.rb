RSpec.describe 'test' do
  it 'test with "0 5\n1 1\n3 0\n"' do
    io = IO.popen("ruby math-and-algorithm/033.rb", "w+")
    io.puts("0 5\n1 1\n3 0\n")
    io.close_write
    expect(io.readlines.join).to eq("4.123105625618\n")
  end

  it 'test with "-40 -30\n-50 -10\n-20 -20\n"' do
    io = IO.popen("ruby math-and-algorithm/033.rb", "w+")
    io.puts("-40 -30\n-50 -10\n-20 -20\n")
    io.close_write
    expect(io.readlines.join).to eq("15.811388300842\n")
  end

  it 'test with "1000000000 1000000000\n-1000000000 -1000000000\n0 -1000000000\n"' do
    io = IO.popen("ruby math-and-algorithm/033.rb", "w+")
    io.puts("1000000000 1000000000\n-1000000000 -1000000000\n0 -1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2236067977.499789714813\n")
  end

end
