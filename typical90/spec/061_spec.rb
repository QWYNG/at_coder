RSpec.describe 'test' do
  it 'test with "6\n1 2\n1 1\n2 3\n3 1\n3 2\n3 3\n"' do
    io = IO.popen("ruby typical90/061.rb", "w+")
    io.puts("6\n1 2\n1 1\n2 3\n3 1\n3 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n")
  end

  it 'test with "6\n2 1\n3 1\n2 2\n3 1\n2 3\n3 1\n"' do
    io = IO.popen("ruby typical90/061.rb", "w+")
    io.puts("6\n2 1\n3 1\n2 2\n3 1\n2 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n1\n")
  end

  it 'test with "6\n1 1000000000\n2 200000000\n1 30000000\n2 4000000\n1 500000\n3 3\n"' do
    io = IO.popen("ruby typical90/061.rb", "w+")
    io.puts("6\n1 1000000000\n2 200000000\n1 30000000\n2 4000000\n1 500000\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000\n")
  end

end
