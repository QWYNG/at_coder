RSpec.describe 'test' do
  it 'test with "7\nb a b a b b a\n2 1\n3 7\n3 2\n3 4\n5 4\n4 6\n"' do
    io = IO.popen("ruby typical90/073.rb", "w+")
    io.puts("7\nb a b a b b a\n2 1\n3 7\n3 2\n3 4\n5 4\n4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2\na b\n1 2\n"' do
    io = IO.popen("ruby typical90/073.rb", "w+")
    io.puts("2\na b\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "22\nb a b b a b b b a b a a a a b b a b b a a a\n1 7\n4 14\n12 22\n2 4\n21 17\n3 20\n7 8\n20 14\n15 11\n8 14\n9 12\n17 8\n6 20\n11 20\n18 19\n10 8\n22 20\n13 21\n5 14\n19 20\n16 14\n"' do
    io = IO.popen("ruby typical90/073.rb", "w+")
    io.puts("22\nb a b b a b b b a b a a a a b b a b b a a a\n1 7\n4 14\n12 22\n2 4\n21 17\n3 20\n7 8\n20 14\n15 11\n8 14\n9 12\n17 8\n6 20\n11 20\n18 19\n10 8\n22 20\n13 21\n5 14\n19 20\n16 14\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

end
