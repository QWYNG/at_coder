RSpec.describe 'test' do
  it 'test with "4 7\n1 2\n2 1\n2 3\n4 3\n4 1\n1 4\n2 3\n"' do
    io = IO.popen("ruby typical90/021.rb", "w+")
    io.puts("4 7\n1 2\n2 1\n2 3\n4 3\n4 1\n1 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "100 1\n1 2\n"' do
    io = IO.popen("ruby typical90/021.rb", "w+")
    io.puts("100 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
