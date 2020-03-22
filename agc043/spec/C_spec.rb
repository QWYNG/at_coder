require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1\n1 2\n1\n1 2\n1\n1 2\n"' do
    io = IO.popen("ruby agc043/C.rb", "w+")
    io.puts("2\n1\n1 2\n1\n1 2\n1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("46494701\n")
  end

  it 'test with "3\n3\n1 3\n1 2\n3 2\n2\n2 1\n2 3\n1\n2 1\n"' do
    io = IO.popen("ruby agc043/C.rb", "w+")
    io.puts("3\n3\n1 3\n1 2\n3 2\n2\n2 1\n2 3\n1\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("883188316\n")
  end

  it 'test with "100000\n1\n1 2\n1\n99999 100000\n1\n1 100000\n"' do
    io = IO.popen("ruby agc043/C.rb", "w+")
    io.puts("100000\n1\n1 2\n1\n99999 100000\n1\n1 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("318525248\n")
  end

end
