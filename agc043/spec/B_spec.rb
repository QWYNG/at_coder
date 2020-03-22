require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n1231\n"' do
    io = IO.popen("ruby agc043/B.rb", "w+")
    io.puts("4\n1231\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10\n2311312312\n"' do
    io = IO.popen("ruby agc043/B.rb", "w+")
    io.puts("10\n2311312312\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
