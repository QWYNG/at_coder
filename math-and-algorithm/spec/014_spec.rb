RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby math-and-algorithm/014.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("2 5\n")
  end

  it 'test with "36\n"' do
    io = IO.popen("ruby math-and-algorithm/014.rb", "w+")
    io.puts("36\n")
    io.close_write
    expect(io.readlines.join).to eq("2 2 3 3\n")
  end

end
