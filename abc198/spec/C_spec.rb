RSpec.describe 'test' do
  it 'test with "5 15 0\n"' do
    io = IO.popen("ruby abc198/C.rb", "w+")
    io.puts("5 15 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 11 0\n"' do
    io = IO.popen("ruby abc198/C.rb", "w+")
    io.puts("5 11 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 4 4\n"' do
    io = IO.popen("ruby abc198/C.rb", "w+")
    io.puts("3 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
