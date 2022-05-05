RSpec.describe 'test' do
  it 'test with "3 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby math-and-algorithm/043.rb", "w+")
    io.puts("3 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("The graph is connected.\n")
  end

  it 'test with "6 6\n1 4\n2 3\n3 4\n5 6\n1 2\n2 4\n"' do
    io = IO.popen("ruby math-and-algorithm/043.rb", "w+")
    io.puts("6 6\n1 4\n2 3\n3 4\n5 6\n1 2\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("The graph is not connected.\n")
  end

end
