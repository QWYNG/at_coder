RSpec.describe 'test' do
  it 'test with "1 1\n2 2\n1 2\n2 1\n"' do
    io = IO.popen("ruby math-and-algorithm/037.rb", "w+")
    io.puts("1 1\n2 2\n1 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1 2\n2 2\n1 1\n1 3\n"' do
    io = IO.popen("ruby math-and-algorithm/037.rb", "w+")
    io.puts("1 2\n2 2\n1 1\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "100000001 200000000\n200000000 200000000\n100000000 100000000\n100000000 300000000\n"' do
    io = IO.popen("ruby math-and-algorithm/037.rb", "w+")
    io.puts("100000001 200000000\n200000000 200000000\n100000000 100000000\n100000000 300000000\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 1\n3 3\n2 2\n4 4\n"' do
    io = IO.popen("ruby math-and-algorithm/037.rb", "w+")
    io.puts("1 1\n3 3\n2 2\n4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 1\n3 2\n2 3\n1 4\n"' do
    io = IO.popen("ruby math-and-algorithm/037.rb", "w+")
    io.puts("4 1\n3 2\n2 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
