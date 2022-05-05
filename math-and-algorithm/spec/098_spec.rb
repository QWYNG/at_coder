RSpec.describe 'test' do
  it 'test with "4\n0 0\n3 1\n2 3\n0 3\n2 1\n"' do
    io = IO.popen("ruby math-and-algorithm/098.rb", "w+")
    io.puts("4\n0 0\n3 1\n2 3\n0 3\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("INSIDE\n")
  end

  it 'test with "4\n3 1\n0 0\n0 3\n2 3\n3 2\n"' do
    io = IO.popen("ruby math-and-algorithm/098.rb", "w+")
    io.puts("4\n3 1\n0 0\n0 3\n2 3\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("OUTSIDE\n")
  end

  it 'test with "6\n5 5\n-1 -3\n5 1\n-3 -5\n1 1\n-5 -3\n0 -1\n"' do
    io = IO.popen("ruby math-and-algorithm/098.rb", "w+")
    io.puts("6\n5 5\n-1 -3\n5 1\n-3 -5\n1 1\n-5 -3\n0 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("INSIDE\n")
  end

  it 'test with "16\n0 0\n8 0\n8 7\n7 7\n7 1\n1 1\n1 6\n5 6\n5 3\n3 3\n3 5\n2 5\n2 2\n6 2\n6 7\n0 7\n4 4\n"' do
    io = IO.popen("ruby math-and-algorithm/098.rb", "w+")
    io.puts("16\n0 0\n8 0\n8 7\n7 7\n7 1\n1 1\n1 6\n5 6\n5 3\n3 3\n3 5\n2 5\n2 2\n6 2\n6 7\n0 7\n4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("OUTSIDE\n")
  end

  it 'test with "3\n0 0\n1000000000 671903261\n671903261 1000000000\n520908341 350000013\n"' do
    io = IO.popen("ruby math-and-algorithm/098.rb", "w+")
    io.puts("3\n0 0\n1000000000 671903261\n671903261 1000000000\n520908341 350000013\n")
    io.close_write
    expect(io.readlines.join).to eq("OUTSIDE\n")
  end

end
