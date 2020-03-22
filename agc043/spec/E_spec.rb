require 'rspec'

RSpec.describe 'test' do
  it 'test with "1\n10\n"' do
    io = IO.popen("ruby agc043/E.rb", "w+")
    io.puts("1\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("Possible\n4\n0 0\n0 1\n1 1\n1 0\n0 0\n")
  end

  it 'test with "2\n1000\n"' do
    io = IO.popen("ruby agc043/E.rb", "w+")
    io.puts("2\n1000\n")
    io.close_write
    expect(io.readlines.join).to eq("Possible\n6\n1 0\n2 0\n2 1\n1 1\n0 1\n0 0\n1 0\n")
  end

  it 'test with "2\n1001\n"' do
    io = IO.popen("ruby agc043/E.rb", "w+")
    io.puts("2\n1001\n")
    io.close_write
    expect(io.readlines.join).to eq("Impossible\n")
  end

  it 'test with "1\n11\n"' do
    io = IO.popen("ruby agc043/E.rb", "w+")
    io.puts("1\n11\n")
    io.close_write
    expect(io.readlines.join).to eq("Possible\n0\n1 1\n")
  end

end
