RSpec.describe 'test' do
  it 'test with "7 3\n1 2 3 4 5 6 7\n"' do
    io = IO.popen("ruby math-and-algorithm/032.rb", "w+")
    io.puts("7 3\n1 2 3 4 5 6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "7 9\n1 2 3 4 5 6 7\n"' do
    io = IO.popen("ruby math-and-algorithm/032.rb", "w+")
    io.puts("7 9\n1 2 3 4 5 6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "7 1\n2 3 4 5 6 7 8\n"' do
    io = IO.popen("ruby math-and-algorithm/032.rb", "w+")
    io.puts("7 1\n2 3 4 5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
