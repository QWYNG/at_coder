RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby typical90/002.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("()\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby typical90/002.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby typical90/002.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("(())\n()()\n")
  end

  it 'test with "10\n"' do
    io = IO.popen("ruby typical90/002.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("((((()))))\n(((()())))\n(((())()))\n(((()))())\n(((())))()\n((()(())))\n((()()()))\n((()())())\n((()()))()\n((())(()))\n((())()())\n((())())()\n((()))(())\n((()))()()\n(()((())))\n(()(()()))\n(()(())())\n(()(()))()\n(()()(()))\n(()()()())\n(()()())()\n(()())(())\n(()())()()\n(())((()))\n(())(()())\n(())(())()\n(())()(())\n(())()()()\n()(((())))\n()((()()))\n()((())())\n()((()))()\n()(()(()))\n()(()()())\n()(()())()\n()(())(())\n()(())()()\n()()((()))\n()()(()())\n()()(())()\n()()()(())\n()()()()()\n")
  end

end
