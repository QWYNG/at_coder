RSpec.describe 'test' do
  it 'test with "3 1\n1 100 1\n"' do
    io = IO.popen("ruby keyence2019/E.rb", "w+")
    io.puts("3 1\n1 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("106\n")
  end

  it 'test with "3 1000\n1 100 1\n"' do
    io = IO.popen("ruby keyence2019/E.rb", "w+")
    io.puts("3 1000\n1 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2202\n")
  end

  it 'test with "6 14\n25 171 7 1 17 162\n"' do
    io = IO.popen("ruby keyence2019/E.rb", "w+")
    io.puts("6 14\n25 171 7 1 17 162\n")
    io.close_write
    expect(io.readlines.join).to eq("497\n")
  end

  it 'test with "12 5\n43 94 27 3 69 99 56 25 8 15 46 8\n"' do
    io = IO.popen("ruby keyence2019/E.rb", "w+")
    io.puts("12 5\n43 94 27 3 69 99 56 25 8 15 46 8\n")
    io.close_write
    expect(io.readlines.join).to eq("658\n")
  end

end
