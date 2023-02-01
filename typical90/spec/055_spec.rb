RSpec.describe 'test' do
  it 'test with "6 7 1\n1 2 3 4 5 6\n"' do
    io = IO.popen("ruby typical90/055.rb", "w+")
    io.puts("6 7 1\n1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 1 0\n0 0 0 0 0 0 0 0 0 0\n"' do
    io = IO.popen("ruby typical90/055.rb", "w+")
    io.puts("10 1 0\n0 0 0 0 0 0 0 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("252\n")
  end

end
