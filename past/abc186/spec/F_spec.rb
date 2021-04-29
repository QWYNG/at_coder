RSpec.describe 'test' do
  it 'test with "4 3 2\n2 2\n3 3\n"' do
    io = IO.popen("ruby abc186/F.rb", "w+")
    io.puts("4 3 2\n2 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "5 4 4\n3 2\n3 4\n4 2\n5 2\n"' do
    io = IO.popen("ruby abc186/F.rb", "w+")
    io.puts("5 4 4\n3 2\n3 4\n4 2\n5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "200000 200000 0\n"' do
    io = IO.popen("ruby abc186/F.rb", "w+")
    io.puts("200000 200000 0\n")
    io.close_write
    expect(io.readlines.join).to eq("40000000000\n")
  end

end
