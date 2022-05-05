RSpec.describe 'test' do
  it 'test with "5 23\n"' do
    io = IO.popen("ruby math-and-algorithm/050.rb", "w+")
    io.puts("5 23\n")
    io.close_write
    expect(io.readlines.join).to eq("871631629\n")
  end

  it 'test with "97 998244353\n"' do
    io = IO.popen("ruby math-and-algorithm/050.rb", "w+")
    io.puts("97 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("934801994\n")
  end

end
