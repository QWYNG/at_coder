RSpec.describe 'test' do
  it 'test with "5 3\n"' do
    io = IO.popen("ruby typical90/058.rb", "w+")
    io.puts("5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "0 100\n"' do
    io = IO.popen("ruby typical90/058.rb", "w+")
    io.puts("0 100\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "99999 1000000000000000000\n"' do
    io = IO.popen("ruby typical90/058.rb", "w+")
    io.puts("99999 1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("84563\n")
  end

end
