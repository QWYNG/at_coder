RSpec.describe 'test' do
  it 'test with "5\n3 1 4 1 5\n"' do
    io = IO.popen("ruby math-and-algorithm/003.rb", "w+")
    io.puts("5\n3 1 4 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "3\n10 20 50\n"' do
    io = IO.popen("ruby math-and-algorithm/003.rb", "w+")
    io.puts("3\n10 20 50\n")
    io.close_write
    expect(io.readlines.join).to eq("80\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9 10\n"' do
    io = IO.popen("ruby math-and-algorithm/003.rb", "w+")
    io.puts("10\n1 2 3 4 5 6 7 8 9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("55\n")
  end

end
