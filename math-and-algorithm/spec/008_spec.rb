RSpec.describe 'test' do
  it 'test with "3 4\n"' do
    io = IO.popen("ruby math-and-algorithm/008.rb", "w+")
    io.puts("3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "869 120\n"' do
    io = IO.popen("ruby math-and-algorithm/008.rb", "w+")
    io.puts("869 120\n")
    io.close_write
    expect(io.readlines.join).to eq("7140\n")
  end

end
