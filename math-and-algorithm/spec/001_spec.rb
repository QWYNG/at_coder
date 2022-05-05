RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby math-and-algorithm/001.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby math-and-algorithm/001.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "8\n"' do
    io = IO.popen("ruby math-and-algorithm/001.rb", "w+")
    io.puts("8\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

end
