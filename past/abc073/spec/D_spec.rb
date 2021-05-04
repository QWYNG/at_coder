RSpec.describe 'test' do
  it 'test with "3 3 3\n1 2 3\n1 2 1\n2 3 1\n3 1 4\n"' do
    io = IO.popen("ruby abc073/D.rb", "w+")
    io.puts("3 3 3\n1 2 3\n1 2 1\n2 3 1\n3 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 3 2\n1 3\n2 3 2\n1 3 6\n1 2 2\n"' do
    io = IO.popen("ruby abc073/D.rb", "w+")
    io.puts("3 3 2\n1 3\n2 3 2\n1 3 6\n1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "4 6 3\n2 3 4\n1 2 4\n2 3 3\n4 3 1\n1 4 1\n4 2 2\n3 1 6\n"' do
    io = IO.popen("ruby abc073/D.rb", "w+")
    io.puts("4 6 3\n2 3 4\n1 2 4\n2 3 3\n4 3 1\n1 4 1\n4 2 2\n3 1 6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
