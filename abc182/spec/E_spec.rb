RSpec.describe 'test' do
  it 'test with "3 3 2 1\n1 1\n2 3\n2 2\n"' do
    io = IO.popen("ruby abc182/E.rb", "w+")
    io.puts("3 3 2 1\n1 1\n2 3\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4 4 3 3\n1 2\n1 3\n3 4\n2 3\n2 4\n3 2\n"' do
    io = IO.popen("ruby abc182/E.rb", "w+")
    io.puts("4 4 3 3\n1 2\n1 3\n3 4\n2 3\n2 4\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "5 5 5 1\n1 1\n2 2\n3 3\n4 4\n5 5\n4 2\n"' do
    io = IO.popen("ruby abc182/E.rb", "w+")
    io.puts("5 5 5 1\n1 1\n2 2\n3 3\n4 4\n5 5\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("24\n")
  end

end
