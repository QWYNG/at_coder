RSpec.describe 'test' do
  it 'test with "1\n0\n2\n"' do
    io = IO.popen("ruby typical90/031.rb", "w+")
    io.puts("1\n0\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("First\n")
  end

  it 'test with "2\n10 10\n10 10\n"' do
    io = IO.popen("ruby typical90/031.rb", "w+")
    io.puts("2\n10 10\n10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Second\n")
  end

  it 'test with "1\n1\n1\n"' do
    io = IO.popen("ruby typical90/031.rb", "w+")
    io.puts("1\n1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("Second\n")
  end

  it 'test with "6\n3 1 4 1 5 9\n2 7 1 8 2 8\n"' do
    io = IO.popen("ruby typical90/031.rb", "w+")
    io.puts("6\n3 1 4 1 5 9\n2 7 1 8 2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Second\n")
  end

  it 'test with "6\n1 2 3 4 5 6\n1 2 3 4 5 6\n"' do
    io = IO.popen("ruby typical90/031.rb", "w+")
    io.puts("6\n1 2 3 4 5 6\n1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("First\n")
  end

end
