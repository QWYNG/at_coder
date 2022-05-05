RSpec.describe 'test' do
  it 'test with "4\n10 30 40 20\n"' do
    io = IO.popen("ruby math-and-algorithm/028.rb", "w+")
    io.puts("4\n10 30 40 20\n")
    io.close_write
    expect(io.readlines.join).to eq("30\n")
  end

  it 'test with "2\n10 10\n"' do
    io = IO.popen("ruby math-and-algorithm/028.rb", "w+")
    io.puts("2\n10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6\n30 10 60 10 60 50\n"' do
    io = IO.popen("ruby math-and-algorithm/028.rb", "w+")
    io.puts("6\n30 10 60 10 60 50\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

end
