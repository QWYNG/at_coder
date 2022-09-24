RSpec.describe 'test' do
  it 'test with "2\n1 2 3 5 7 11\n4 6 8 9 10 12\n"' do
    io = IO.popen("ruby typical90/052.rb", "w+")
    io.puts("2\n1 2 3 5 7 11\n4 6 8 9 10 12\n")
    io.close_write
    expect(io.readlines.join).to eq("1421\n")
  end

  it 'test with "1\n11 13 17 19 23 29\n"' do
    io = IO.popen("ruby typical90/052.rb", "w+")
    io.puts("1\n11 13 17 19 23 29\n")
    io.close_write
    expect(io.readlines.join).to eq("112\n")
  end

  it 'test with "7\n19 23 51 59 91 99\n15 45 56 65 69 94\n7 11 16 34 59 95\n27 30 40 43 83 85\n19 23 25 27 45 99\n27 48 52 53 60 81\n21 36 49 72 82 84\n"' do
    io = IO.popen("ruby typical90/052.rb", "w+")
    io.puts("7\n19 23 51 59 91 99\n15 45 56 65 69 94\n7 11 16 34 59 95\n27 30 40 43 83 85\n19 23 25 27 45 99\n27 48 52 53 60 81\n21 36 49 72 82 84\n")
    io.close_write
    expect(io.readlines.join).to eq("670838273\n")
  end

end
