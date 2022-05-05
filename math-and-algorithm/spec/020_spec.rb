RSpec.describe 'test' do
  it 'test with "5\n100 150 200 250 300\n"' do
    io = IO.popen("ruby math-and-algorithm/020.rb", "w+")
    io.puts("5\n100 150 200 250 300\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "13\n243 156 104 280 142 286 196 132 128 195 265 300 130\n"' do
    io = IO.popen("ruby math-and-algorithm/020.rb", "w+")
    io.puts("13\n243 156 104 280 142 286 196 132 128 195 265 300 130\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
