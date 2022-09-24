RSpec.describe 'test' do
  it 'test with "21 1\n"' do
    io = IO.popen("ruby typical90/067.rb", "w+")
    io.puts("21 1\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "1330 1\n"' do
    io = IO.popen("ruby typical90/067.rb", "w+")
    io.puts("1330 1\n")
    io.close_write
    expect(io.readlines.join).to eq("555\n")
  end

  it 'test with "2311640221315 15\n"' do
    io = IO.popen("ruby typical90/067.rb", "w+")
    io.puts("2311640221315 15\n")
    io.close_write
    expect(io.readlines.join).to eq("474547\n")
  end

end
