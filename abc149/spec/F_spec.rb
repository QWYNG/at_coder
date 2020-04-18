require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc149/F.rb", "w+")
    io.puts("3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("125000001\n")
  end

  it 'test with "4\n1 2\n2 3\n3 4\n"' do
    io = IO.popen("ruby abc149/F.rb", "w+")
    io.puts("4\n1 2\n2 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("375000003\n")
  end

  it 'test with "4\n1 2\n1 3\n1 4\n"' do
    io = IO.popen("ruby abc149/F.rb", "w+")
    io.puts("4\n1 2\n1 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("250000002\n")
  end

  it 'test with "7\n4 7\n3 1\n2 6\n5 2\n7 1\n2 7\n"' do
    io = IO.popen("ruby abc149/F.rb", "w+")
    io.puts("7\n4 7\n3 1\n2 6\n5 2\n7 1\n2 7\n")
    io.close_write
    expect(io.readlines.join).to eq("570312505\n")
  end

end
