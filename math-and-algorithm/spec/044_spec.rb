RSpec.describe 'test' do
  it 'test with "3 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby math-and-algorithm/044.rb", "w+")
    io.puts("3 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n2\n1\n")
  end

  it 'test with "6 6\n1 4\n2 3\n3 4\n5 6\n1 2\n2 4\n"' do
    io = IO.popen("ruby math-and-algorithm/044.rb", "w+")
    io.puts("6 6\n1 4\n2 3\n3 4\n5 6\n1 2\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n2\n1\n-1\n-1\n")
  end

end
