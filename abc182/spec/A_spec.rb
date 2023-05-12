RSpec.describe 'test' do
  it 'test with "200 300\n"' do
    io = IO.popen("ruby abc182/A.rb", "w+")
    io.puts("200 300\n")
    io.close_write
    expect(io.readlines.join).to eq("200\n")
  end

  it 'test with "10000 0\n"' do
    io = IO.popen("ruby abc182/A.rb", "w+")
    io.puts("10000 0\n")
    io.close_write
    expect(io.readlines.join).to eq("20100\n")
  end

end
