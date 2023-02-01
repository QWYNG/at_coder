RSpec.describe 'test' do
  it 'test with "5 5\n5 2 10 3 6\n1 3\n1 3\n0\n1 5\n0\n"' do
    io = IO.popen("ruby typical90/040.rb", "w+")
    io.puts("5 5\n5 2 10 3 6\n1 3\n1 3\n0\n1 5\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "6 10\n8 6 9 1 2 0\n1 3\n2 3 4\n1 5\n1 5\n1 6\n0\n"' do
    io = IO.popen("ruby typical90/040.rb", "w+")
    io.puts("6 10\n8 6 9 1 2 0\n1 3\n2 3 4\n1 5\n1 5\n1 6\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
