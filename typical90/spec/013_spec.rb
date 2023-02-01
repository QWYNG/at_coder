RSpec.describe 'test' do
  it 'test with "7 9\n1 2 2\n1 3 3\n2 5 2\n3 4 1\n3 5 4\n4 7 5\n5 6 1\n5 7 6\n6 7 3\n"' do
    io = IO.popen("ruby typical90/013.rb", "w+")
    io.puts("7 9\n1 2 2\n1 3 3\n2 5 2\n3 4 1\n3 5 4\n4 7 5\n5 6 1\n5 7 6\n6 7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n8\n9\n9\n8\n8\n8\n")
  end

  it 'test with "4 3\n1 2 1\n2 3 10\n3 4 100\n"' do
    io = IO.popen("ruby typical90/013.rb", "w+")
    io.puts("4 3\n1 2 1\n2 3 10\n3 4 100\n")
    io.close_write
    expect(io.readlines.join).to eq("111\n111\n111\n111\n")
  end

  it 'test with "4 3\n1 2 314\n1 3 159\n1 4 265\n"' do
    io = IO.popen("ruby typical90/013.rb", "w+")
    io.puts("4 3\n1 2 314\n1 3 159\n1 4 265\n")
    io.close_write
    expect(io.readlines.join).to eq("265\n893\n583\n265\n")
  end

end
