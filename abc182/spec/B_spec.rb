RSpec.describe 'test' do
  it 'test with "3\n3 12 7\n"' do
    io = IO.popen("ruby abc182/B.rb", "w+")
    io.puts("3\n3 12 7\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5\n8 9 18 90 72\n"' do
    io = IO.popen("ruby abc182/B.rb", "w+")
    io.puts("5\n8 9 18 90 72\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "5\n1000 1000 1000 1000 1000\n"' do
    io = IO.popen("ruby abc182/B.rb", "w+")
    io.puts("5\n1000 1000 1000 1000 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000\n")
  end

end
