RSpec.describe 'test' do
  it 'test with "1\n"' do
    io = IO.popen("ruby typical90/042.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "234\n"' do
    io = IO.popen("ruby typical90/042.rb", "w+")
    io.puts("234\n")
    io.close_write
    expect(io.readlines.join).to eq("757186539\n")
  end

end
