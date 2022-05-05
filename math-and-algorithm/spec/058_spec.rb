RSpec.describe 'test' do
  it 'test with "10 2 2\n"' do
    io = IO.popen("ruby math-and-algorithm/058.rb", "w+")
    io.puts("10 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "9 3 1\n"' do
    io = IO.popen("ruby math-and-algorithm/058.rb", "w+")
    io.puts("9 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
