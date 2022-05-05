RSpec.describe 'test' do
  it 'test with "5 2\n1 1 2 2 5\n"' do
    io = IO.popen("ruby arc086/A.rb", "w+")
    io.puts("5 2\n1 1 2 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4 4\n1 1 2 2\n"' do
    io = IO.popen("ruby arc086/A.rb", "w+")
    io.puts("4 4\n1 1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 3\n5 1 3 2 4 1 1 2 3 4\n"' do
    io = IO.popen("ruby arc086/A.rb", "w+")
    io.puts("10 3\n5 1 3 2 4 1 1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
