RSpec.describe 'test' do
  it 'test with "20\n"' do
    io = IO.popen("ruby abc186/C.rb", "w+")
    io.puts("20\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

  it 'test with "100000\n"' do
    io = IO.popen("ruby abc186/C.rb", "w+")
    io.puts("100000\n")
    io.close_write
    expect(io.readlines.join).to eq("30555\n")
  end

end
