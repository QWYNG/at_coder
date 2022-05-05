RSpec.describe 'test' do
  it 'test with "4 2\n"' do
    io = IO.popen("ruby abc107/A.rb", "w+")
    io.puts("4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen("ruby abc107/A.rb", "w+")
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "15 11\n"' do
    io = IO.popen("ruby abc107/A.rb", "w+")
    io.puts("15 11\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
