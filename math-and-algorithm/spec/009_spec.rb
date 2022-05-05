RSpec.describe 'test' do
  it 'test with "3 11\n2 5 9\n"' do
    io = IO.popen("ruby math-and-algorithm/009.rb", "w+")
    io.puts("3 11\n2 5 9\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 11\n3 1 4 5\n"' do
    io = IO.popen("ruby math-and-algorithm/009.rb", "w+")
    io.puts("4 11\n3 1 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
