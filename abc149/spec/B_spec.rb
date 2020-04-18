require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3 3\n"' do
    io = IO.popen("ruby abc149/B.rb", "w+")
    io.puts("2 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0 2\n")
  end

  it 'test with "500000000000 500000000000 1000000000000\n"' do
    io = IO.popen("ruby abc149/B.rb", "w+")
    io.puts("500000000000 500000000000 1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0\n")
  end

end
