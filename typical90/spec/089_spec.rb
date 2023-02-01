RSpec.describe 'test' do
  it 'test with "4 0\n3 1 4 2\n"' do
    io = IO.popen("ruby typical90/089.rb", "w+")
    io.puts("4 0\n3 1 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7 2\n5 3 7 2 1 2 3\n"' do
    io = IO.popen("ruby typical90/089.rb", "w+")
    io.puts("7 2\n5 3 7 2 1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("44\n")
  end

  it 'test with "7 0\n7 6 5 4 3 2 1\n"' do
    io = IO.popen("ruby typical90/089.rb", "w+")
    io.puts("7 0\n7 6 5 4 3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
