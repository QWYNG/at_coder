RSpec.describe 'test' do
  it 'test with "10 5\n8 6 9 1 2 1 10 100 1000 10000\n2 3\n1 4\n3 9\n6 8\n1 10\n"' do
    io = IO.popen("ruby math-and-algorithm/038.rb", "w+")
    io.puts("10 5\n8 6 9 1 2 1 10 100 1000 10000\n2 3\n1 4\n3 9\n6 8\n1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n24\n1123\n111\n11137\n")
  end

end
