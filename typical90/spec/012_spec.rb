RSpec.describe 'test' do
  it 'test with "3 3\n10\n1 2 2\n1 1 1\n2 1 1 2 2\n1 3 2\n2 1 1 2 2\n2 2 2 3 2\n1 2 3\n1 2 1\n2 1 1 2 2\n2 1 1 3 3\n"' do
    io = IO.popen("ruby typical90/012.rb", "w+")
    io.puts("3 3\n10\n1 2 2\n1 1 1\n2 1 1 2 2\n1 3 2\n2 1 1 2 2\n2 2 2 3 2\n1 2 3\n1 2 1\n2 1 1 2 2\n2 1 1 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nNo\nYes\nYes\nNo\n")
  end

  it 'test with "1 1\n3\n2 1 1 1 1\n1 1 1\n2 1 1 1 1\n"' do
    io = IO.popen("ruby typical90/012.rb", "w+")
    io.puts("1 1\n3\n2 1 1 1 1\n1 1 1\n2 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nYes\n")
  end

  it 'test with "5 5\n42\n2 3 4 3 4\n2 3 2 3 2\n1 4 1\n2 4 1 2 2\n1 1 2\n1 4 5\n1 3 3\n2 4 2 1 3\n1 3 5\n2 2 4 2 3\n2 2 4 2 5\n2 3 4 5 1\n2 3 1 2 2\n2 3 1 1 2\n2 2 4 5 2\n2 3 2 5 3\n1 4 3\n2 3 3 3 5\n2 3 1 3 2\n1 1 5\n2 4 4 5 3\n1 1 4\n2 1 3 2 5\n2 4 3 1 4\n2 2 3 3 3\n1 2 1\n1 2 5\n2 1 4 5 3\n2 4 4 2 5\n2 4 2 2 4\n1 2 2\n2 4 1 5 2\n1 2 4\n2 3 1 4 1\n1 4 4\n2 3 2 2 1\n2 1 1 5 2\n1 4 2\n2 4 2 3 5\n1 3 2\n1 3 4\n1 2 3\n"' do
    io = IO.popen("ruby typical90/012.rb", "w+")
    io.puts("5 5\n42\n2 3 4 3 4\n2 3 2 3 2\n1 4 1\n2 4 1 2 2\n1 1 2\n1 4 5\n1 3 3\n2 4 2 1 3\n1 3 5\n2 2 4 2 3\n2 2 4 2 5\n2 3 4 5 1\n2 3 1 2 2\n2 3 1 1 2\n2 2 4 5 2\n2 3 2 5 3\n1 4 3\n2 3 3 3 5\n2 3 1 3 2\n1 1 5\n2 4 4 5 3\n1 1 4\n2 1 3 2 5\n2 4 3 1 4\n2 2 3 3 3\n1 2 1\n1 2 5\n2 1 4 5 3\n2 4 4 2 5\n2 4 2 2 4\n1 2 2\n2 4 1 5 2\n1 2 4\n2 3 1 4 1\n1 4 4\n2 3 2 2 1\n2 1 1 5 2\n1 4 2\n2 4 2 3 5\n1 3 2\n1 3 4\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nNo\nYes\n")
  end

end
