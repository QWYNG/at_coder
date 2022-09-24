RSpec.describe 'test' do
  it 'test with "3\naba\n"' do
    io = IO.popen("ruby typical90/074.rb", "w+")
    io.puts("3\naba\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\naaaaaaaaaa\n"' do
    io = IO.popen("ruby typical90/074.rb", "w+")
    io.puts("10\naaaaaaaaaa\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5\nbaaca\n"' do
    io = IO.popen("ruby typical90/074.rb", "w+")
    io.puts("5\nbaaca\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

end
