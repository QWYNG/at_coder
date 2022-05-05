RSpec.describe 'test' do
  it 'test with "3\n2 5\n"' do
    io = IO.popen("ruby math-and-algorithm/094.rb", "w+")
    io.puts("3\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "2\n3\n"' do
    io = IO.popen("ruby math-and-algorithm/094.rb", "w+")
    io.puts("2\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "6\n0 153 10 10 23\n"' do
    io = IO.popen("ruby math-and-algorithm/094.rb", "w+")
    io.puts("6\n0 153 10 10 23\n")
    io.close_write
    expect(io.readlines.join).to eq("53\n")
  end

end
