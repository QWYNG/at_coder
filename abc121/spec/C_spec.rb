require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 5\n4 9\n2 4\n"' do
    io = IO.popen("ruby abc121/C.rb", "w+")
    io.puts("2 5\n4 9\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "4 30\n6 18\n2 5\n3 10\n7 9\n"' do
    io = IO.popen("ruby abc121/C.rb", "w+")
    io.puts("4 30\n6 18\n2 5\n3 10\n7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("130\n")
  end

  it 'test with "1 100000\n1000000000 100000\n"' do
    io = IO.popen("ruby abc121/C.rb", "w+")
    io.puts("1 100000\n1000000000 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("100000000000000\n")
  end

end
