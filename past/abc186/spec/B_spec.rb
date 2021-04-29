RSpec.describe 'test' do
  it 'test with "2 3\n2 2 3\n3 2 2\n"' do
    io = IO.popen("ruby abc186/B.rb", "w+")
    io.puts("2 3\n2 2 3\n3 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 3\n99 99 99\n99 0 99\n99 99 99\n"' do
    io = IO.popen("ruby abc186/B.rb", "w+")
    io.puts("3 3\n99 99 99\n99 0 99\n99 99 99\n")
    io.close_write
    expect(io.readlines.join).to eq("792\n")
  end

  it 'test with "3 2\n4 4\n4 4\n4 4\n"' do
    io = IO.popen("ruby abc186/B.rb", "w+")
    io.puts("3 2\n4 4\n4 4\n4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
