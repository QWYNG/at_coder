RSpec.describe 'test' do
  it 'test with "4\n7\n0 1 2 3\n1 1 2 1\n1 3 4 5\n0 3 4 6\n1 3 4 5\n0 2 3 6\n1 3 1 5\n"' do
    io = IO.popen("ruby typical90/068.rb", "w+")
    io.puts("4\n7\n0 1 2 3\n1 1 2 1\n1 3 4 5\n0 3 4 6\n1 3 4 5\n0 2 3 6\n1 3 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\nAmbiguous\n1\n2\n")
  end

  it 'test with "15\n25\n0 11 12 41\n0 1 2 159\n0 14 15 121\n0 4 5 245\n0 12 13 157\n0 9 10 176\n0 6 7 170\n0 2 3 123\n0 7 8 167\n0 3 4 159\n1 12 11 33\n0 10 11 116\n0 8 9 161\n1 9 12 68\n1 12 12 33\n1 7 12 74\n0 5 6 290\n1 8 9 93\n0 13 14 127\n1 10 12 108\n1 14 1 3\n1 13 8 124\n1 12 11 33\n1 12 10 33\n1 5 15 194\n"' do
    io = IO.popen("ruby typical90/068.rb", "w+")
    io.puts("15\n25\n0 11 12 41\n0 1 2 159\n0 14 15 121\n0 4 5 245\n0 12 13 157\n0 9 10 176\n0 6 7 170\n0 2 3 123\n0 7 8 167\n0 3 4 159\n1 12 11 33\n0 10 11 116\n0 8 9 161\n1 9 12 68\n1 12 12 33\n1 7 12 74\n0 5 6 290\n1 8 9 93\n0 13 14 127\n1 10 12 108\n1 14 1 3\n1 13 8 124\n1 12 11 33\n1 12 10 33\n1 5 15 194\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n33\n33\n33\n68\n33\n144\n93\n8\n108\n118\n")
  end

end
