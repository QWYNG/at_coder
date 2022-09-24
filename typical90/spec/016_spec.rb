RSpec.describe 'test' do
  it 'test with "227\n21 47 56\n"' do
    io = IO.popen("ruby typical90/016.rb", "w+")
    io.puts("227\n21 47 56\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "9999\n1 5 10\n"' do
    io = IO.popen("ruby typical90/016.rb", "w+")
    io.puts("9999\n1 5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1004\n")
  end

  it 'test with "998244353\n314159 265358 97932\n"' do
    io = IO.popen("ruby typical90/016.rb", "w+")
    io.puts("998244353\n314159 265358 97932\n")
    io.close_write
    expect(io.readlines.join).to eq("3333\n")
  end

  it 'test with "100000000\n10001 10002 10003\n"' do
    io = IO.popen("ruby typical90/016.rb", "w+")
    io.puts("100000000\n10001 10002 10003\n")
    io.close_write
    expect(io.readlines.join).to eq("9998\n")
  end

end
