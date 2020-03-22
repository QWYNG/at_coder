require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 7\n2 0\n3 2\n0 3\n"' do
    io = IO.popen("ruby hitachi2020/D.rb", "w+")
    io.puts("3 7\n2 0\n3 2\n0 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1 3\n0 3\n"' do
    io = IO.popen("ruby hitachi2020/D.rb", "w+")
    io.puts("1 3\n0 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 21600\n2 14\n3 22\n1 3\n1 10\n1 9\n"' do
    io = IO.popen("ruby hitachi2020/D.rb", "w+")
    io.puts("5 21600\n2 14\n3 22\n1 3\n1 10\n1 9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "7 57\n0 25\n3 10\n2 4\n5 15\n3 22\n2 14\n1 15\n"' do
    io = IO.popen("ruby hitachi2020/D.rb", "w+")
    io.puts("7 57\n0 25\n3 10\n2 4\n5 15\n3 22\n2 14\n1 15\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
