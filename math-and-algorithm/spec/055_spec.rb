RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby math-and-algorithm/055.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("1393\n")
  end

  it 'test with "876543210987654321\n"' do
    io = IO.popen("ruby math-and-algorithm/055.rb", "w+")
    io.puts("876543210987654321\n")
    io.close_write
    expect(io.readlines.join).to eq("841102483\n")
  end

end
