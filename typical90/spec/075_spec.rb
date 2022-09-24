RSpec.describe 'test' do
  it 'test with "42\n"' do
    io = IO.popen("ruby typical90/075.rb", "w+")
    io.puts("42\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "48\n"' do
    io = IO.popen("ruby typical90/075.rb", "w+")
    io.puts("48\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "54\n"' do
    io = IO.popen("ruby typical90/075.rb", "w+")
    io.puts("54\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "53\n"' do
    io = IO.popen("ruby typical90/075.rb", "w+")
    io.puts("53\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
