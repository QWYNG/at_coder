require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3 -10\n1 2 3\n3 2 1\n1 2 2\n"' do
    io = IO.popen("ruby abc121/B.rb", "w+")
    io.puts("2 3 -10\n1 2 3\n3 2 1\n1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 2 -4\n-2 5\n100 41\n100 40\n-3 0\n-6 -2\n18 -13\n"' do
    io = IO.popen("ruby abc121/B.rb", "w+")
    io.puts("5 2 -4\n-2 5\n100 41\n100 40\n-3 0\n-6 -2\n18 -13\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 3 0\n100 -100 0\n0 100 100\n100 100 100\n-100 100 100\n"' do
    io = IO.popen("ruby abc121/B.rb", "w+")
    io.puts("3 3 0\n100 -100 0\n0 100 100\n100 100 100\n-100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
