RSpec.describe 'test' do
  it 'test with "5 1\n1 2 3 4 5\n"' do
    io = IO.popen("ruby typical90/034.rb", "w+")
    io.puts("5 1\n1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 4\n1 1 2 4 2\n"' do
    io = IO.popen("ruby typical90/034.rb", "w+")
    io.puts("5 4\n1 1 2 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10 2\n1 2 3 4 4 3 2 1 2 3\n"' do
    io = IO.popen("ruby typical90/034.rb", "w+")
    io.puts("10 2\n1 2 3 4 4 3 2 1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
