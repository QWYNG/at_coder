RSpec.describe 'test' do
  it 'test with "1 2\n"' do
    io = IO.popen("ruby math-and-algorithm/051.rb", "w+")
    io.puts("1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "869 120\n"' do
    io = IO.popen("ruby math-and-algorithm/051.rb", "w+")
    io.puts("869 120\n")
    io.close_write
    expect(io.readlines.join).to eq("445891023\n")
  end

end
