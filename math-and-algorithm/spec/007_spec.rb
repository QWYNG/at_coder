RSpec.describe 'test' do
  it 'test with "15 3 5\n"' do
    io = IO.popen("ruby math-and-algorithm/007.rb", "w+")
    io.puts("15 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "1000000 11 13\n"' do
    io = IO.popen("ruby math-and-algorithm/007.rb", "w+")
    io.puts("1000000 11 13\n")
    io.close_write
    expect(io.readlines.join).to eq("160839\n")
  end

end
