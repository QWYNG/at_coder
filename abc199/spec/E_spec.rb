require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 1\n2 2 1\n"' do
    io = IO.popen("ruby abc199/E.rb", "w+")
    io.puts("3 1\n2 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5 2\n3 3 2\n4 4 3\n"' do
    io = IO.popen("ruby abc199/E.rb", "w+")
    io.puts("5 2\n3 3 2\n4 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

  it 'test with "18 0\n"' do
    io = IO.popen("ruby abc199/E.rb", "w+")
    io.puts("18 0\n")
    io.close_write
    expect(io.readlines.join).to eq("6402373705728000\n")
  end

end
