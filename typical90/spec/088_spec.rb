RSpec.describe 'test' do
  it 'test with "5 2\n3 1 3 2 3\n1 2\n1 4\n"' do
    io = IO.popen("ruby typical90/088.rb", "w+")
    io.puts("5 2\n3 1 3 2 3\n1 2\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n2 3 4 5\n3\n1 3 5\n")
  end

  it 'test with "2\n1 3\n2\n1 5\n"' do
    io = IO.popen("ruby typical90/088.rb", "w+")
    io.puts("2\n1 3\n2\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("10 10\n2 5 7 8 11 10 1 88 86 50\n1 2\n1 3\n1 4\n1 5\n1 6\n5 10\n6 10\n2 3\n9 10\n7 8\n")
  end

  it 'test with "2\n6 7\n1\n5\n"' do
    io = IO.popen("ruby typical90/088.rb", "w+")
    io.puts("2\n6 7\n1\n5\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
