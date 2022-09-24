RSpec.describe 'test' do
  it 'test with "4 3 2\n"' do
    io = IO.popen("ruby typical90/020.rb", "w+")
    io.puts("4 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "16 3 2\n"' do
    io = IO.popen("ruby typical90/020.rb", "w+")
    io.puts("16 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "8 3 2\n"' do
    io = IO.popen("ruby typical90/020.rb", "w+")
    io.puts("8 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
