RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby math-and-algorithm/087.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "869120\n"' do
    io = IO.popen("ruby math-and-algorithm/087.rb", "w+")
    io.puts("869120\n")
    io.close_write
    expect(io.readlines.join).to eq("497335961\n")
  end

end
