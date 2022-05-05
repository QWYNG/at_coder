RSpec.describe 'test' do
  it 'test with "2 3 9\n"' do
    io = IO.popen("ruby math-and-algorithm/084.rb", "w+")
    io.puts("2 3 9\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "2 3 10\n"' do
    io = IO.popen("ruby math-and-algorithm/084.rb", "w+")
    io.puts("2 3 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
