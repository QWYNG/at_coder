RSpec.describe 'test' do
  it 'test with "4\nooxo\n"' do
    io = IO.popen("ruby typical90/084.rb", "w+")
    io.puts("4\nooxo\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "5\noxoxo\n"' do
    io = IO.popen("ruby typical90/084.rb", "w+")
    io.puts("5\noxoxo\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "5\nooooo\n"' do
    io = IO.popen("ruby typical90/084.rb", "w+")
    io.puts("5\nooooo\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "7\nxxoooxx\n"' do
    io = IO.popen("ruby typical90/084.rb", "w+")
    io.puts("7\nxxoooxx\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

end
