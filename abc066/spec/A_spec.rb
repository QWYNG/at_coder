require 'rspec'

RSpec.describe 'test' do
  it 'test with "700 600 780\n"' do
    io = IO.popen("ruby abc066/A.rb", "w+")
    io.puts("700 600 780\n")
    io.close_write
    expect(io.readlines.join).to eq("1300\n")
  end

  it 'test with "10000 10000 10000\n"' do
    io = IO.popen("ruby abc066/A.rb", "w+")
    io.puts("10000 10000 10000\n")
    io.close_write
    expect(io.readlines.join).to eq("20000\n")
  end

end
