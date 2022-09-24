RSpec.describe 'test' do
  it 'test with "4\n3 4\n1 3\n2 3\n2 1\n"' do
    io = IO.popen("ruby typical90/062.rb", "w+")
    io.puts("4\n3 4\n1 3\n2 3\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n2\n1\n3\n")
  end

  it 'test with "3\n1 1\n2 2\n3 3\n"' do
    io = IO.popen("ruby typical90/062.rb", "w+")
    io.puts("3\n1 1\n2 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n2\n1\n")
  end

  it 'test with "5\n3 4\n4 5\n1 1\n5 1\n3 2\n"' do
    io = IO.popen("ruby typical90/062.rb", "w+")
    io.puts("5\n3 4\n4 5\n1 1\n5 1\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "6\n5 5\n2 4\n6 6\n5 2\n1 3\n4 1\n"' do
    io = IO.popen("ruby typical90/062.rb", "w+")
    io.puts("6\n5 5\n2 4\n6 6\n5 2\n1 3\n4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n5\n3\n6\n4\n2\n")
  end

  it 'test with "10\n5 1\n3 9\n7 8\n9 3\n3 7\n10 10\n3 5\n4 7\n1 1\n6 6\n"' do
    io = IO.popen("ruby typical90/062.rb", "w+")
    io.puts("10\n5 1\n3 9\n7 8\n9 3\n3 7\n10 10\n3 5\n4 7\n1 1\n6 6\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
