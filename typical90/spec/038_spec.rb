RSpec.describe 'test' do
  it 'test with "4 6\n"' do
    io = IO.popen("ruby typical90/038.rb", "w+")
    io.puts("4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "1000000000000000000 3\n"' do
    io = IO.popen("ruby typical90/038.rb", "w+")
    io.puts("1000000000000000000 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Large\n")
  end

  it 'test with "1000000000000000000 1\n"' do
    io = IO.popen("ruby typical90/038.rb", "w+")
    io.puts("1000000000000000000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000000\n")
  end

end
