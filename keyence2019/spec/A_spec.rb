RSpec.describe 'test' do
  it 'test with "1 7 9 4\n"' do
    io = IO.popen("ruby keyence2019/A.rb", "w+")
    io.puts("1 7 9 4\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "1 9 7 4\n"' do
    io = IO.popen("ruby keyence2019/A.rb", "w+")
    io.puts("1 9 7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "1 2 9 1\n"' do
    io = IO.popen("ruby keyence2019/A.rb", "w+")
    io.puts("1 2 9 1\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "4 9 0 8\n"' do
    io = IO.popen("ruby keyence2019/A.rb", "w+")
    io.puts("4 9 0 8\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
