RSpec.describe 'test' do
  it 'test with "4 4\n1 2 3\n1 3 4\n3 4 1\n2 4 10\n"' do
    io = IO.popen("ruby math-and-algorithm/080.rb", "w+")
    io.puts("4 4\n1 2 3\n1 3 4\n3 4 1\n2 4 10\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "2 0\n"' do
    io = IO.popen("ruby math-and-algorithm/080.rb", "w+")
    io.puts("2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
