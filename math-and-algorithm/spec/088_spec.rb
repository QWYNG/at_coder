RSpec.describe 'test' do
  it 'test with "1 2 3\n"' do
    io = IO.popen("ruby math-and-algorithm/088.rb", "w+")
    io.puts("1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "1000000000 987654321 123456789\n"' do
    io = IO.popen("ruby math-and-algorithm/088.rb", "w+")
    io.puts("1000000000 987654321 123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("951633476\n")
  end

end
