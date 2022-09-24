RSpec.describe 'test' do
  it 'test with "2 2 3\n"' do
    io = IO.popen("ruby typical90/022.rb", "w+")
    io.puts("2 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2 2 4\n"' do
    io = IO.popen("ruby typical90/022.rb", "w+")
    io.puts("2 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1000000000000000000 999999999999999999 999999999999999998\n"' do
    io = IO.popen("ruby typical90/022.rb", "w+")
    io.puts("1000000000000000000 999999999999999999 999999999999999998\n")
    io.close_write
    expect(io.readlines.join).to eq("2999999999999999994\n")
  end

end
