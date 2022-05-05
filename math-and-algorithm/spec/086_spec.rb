RSpec.describe 'test' do
  it 'test with "8\n(()())()\n"' do
    io = IO.popen("ruby math-and-algorithm/086.rb", "w+")
    io.puts("8\n(()())()\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n))()((\n"' do
    io = IO.popen("ruby math-and-algorithm/086.rb", "w+")
    io.puts("6\n))()((\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
