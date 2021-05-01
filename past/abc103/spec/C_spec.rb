RSpec.describe 'test' do
  it 'test with "3\n3 4 6\n"' do
    io = IO.popen("ruby abc103/C.rb", "w+")
    io.puts("3\n3 4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "5\n7 46 11 20 11\n"' do
    io = IO.popen("ruby abc103/C.rb", "w+")
    io.puts("5\n7 46 11 20 11\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

  it 'test with "7\n994 518 941 851 647 2 581\n"' do
    io = IO.popen("ruby abc103/C.rb", "w+")
    io.puts("7\n994 518 941 851 647 2 581\n")
    io.close_write
    expect(io.readlines.join).to eq("4527\n")
  end

end
