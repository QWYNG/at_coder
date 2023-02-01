RSpec.describe 'test' do
  it 'test with "42\n"' do
    io = IO.popen("ruby typical90/085.rb", "w+")
    io.puts("42\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "7\n"' do
    io = IO.popen("ruby typical90/085.rb", "w+")
    io.puts("7\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "192\n"' do
    io = IO.popen("ruby typical90/085.rb", "w+")
    io.puts("192\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

end
