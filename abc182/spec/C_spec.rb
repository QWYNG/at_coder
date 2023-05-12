RSpec.describe 'test' do
  it 'test with "35\n"' do
    io = IO.popen("ruby abc182/C.rb", "w+")
    io.puts("35\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "369\n"' do
    io = IO.popen("ruby abc182/C.rb", "w+")
    io.puts("369\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6227384\n"' do
    io = IO.popen("ruby abc182/C.rb", "w+")
    io.puts("6227384\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "11\n"' do
    io = IO.popen("ruby abc182/C.rb", "w+")
    io.puts("11\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
