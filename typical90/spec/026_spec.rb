RSpec.describe 'test' do
  it 'test with "4\n1 2\n2 3\n2 4\n"' do
    io = IO.popen("ruby typical90/026.rb", "w+")
    io.puts("4\n1 2\n2 3\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3 4\n")
  end

  it 'test with "6\n1 3\n2 4\n3 5\n2 5\n3 6\n"' do
    io = IO.popen("ruby typical90/026.rb", "w+")
    io.puts("6\n1 3\n2 4\n3 5\n2 5\n3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 6\n")
  end

end
