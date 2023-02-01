RSpec.describe 'test' do
  it 'test with "10\n1 1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby typical90/076.rb", "w+")
    io.puts("10\n1 1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\n1 1 1\n"' do
    io = IO.popen("ruby typical90/076.rb", "w+")
    io.puts("3\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3\n1 18 1\n"' do
    io = IO.popen("ruby typical90/076.rb", "w+")
    io.puts("3\n1 18 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4\n1 9 1 9\n"' do
    io = IO.popen("ruby typical90/076.rb", "w+")
    io.puts("4\n1 9 1 9\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
