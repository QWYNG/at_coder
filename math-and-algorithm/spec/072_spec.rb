RSpec.describe 'test' do
  it 'test with "2 4\n"' do
    io = IO.popen("ruby math-and-algorithm/072.rb", "w+")
    io.puts("2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "199999 200000\n"' do
    io = IO.popen("ruby math-and-algorithm/072.rb", "w+")
    io.puts("199999 200000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "101 139\n"' do
    io = IO.popen("ruby math-and-algorithm/072.rb", "w+")
    io.puts("101 139\n")
    io.close_write
    expect(io.readlines.join).to eq("34\n")
  end

end
