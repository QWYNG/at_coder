RSpec.describe 'test' do
  it 'test with "6 11 30\n"' do
    io = IO.popen("ruby math-and-algorithm/085.rb", "w+")
    io.puts("6 11 30\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1 1000000000 1\n"' do
    io = IO.popen("ruby math-and-algorithm/085.rb", "w+")
    io.puts("1 1000000000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
