RSpec.describe 'test' do
  it 'test with "2 2\n"' do
    io = IO.popen("ruby abc106/A.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 7\n"' do
    io = IO.popen("ruby abc106/A.rb", "w+")
    io.puts("5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("24\n")
  end

end
