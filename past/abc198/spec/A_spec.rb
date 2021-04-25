RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc198/A.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc198/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby abc198/A.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
