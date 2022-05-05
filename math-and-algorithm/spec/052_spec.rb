RSpec.describe 'test' do
  it 'test with "3 3\n"' do
    io = IO.popen("ruby math-and-algorithm/052.rb", "w+")
    io.puts("3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 2\n"' do
    io = IO.popen("ruby math-and-algorithm/052.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "999999 999999\n"' do
    io = IO.popen("ruby math-and-algorithm/052.rb", "w+")
    io.puts("999999 999999\n")
    io.close_write
    expect(io.readlines.join).to eq("151840682\n")
  end

end
