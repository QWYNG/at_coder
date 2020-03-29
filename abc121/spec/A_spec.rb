require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n2 1\n"' do
    io = IO.popen("ruby abc121/A.rb", "w+")
    io.puts("3 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 5\n2 3\n"' do
    io = IO.popen("ruby abc121/A.rb", "w+")
    io.puts("5 5\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "2 4\n2 4\n"' do
    io = IO.popen("ruby abc121/A.rb", "w+")
    io.puts("2 4\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
