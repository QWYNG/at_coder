RSpec.describe 'test' do
  it 'test with "6\n1 2\n2 3\n3 4\n1 5\n3 6\n5\n2 1 2\n3 1 3 5\n4 2 3 4 5\n5 1 2 3 5 6\n6 1 2 3 4 5 6\n"' do
    io = IO.popen("ruby typical90/035.rb", "w+")
    io.puts("6\n1 2\n2 3\n3 4\n1 5\n3 6\n5\n2 1 2\n3 1 3 5\n4 2 3 4 5\n5 1 2 3 5 6\n6 1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n3\n4\n4\n5\n")
  end

  it 'test with "6\n1 2\n2 3\n3 4\n1 5\n3 6\n5\n2 1 2\n2 3 4\n2 4 6\n2 1 5\n2 2 5\n"' do
    io = IO.popen("ruby typical90/035.rb", "w+")
    io.puts("6\n1 2\n2 3\n3 4\n1 5\n3 6\n5\n2 1 2\n2 3 4\n2 4 6\n2 1 5\n2 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n2\n1\n2\n")
  end

  it 'test with "6\n1 2\n2 3\n3 4\n1 5\n3 6\n5\n3 1 2 3\n3 1 2 5\n3 1 3 6\n3 3 4 5\n3 4 5 6\n"' do
    io = IO.popen("ruby typical90/035.rb", "w+")
    io.puts("6\n1 2\n2 3\n3 4\n1 5\n3 6\n5\n3 1 2 3\n3 1 2 5\n3 1 3 6\n3 3 4 5\n3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n3\n4\n5\n")
  end

end
