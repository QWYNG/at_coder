require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 998244353\n"' do
    io = IO.popen("ruby agc043/D.rb", "w+")
    io.puts("1 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "2 998244353\n"' do
    io = IO.popen("ruby agc043/D.rb", "w+")
    io.puts("2 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("261\n")
  end

  it 'test with "314 1000000007\n"' do
    io = IO.popen("ruby agc043/D.rb", "w+")
    io.puts("314 1000000007\n")
    io.close_write
    expect(io.readlines.join).to eq("182908545\n")
  end

end
