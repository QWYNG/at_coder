RSpec.describe 'test' do
  it 'test with "a\nb\nc\n"' do
    io = IO.popen("ruby abc198/D.rb", "w+")
    io.puts("a\nb\nc\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n")
  end

  it 'test with "x\nx\ny\n"' do
    io = IO.popen("ruby abc198/D.rb", "w+")
    io.puts("x\nx\ny\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n2\n")
  end

  it 'test with "p\nq\np\n"' do
    io = IO.popen("ruby abc198/D.rb", "w+")
    io.puts("p\nq\np\n")
    io.close_write
    expect(io.readlines.join).to eq("UNSOLVABLE\n")
  end

  it 'test with "abcd\nefgh\nijkl\n"' do
    io = IO.popen("ruby abc198/D.rb", "w+")
    io.puts("abcd\nefgh\nijkl\n")
    io.close_write
    expect(io.readlines.join).to eq("UNSOLVABLE\n")
  end

  it 'test with "send\nmore\nmoney\n"' do
    io = IO.popen("ruby abc198/D.rb", "w+")
    io.puts("send\nmore\nmoney\n")
    io.close_write
    expect(io.readlines.join).to eq("9567\n1085\n10652\n")
  end

end
