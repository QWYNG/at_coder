RSpec.describe 'test' do
  it 'test with "2\n-1 2\n1 1\n"' do
    io = IO.popen("ruby typical90/070.rb", "w+")
    io.puts("2\n-1 2\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2\n1 0\n0 1\n"' do
    io = IO.popen("ruby typical90/070.rb", "w+")
    io.puts("2\n1 0\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5\n2 5\n2 5\n-3 4\n-4 -8\n6 -2\n"' do
    io = IO.popen("ruby typical90/070.rb", "w+")
    io.puts("5\n2 5\n2 5\n-3 4\n-4 -8\n6 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("35\n")
  end

  it 'test with "4\n1000000000 1000000000\n-1000000000 1000000000\n-1000000000 -1000000000\n1000000000 -1000000000\n"' do
    io = IO.popen("ruby typical90/070.rb", "w+")
    io.puts("4\n1000000000 1000000000\n-1000000000 1000000000\n-1000000000 -1000000000\n1000000000 -1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("8000000000\n")
  end

end
