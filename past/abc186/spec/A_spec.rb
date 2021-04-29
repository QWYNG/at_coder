RSpec.describe 'test' do
  it 'test with "10 3\n"' do
    io = IO.popen("ruby abc186/A.rb", "w+")
    io.puts("10 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1000 1\n"' do
    io = IO.popen("ruby abc186/A.rb", "w+")
    io.puts("1000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1000\n")
  end

end
