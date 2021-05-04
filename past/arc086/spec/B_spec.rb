RSpec.describe 'test' do
  it 'test with "3\n-2 5 -1\n"' do
    io = IO.popen("ruby arc086/B.rb", "w+")
    io.puts("3\n-2 5 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2 3\n3 3\n")
  end

  it 'test with "2\n-1 -3\n"' do
    io = IO.popen("ruby arc086/B.rb", "w+")
    io.puts("2\n-1 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2 1\n")
  end

  it 'test with "5\n0 0 0 0 0\n"' do
    io = IO.popen("ruby arc086/B.rb", "w+")
    io.puts("5\n0 0 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
