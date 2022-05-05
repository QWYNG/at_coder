require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n1 2\n2 3\n3 1\n"' do
    io = IO.popen("ruby abc199/D.rb", "w+")
    io.puts("3 3\n1 2\n2 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3 0\n"' do
    io = IO.popen("ruby abc199/D.rb", "w+")
    io.puts("3 0\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

  it 'test with "4 6\n1 2\n2 3\n3 4\n2 4\n1 3\n1 4\n"' do
    io = IO.popen("ruby abc199/D.rb", "w+")
    io.puts("4 6\n1 2\n2 3\n3 4\n2 4\n1 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "20 0\n"' do
    io = IO.popen("ruby abc199/D.rb", "w+")
    io.puts("20 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3486784401\n")
  end

end
