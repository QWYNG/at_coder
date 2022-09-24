RSpec.describe 'test' do
  it 'test with "4 6\n1 1 1 1 1 2\n1 2 2 2 2 2\n1 2 2 3 2 3\n1 2 3 2 2 3\n"' do
    io = IO.popen("ruby typical90/063.rb", "w+")
    io.puts("4 6\n1 1 1 1 1 2\n1 2 2 2 2 2\n1 2 2 3 2 3\n1 2 3 2 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with ". . . . . .\n. 2 2 . 2 .\n. 2 2 . 2 .\n. . . . . .\n"' do
    io = IO.popen("ruby typical90/063.rb", "w+")
    io.puts(". . . . . .\n. 2 2 . 2 .\n. 2 2 . 2 .\n. . . . . .\n")
    io.close_write
    expect(io.readlines.join).to eq("3 3\n1 2 3\n4 5 6\n7 8 9\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby typical90/063.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("5 3\n7 7 7\n7 7 7\n7 7 7\n7 7 7\n7 7 7\n")
  end

  it 'test with "15\n"' do
    io = IO.popen("ruby typical90/063.rb", "w+")
    io.puts("15\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
