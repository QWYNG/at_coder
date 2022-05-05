RSpec.describe 'test' do
  it 'test with "2 2\n4 3\n3 4\n"' do
    io = IO.popen("ruby keyence2019/D.rb", "w+")
    io.puts("2 2\n4 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 3\n5 9 7\n3 6 9\n"' do
    io = IO.popen("ruby keyence2019/D.rb", "w+")
    io.puts("3 3\n5 9 7\n3 6 9\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2 2\n4 4\n4 4\n"' do
    io = IO.popen("ruby keyence2019/D.rb", "w+")
    io.puts("2 2\n4 4\n4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "14 13\n158 167 181 147 178 151 179 182 176 169 180 129 175 168\n181 150 178 179 167 180 176 169 182 177 175 159 173\n"' do
    io = IO.popen("ruby keyence2019/D.rb", "w+")
    io.puts("14 13\n158 167 181 147 178 151 179 182 176 169 180 129 175 168\n181 150 178 179 167 180 176 169 182 177 175 159 173\n")
    io.close_write
    expect(io.readlines.join).to eq("343772227\n")
  end

end
