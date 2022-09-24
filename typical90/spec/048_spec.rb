RSpec.describe 'test' do
  it 'test with "4 3\n4 3\n9 5\n15 8\n8 6\n"' do
    io = IO.popen("ruby typical90/048.rb", "w+")
    io.puts("4 3\n4 3\n9 5\n15 8\n8 6\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

  it 'test with "2 2\n7 6\n3 2\n"' do
    io = IO.popen("ruby typical90/048.rb", "w+")
    io.puts("2 2\n7 6\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "10 12\n987753612 748826789\n36950727 36005047\n961239509 808587458\n905633062 623962559\n940964276 685396947\n959540552 928301562\n60467784 37828572\n953685176 482123245\n87983282 66762644\n912605260 709048491\n"' do
    io = IO.popen("ruby typical90/048.rb", "w+")
    io.puts("10 12\n987753612 748826789\n36950727 36005047\n961239509 808587458\n905633062 623962559\n940964276 685396947\n959540552 928301562\n60467784 37828572\n953685176 482123245\n87983282 66762644\n912605260 709048491\n")
    io.close_write
    expect(io.readlines.join).to eq("6437530406\n")
  end

end
