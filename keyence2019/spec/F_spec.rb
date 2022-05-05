RSpec.describe 'test' do
  it 'test with "2 1 2\n"' do
    io = IO.popen("ruby keyence2019/F.rb", "w+")
    io.puts("2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("34\n")
  end

  it 'test with "30 40 50\n"' do
    io = IO.popen("ruby keyence2019/F.rb", "w+")
    io.puts("30 40 50\n")
    io.close_write
    expect(io.readlines.join).to eq("616365902\n")
  end

end
