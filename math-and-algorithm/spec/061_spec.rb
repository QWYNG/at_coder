RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby math-and-algorithm/061.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("First\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby math-and-algorithm/061.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("Second\n")
  end

  it 'test with "1000000000000000000\n"' do
    io = IO.popen("ruby math-and-algorithm/061.rb", "w+")
    io.puts("1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("First\n")
  end

end
