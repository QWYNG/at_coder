RSpec.describe 'test' do
  it 'test with "6\n1 2 3 3 2 1\n"' do
    io = IO.popen("ruby typical90/060.rb", "w+")
    io.puts("6\n1 2 3 3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "4\n1 2 3 4\n"' do
    io = IO.popen("ruby typical90/060.rb", "w+")
    io.puts("4\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5\n3 3 3 3 3\n"' do
    io = IO.popen("ruby typical90/060.rb", "w+")
    io.puts("5\n3 3 3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
