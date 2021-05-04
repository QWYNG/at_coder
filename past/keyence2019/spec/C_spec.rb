RSpec.describe 'test' do
  it 'test with "3\n2 3 5\n3 4 1\n"' do
    io = IO.popen("ruby keyence2019/C.rb", "w+")
    io.puts("3\n2 3 5\n3 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n2 3 3\n2 2 1\n"' do
    io = IO.popen("ruby keyence2019/C.rb", "w+")
    io.puts("3\n2 3 3\n2 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3\n17 7 1\n25 6 14\n"' do
    io = IO.popen("ruby keyence2019/C.rb", "w+")
    io.puts("3\n17 7 1\n25 6 14\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "12\n757232153 372327760 440075441 195848680 354974235 458054863 463477172 740174259 615762794 632963102 529866931 64991604\n74164189 98239366 465611891 362739947 147060907 118867039 63189252 78303147 501410831 110823640 122948912 572905212\n"' do
    io = IO.popen("ruby keyence2019/C.rb", "w+")
    io.puts("12\n757232153 372327760 440075441 195848680 354974235 458054863 463477172 740174259 615762794 632963102 529866931 64991604\n74164189 98239366 465611891 362739947 147060907 118867039 63189252 78303147 501410831 110823640 122948912 572905212\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
