RSpec.describe 'test' do
  it 'test with "999 434\n"' do
    io = IO.popen("ruby math-and-algorithm/090.rb", "w+")
    io.puts("999 434\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "255 15\n"' do
    io = IO.popen("ruby math-and-algorithm/090.rb", "w+")
    io.puts("255 15\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "9999999999 1\n"' do
    io = IO.popen("ruby math-and-algorithm/090.rb", "w+")
    io.puts("9999999999 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
