RSpec.describe 'test' do
  it 'test with "2\n1 1 3 2\n2 1 4 2\n"' do
    io = IO.popen("ruby typical90/028.rb", "w+")
    io.puts("2\n1 1 3 2\n2 1 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n")
  end

  it 'test with "2\n1 1 3 4\n3 4 6 5\n"' do
    io = IO.popen("ruby typical90/028.rb", "w+")
    io.puts("2\n1 1 3 4\n3 4 6 5\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n0\n")
  end

  it 'test with "20\n61 98 76 100\n70 99 95 100\n10 64 96 91\n12 37 99 66\n63 93 65 95\n16 18 18 67\n30 47 88 56\n33 6 38 8\n37 19 40 68\n4 56 12 84\n3 16 92 78\n39 24 67 96\n46 1 69 57\n40 34 65 65\n20 38 51 92\n5 32 100 73\n7 33 92 55\n4 46 97 85\n43 18 57 87\n15 29 54 74\n"' do
    io = IO.popen("ruby typical90/028.rb", "w+")
    io.puts("20\n61 98 76 100\n70 99 95 100\n10 64 96 91\n12 37 99 66\n63 93 65 95\n16 18 18 67\n30 47 88 56\n33 6 38 8\n37 19 40 68\n4 56 12 84\n3 16 92 78\n39 24 67 96\n46 1 69 57\n40 34 65 65\n20 38 51 92\n5 32 100 73\n7 33 92 55\n4 46 97 85\n43 18 57 87\n15 29 54 74\n")
    io.close_write
    expect(io.readlines.join).to eq("1806\n990\n1013\n1221\n567\n839\n413\n305\n228\n121\n58\n40\n0\n0\n0\n0\n0\n0\n0\n0\n")
  end

end
