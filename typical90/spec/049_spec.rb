RSpec.describe 'test' do
  it 'test with "2 3\n1 1 1\n1 2 2\n10 1 2\n"' do
    io = IO.popen("ruby typical90/049.rb", "w+")
    io.puts("2 3\n1 1 1\n1 2 2\n10 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 3\n1 1 1\n10 2 2\n1 1 2\n"' do
    io = IO.popen("ruby typical90/049.rb", "w+")
    io.puts("2 3\n1 1 1\n10 2 2\n1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 5\n3 1 2\n5 2 4\n9 3 4\n4 1 4\n8 2 4\n"' do
    io = IO.popen("ruby typical90/049.rb", "w+")
    io.puts("4 5\n3 1 2\n5 2 4\n9 3 4\n4 1 4\n8 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "9 11\n10 2 7\n100 1 6\n1 2 8\n39 4 5\n62 3 4\n81 1 3\n55 8 8\n91 5 5\n14 8 9\n37 5 5\n41 7 9\n"' do
    io = IO.popen("ruby typical90/049.rb", "w+")
    io.puts("9 11\n10 2 7\n100 1 6\n1 2 8\n39 4 5\n62 3 4\n81 1 3\n55 8 8\n91 5 5\n14 8 9\n37 5 5\n41 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("385\n")
  end

end
