RSpec.describe 'test' do
  it 'test with "8 5\n6 17 2 4 17 19 1 7\n2 0 0\n1 7 2\n1 2 6\n1 4 5\n3 4 0\n"' do
    io = IO.popen("ruby typical90/044.rb", "w+")
    io.puts("8 5\n6 17 2 4 17 19 1 7\n2 0 0\n1 7 2\n1 2 6\n1 4 5\n3 4 0\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "9 6\n16 7 10 2 9 18 15 20 5\n2 0 0\n1 1 4\n2 0 0\n1 8 5\n2 0 0\n3 6 0\n"' do
    io = IO.popen("ruby typical90/044.rb", "w+")
    io.puts("9 6\n16 7 10 2 9 18 15 20 5\n2 0 0\n1 1 4\n2 0 0\n1 8 5\n2 0 0\n3 6 0\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "11 18\n23 92 85 34 21 63 12 9 81 44 96\n3 10 0\n3 5 0\n1 3 4\n2 0 0\n1 4 11\n3 11 0\n1 3 5\n2 0 0\n2 0 0\n3 9 0\n2 0 0\n3 6 0\n3 10 0\n1 6 11\n2 0 0\n3 10 0\n3 4 0\n3 5 0\n"' do
    io = IO.popen("ruby typical90/044.rb", "w+")
    io.puts("11 18\n23 92 85 34 21 63 12 9 81 44 96\n3 10 0\n3 5 0\n1 3 4\n2 0 0\n1 4 11\n3 11 0\n1 3 5\n2 0 0\n2 0 0\n3 9 0\n2 0 0\n3 6 0\n3 10 0\n1 6 11\n2 0 0\n3 10 0\n3 4 0\n3 5 0\n")
    io.close_write
    expect(io.readlines.join).to eq("44\n21\n34\n63\n85\n63\n21\n34\n96\n")
  end

end
