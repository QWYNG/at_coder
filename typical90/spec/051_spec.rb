RSpec.describe 'test' do
  it 'test with "5 2 10\n3 8 7 5 11\n"' do
    io = IO.popen("ruby typical90/051.rb", "w+")
    io.puts("5 2 10\n3 8 7 5 11\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 1 10\n7 7 7 7 7\n"' do
    io = IO.popen("ruby typical90/051.rb", "w+")
    io.puts("5 1 10\n7 7 7 7 7\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "40 20 100\n1 3 1 3 4 1 3 5 5 3 3 4 1 5 4 4 3 1 3 4 1 3 2 4 4 1 5 2 5 3 1 3 3 3 5 5 5 2 3 5\n"' do
    io = IO.popen("ruby typical90/051.rb", "w+")
    io.puts("40 20 100\n1 3 1 3 4 1 3 5 5 3 3 4 1 5 4 4 3 1 3 4 1 3 2 4 4 1 5 2 5 3 1 3 3 3 5 5 5 2 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("137846528820\n")
  end

end
