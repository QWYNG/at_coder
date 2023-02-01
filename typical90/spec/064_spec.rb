RSpec.describe 'test' do
  it 'test with "3 3\n1 2 3\n2 3 1\n1 2 -1\n1 3 2\n"' do
    io = IO.popen("ruby typical90/064.rb", "w+")
    io.puts("3 3\n1 2 3\n2 3 1\n1 2 -1\n1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n4\n4\n")
  end

  it 'test with "20 10\n61 51 92 -100 -89 -65 -89 -64 -74 7 87 -2 51 -39 -50 63 -23 36 74 37\n2 2 -45\n6 19 82\n2 9 36\n7 13 71\n16 20 90\n18 20 -24\n14 17 -78\n10 11 -55\n7 19 -26\n20 20 -7\n"' do
    io = IO.popen("ruby typical90/064.rb", "w+")
    io.puts("20 10\n61 51 92 -100 -89 -65 -89 -64 -74 7 87 -2 51 -39 -50 63 -23 36 74 37\n2 2 -45\n6 19 82\n2 9 36\n7 13 71\n16 20 90\n18 20 -24\n14 17 -78\n10 11 -55\n7 19 -26\n20 20 -7\n")
    io.close_write
    expect(io.readlines.join).to eq("1164\n1328\n1256\n1350\n1440\n1416\n1572\n1482\n1430\n1437\n")
  end

end
