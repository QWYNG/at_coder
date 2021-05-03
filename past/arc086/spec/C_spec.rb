RSpec.describe 'test' do
  it 'test with "2\n0 0\n"' do
    io = IO.popen("ruby arc086/C.rb", "w+")
    io.puts("2\n0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "5\n0 1 1 0 4\n"' do
    io = IO.popen("ruby arc086/C.rb", "w+")
    io.puts("5\n0 1 1 0 4\n")
    io.close_write
    expect(io.readlines.join).to eq("96\n")
  end

  it 'test with "31\n0 1 0 2 4 0 4 1 6 4 3 9 7 3 7 2 15 6 12 10 12 16 5 3 20 1 25 20 23 24 23\n"' do
    io = IO.popen("ruby arc086/C.rb", "w+")
    io.puts("31\n0 1 0 2 4 0 4 1 6 4 3 9 7 3 7 2 15 6 12 10 12 16 5 3 20 1 25 20 23 24 23\n")
    io.close_write
    expect(io.readlines.join).to eq("730395550\n")
  end

end
