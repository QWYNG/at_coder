require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3 1\n3 3\n3 3 3\n1 2 1\n"' do
    io = IO.popen("ruby hitachi2020/B.rb", "w+")
    io.puts("2 3 1\n3 3\n3 3 3\n1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "1 1 2\n10\n10\n1 1 5\n1 1 10\n"' do
    io = IO.popen("ruby hitachi2020/B.rb", "w+")
    io.puts("1 1 2\n10\n10\n1 1 5\n1 1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "2 2 1\n3 5\n3 5\n2 2 2\n"' do
    io = IO.popen("ruby hitachi2020/B.rb", "w+")
    io.puts("2 2 1\n3 5\n3 5\n2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
