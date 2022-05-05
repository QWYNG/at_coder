RSpec.describe 'test' do
  it 'test with "3 3\n2 0 1\n"' do
    io = IO.popen("ruby math-and-algorithm/064.rb", "w+")
    io.puts("3 3\n2 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5 2\n1 0 0 0 0\n"' do
    io = IO.popen("ruby math-and-algorithm/064.rb", "w+")
    io.puts("5 2\n1 0 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
