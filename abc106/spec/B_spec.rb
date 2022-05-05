RSpec.describe 'test' do
  it 'test with "105\n"' do
    io = IO.popen("ruby abc106/B.rb", "w+")
    io.puts("105\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7\n"' do
    io = IO.popen("ruby abc106/B.rb", "w+")
    io.puts("7\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
