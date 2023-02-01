RSpec.describe 'test' do
  it 'test with "6 6 3\n1 3\n2 4\n1 4\n4 6\n5 6\n1 5\n2 6\n1 5\n3 6\n"' do
    io = IO.popen("ruby typical90/059.rb", "w+")
    io.puts("6 6 3\n1 3\n2 4\n1 4\n4 6\n5 6\n1 5\n2 6\n1 5\n3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nNo\n")
  end

  it 'test with "3 2 2\n1 2\n1 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby typical90/059.rb", "w+")
    io.puts("3 2 2\n1 2\n1 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\n")
  end

  it 'test with "2 1 1\n1 2\n1 2\n"' do
    io = IO.popen("ruby typical90/059.rb", "w+")
    io.puts("2 1 1\n1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
