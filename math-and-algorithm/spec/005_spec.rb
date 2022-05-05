RSpec.describe 'test' do
  it 'test with "3\n30 50 70\n"' do
    io = IO.popen("ruby math-and-algorithm/005.rb", "w+")
    io.puts("3\n30 50 70\n")
    io.close_write
    expect(io.readlines.join).to eq("50\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9 10\n"' do
    io = IO.popen("ruby math-and-algorithm/005.rb", "w+")
    io.puts("10\n1 2 3 4 5 6 7 8 9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("55\n")
  end

  it 'test with "5\n60 60 60 60 60\n"' do
    io = IO.popen("ruby math-and-algorithm/005.rb", "w+")
    io.puts("5\n60 60 60 60 60\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
