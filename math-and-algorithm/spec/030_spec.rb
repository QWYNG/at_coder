RSpec.describe 'test' do
  it 'test with "3 8\n3 30\n4 50\n5 60\n"' do
    io = IO.popen("ruby math-and-algorithm/030.rb", "w+")
    io.puts("3 8\n3 30\n4 50\n5 60\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

  it 'test with "5 5\n1 1000000000\n1 1000000000\n1 1000000000\n1 1000000000\n1 1000000000\n"' do
    io = IO.popen("ruby math-and-algorithm/030.rb", "w+")
    io.puts("5 5\n1 1000000000\n1 1000000000\n1 1000000000\n1 1000000000\n1 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("5000000000\n")
  end

  it 'test with "6 15\n6 5\n5 6\n6 4\n6 6\n3 5\n7 2\n"' do
    io = IO.popen("ruby math-and-algorithm/030.rb", "w+")
    io.puts("6 15\n6 5\n5 6\n6 4\n6 6\n3 5\n7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

end
