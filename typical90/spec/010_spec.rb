RSpec.describe 'test' do
  it 'test with "7\n1 72\n2 78\n2 94\n1 23\n2 89\n1 40\n1 75\n1\n2 6\n"' do
    io = IO.popen("ruby typical90/010.rb", "w+")
    io.puts("7\n1 72\n2 78\n2 94\n1 23\n2 89\n1 40\n1 75\n1\n2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("63 261\n")
  end

  it 'test with "7\n1 72\n2 78\n2 94\n1 23\n2 89\n1 40\n1 75\n10\n1 3\n2 4\n3 5\n4 6\n5 7\n1 5\n2 6\n3 7\n1 6\n2 7\n"' do
    io = IO.popen("ruby typical90/010.rb", "w+")
    io.puts("7\n1 72\n2 78\n2 94\n1 23\n2 89\n1 40\n1 75\n10\n1 3\n2 4\n3 5\n4 6\n5 7\n1 5\n2 6\n3 7\n1 6\n2 7\n")
    io.close_write
    expect(io.readlines.join).to eq("72 172\n23 172\n23 183\n63 89\n115 89\n95 261\n63 261\n138 183\n135 261\n138 261\n")
  end

  it 'test with "1\n1 100\n3\n1 1\n1 1\n1 1\n"' do
    io = IO.popen("ruby typical90/010.rb", "w+")
    io.puts("1\n1 100\n3\n1 1\n1 1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("100 0\n100 0\n100 0\n")
  end

  it 'test with "20\n2 90\n1 67\n2 9\n2 17\n2 85\n2 43\n2 11\n1 32\n2 16\n1 19\n2 65\n1 14\n1 51\n2 94\n1 4\n1 55\n2 90\n1 89\n1 35\n2 81\n20\n3 17\n5 5\n11 11\n8 10\n3 13\n2 6\n3 7\n3 5\n12 18\n4 8\n3 16\n6 8\n3 20\n1 12\n1 6\n5 16\n3 10\n17 19\n4 4\n7 15\n"' do
    io = IO.popen("ruby typical90/010.rb", "w+")
    io.puts("20\n2 90\n1 67\n2 9\n2 17\n2 85\n2 43\n2 11\n1 32\n2 16\n1 19\n2 65\n1 14\n1 51\n2 94\n1 4\n1 55\n2 90\n1 89\n1 35\n2 81\n20\n3 17\n5 5\n11 11\n8 10\n3 13\n2 6\n3 7\n3 5\n12 18\n4 8\n3 16\n6 8\n3 20\n1 12\n1 6\n5 16\n3 10\n17 19\n4 4\n7 15\n")
    io.close_write
    expect(io.readlines.join).to eq("175 430\n0 85\n0 65\n51 16\n116 246\n67 154\n0 165\n0 111\n213 184\n32 156\n175 340\n32 54\n299 511\n132 336\n67 244\n175 314\n51 181\n124 90\n0 17\n120 186\n")
  end

end
